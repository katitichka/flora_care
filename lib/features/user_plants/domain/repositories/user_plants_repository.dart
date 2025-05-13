import 'package:flora_care/features/user_plants/domain/entities/user_plants_docs_response_entity.dart';

abstract interface class UserPlantsRepository {
  Future<List<UserPlantsDocsResponseEntity>> getAllUserPlants();
  Future<List<UserPlantsDocsResponseEntity>> searchPlants({
    required String query,
  });
  Future<List<UserPlantsDocsResponseEntity>> addUserPlant({
    required String plantId,
    required String userId,
    required String userPlantName,
  });
  Future<List<UserPlantsDocsResponseEntity>> deleteUserPlant({
    required String userPlantId,
  });
}
