import 'package:flora_care/features/diary/domain/repositories/diary_repository.dart';
import 'package:flora_care/features/user_plants/data/data_providers/user_plants_data_provider.dart';
import 'package:flora_care/features/user_plants/data/mappers/user_plants_docs_response_mapper.dart';
import 'package:flora_care/features/user_plants/domain/entities/user_plants_docs_response_entity.dart';
import 'package:flora_care/features/user_plants/domain/repositories/user_plants_repository.dart';

class UserPlantsRepositoryImpl implements UserPlantsRepository {
  final UserPlantsDataProvider _userPlantsDataProvider;
  final DiaryRepository _diaryRepository;

  UserPlantsRepositoryImpl({
    required UserPlantsDataProvider userPlantsDataProvider,
    required DiaryRepository diaryRepository,
  }) : _userPlantsDataProvider = userPlantsDataProvider, _diaryRepository = diaryRepository;

  @override
  Future<List<UserPlantsDocsResponseEntity>> getAllUserPlants() async {
    final dtos = await _userPlantsDataProvider.getAllUserPlants();

    final plantsWithWatering = await Future.wait(
      dtos.map((dto) async {
        final lastWatering = await _diaryRepository.getLastWateringDate(dto.id);
        return UserPlantsDocsResponseMapper.fromDto(
          dto: dto,
          lastWateringDate: lastWatering,
        );
      }),
    );
    return plantsWithWatering;
  }

  @override
  Future<List<UserPlantsDocsResponseEntity>> addUserPlant({
    required String plantId,
    required String userId,
    required String userPlantName,
  }) async {
    await _userPlantsDataProvider.addUserPlant(
      plantId: plantId,
      userId: userId,
      userPlantName: userPlantName,
    );
    return getAllUserPlants();
  }

  @override
  Future<List<UserPlantsDocsResponseEntity>> deleteUserPlant({
    required String userPlantId,
  }) async {
    await _userPlantsDataProvider.deleteUserPlant(userPlantId: userPlantId);
    return getAllUserPlants();
  }

  @override
  Future<List<UserPlantsDocsResponseEntity>> searchPlants({
    required String query,
  }) async {
    final dtos = await _userPlantsDataProvider.searchPlants(query: query);
    return dtos
        .map((dto) => UserPlantsDocsResponseMapper.fromDto(dto: dto))
        .toList();
  }

  @override
  Future<void> addWatering({
    required String userPlantId,
    required DateTime wateredAt,
  }) async {
    await _userPlantsDataProvider.addWatering(
      userPlantId: userPlantId,
      wateredAt: wateredAt,
    );
  }

  @override
  Future<void> updatePlantName({
    required String userPlantId,
    required String newName,
  }) async {
    await _userPlantsDataProvider.updatePlantName(
      userPlantId: userPlantId,
      newName: newName,
    );
  }

  @override
  Future<bool> isPlantNameUnique({
    required String name,
    required String userId,
  }) async {
    final plants = await _userPlantsDataProvider.getAllUserPlants();
    return !plants.any(
      (plant) => plant.userPlantName.toLowerCase() == name.toLowerCase(),
    );
  }

  @override
  Future<String> getCurrentUserId() async {
    return await _userPlantsDataProvider.getCurrentUserId();
  }
}
