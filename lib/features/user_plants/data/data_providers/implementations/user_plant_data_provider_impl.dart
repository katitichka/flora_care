import 'package:flora_care/features/user_plants/data/DTOs/user_plants_docs_response_dto.dart';
import 'package:flora_care/features/user_plants/data/data_providers/user_plants_data_provider.dart';
import 'package:pocketbase/pocketbase.dart';

class UserPlantDataProviderImpl implements UserPlantsDataProvider {
  final PocketBase _pocketBase;
  UserPlantDataProviderImpl({required PocketBase pocketBase})
    : _pocketBase = pocketBase;

  @override
  Future<List<UserPlantsDocsResponseDto>> getAllUserPlants() async {
    try {
      final plantModels = await _pocketBase
          .collection('user_plants')
          .getList(expand: 'plant_id');

      final plantsList =
          plantModels.items.map((plantModel) {
            final dto = UserPlantsDocsResponseDto.fromJson(plantModel.toJson());

            final expandedPlants =
                plantModel.expand['plant_id'] as List<dynamic>?;
            if (expandedPlants is List) {
              final expandedPlant = expandedPlants!.first;
              final imageValue = expandedPlant.getStringValue('image');
              if (imageValue != null) {
                final imageUrl =
                    _pocketBase.files
                        .getUrl(expandedPlant, imageValue)
                        .toString();
                if (dto.plantData != null) {
                  final updatedPlant = dto.plantData!.copyWith(image: imageUrl);
                  return dto.copyWith(plantData: updatedPlant);
                }
              }
            }

            return dto;
          }).toList();

      return plantsList;
    } catch (e) {
      throw Exception('Ошибка получения списка растений: $e');
    }
  }

  @override
  Future<List<UserPlantsDocsResponseDto>> addUserPlant({
    required String userId,
    required String plantId,
    required String userPlantName,
  }) async {
    try {
      await _pocketBase
          .collection('user_plants')
          .create(
            body: {
              'user_id': userId,
              'plant_id': plantId,
              'user_plant_name': userPlantName,
            },
          );
      return getAllUserPlants();
    } catch (e) {
      throw Exception('Ошибка добавления растения: $e');
    }
  }

  @override
  Future<List<UserPlantsDocsResponseDto>> deleteUserPlant({
    required String userPlantId,
  }) async {
    try {
      await _pocketBase.collection('user_plants').delete(userPlantId);
      return getAllUserPlants();
    } catch (e) {
      throw Exception('Ошибка удаления растения: $e');
    }
  }

  @override
  Future<List<UserPlantsDocsResponseDto>> searchPlants({
    required String query,
  }) async {
    final records = await _pocketBase
        .collection('plants')
        .getList(
          filter: 'common_name ~* "$query" || scientific_name ~* "$query"',
        );
    return records.items
        .map((record) => UserPlantsDocsResponseDto.fromJson(record.toJson()))
        .toList();
  }

  @override
  Future<void> addWatering({
    required String userPlantId,
    required DateTime wateredAt,
  }) async {
    try {
      await _pocketBase
          .collection('diary')
          .create(
            body: {
              'user_plant_id': userPlantId,
              'watered_at': wateredAt.toIso8601String(),
            },
          );
    } catch (e) {
      throw Exception('Ошибка добавления полива: $e');
    }
  }

  @override
  Future<void> updatePlantName({
    required String userPlantId,
    required String newName,
  }) async {
    try {
      await _pocketBase
          .collection('user_plants')
          .update(userPlantId, body: {'user_plant_name': newName});
    } catch (e) {
      throw Exception('Ошибка изменения имени: $e');
    }
  }
  @override
  Future<String> getCurrentUserId() async {
    return _pocketBase.authStore.model?.id ?? '';
  }
}
