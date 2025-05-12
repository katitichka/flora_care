import 'package:flora_care/features/user_plants/data/DTOs/user_plants_docs_response_dto.dart';
import 'package:flora_care/features/user_plants/domain/entities/user_plants_docs_response_entity.dart';

abstract class UserPlantsDocsResponseMapper {
  static UserPlantsDocsResponseEntity fromDto({
    required UserPlantsDocsResponseDto dto,
  }) {
    return UserPlantsDocsResponseEntity(
      id: dto.id,
      userId: dto.userId,
      plantId: dto.plantId,
      userPlantName: dto.userPlantName,
      );
  }
}
