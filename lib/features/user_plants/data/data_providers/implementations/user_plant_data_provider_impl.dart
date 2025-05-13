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
      final records = await _pocketBase.collection('user_plants').getList(
        expand: 'plant_id',
      );

      final result = records.items.map((record) {
        final dto = UserPlantsDocsResponseDto.fromJson(record.toJson());

        final expandedPlants = record.get<List<RecordModel>?>('plant_id');
        if (expandedPlants is List) {
          final expandedPlant = expandedPlants!.first;
          final imageValue = expandedPlant.getStringValue('image');
          if (imageValue != null) {
            final imageUrl = _pocketBase.files
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

      return result;
    } catch (e) {
      throw Exception('Failed to get user plants: $e');
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
      throw Exception('Failed to add plant: $e');
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
      throw Exception('Failed to delete plant: $e');
    }
  }

  @override
  Future<List<UserPlantsDocsResponseDto>> searchPlants({
    required String query,
  }) async {
    final records = await _pocketBase
        .collection('plants')
        .getList(
          filter: 'common_name ~ "$query" || scientific_name ~ "$query"',
        );
    return records.items
        .map((record) => UserPlantsDocsResponseDto.fromJson(record.toJson()))
        .toList();
  }
}
