import 'package:flora_care/features/user_plants/data/DTOs/user_plants_docs_response_dto.dart';

abstract interface class UserPlantsDataProvider {
  Future<List<UserPlantsDocsResponseDto>> getAllUserPlants();
  Future<List<UserPlantsDocsResponseDto>> searchPlants({
    required String query,
  });
  Future<List<UserPlantsDocsResponseDto>> addUserPlant({
    required String plantId,
    required String userId,
    required String userPlantName,
  });
  
  Future<List<UserPlantsDocsResponseDto>> deleteUserPlant({
    required String userPlantId,
  });
}
