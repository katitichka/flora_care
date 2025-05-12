import 'package:flora_care/features/user_plants/data/data_providers/user_plants_data_provider.dart';
import 'package:flora_care/features/user_plants/data/mappers/user_plants_docs_response_mapper.dart';
import 'package:flora_care/features/user_plants/domain/entities/user_plants_docs_response_entity.dart';
import 'package:flora_care/features/user_plants/domain/repositories/user_plants_repository.dart';

class UserPlantsRepositoryImpl implements UserPlantsRepository {
  final UserPlantsDataProvider _userPlantsDataProvider;

  UserPlantsRepositoryImpl({
    required UserPlantsDataProvider userPlantsDataProvider,
  }) : _userPlantsDataProvider = userPlantsDataProvider;

  @override
  Future<List<UserPlantsDocsResponseEntity>> getAllUserPlants({
    required int page,
    required int limit,
  }) async {
    final dtos = await _userPlantsDataProvider.getAllUserPlants(
      page: page,
      limit: limit,
    );
    return dtos
        .map((dto) => UserPlantsDocsResponseMapper.fromDto(dto: dto))
        .toList();
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
    return getAllUserPlants(page: 1, limit: 10);
  }

  @override
  Future<List<UserPlantsDocsResponseEntity>> deleteUserPlant({
    required String userPlantId,
  }) async {
    await _userPlantsDataProvider.deleteUserPlant(
      userPlantId: userPlantId,
    );
    return getAllUserPlants(page: 1, limit: 10);
  }

  @override
  Future<List<UserPlantsDocsResponseEntity>> searchPlants({
    required int page,
    required int limit,
    required String query,
  }) async {
    final dtos = await _userPlantsDataProvider.searchPlants(
      page: page,
      limit: limit,
      query: query,
    );
    return dtos
        .map((dto) => UserPlantsDocsResponseMapper.fromDto(dto: dto))
        .toList();
  }
}
