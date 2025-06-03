import 'package:flora_care/features/dictionary/data/mappers/dictionary_docs_response_mapper.dart';
import 'package:flora_care/features/user_plants/data/DTOs/user_plants_docs_response_dto.dart';  
import 'package:flora_care/features/user_plants/domain/entities/user_plants_docs_response_entity.dart';

abstract class UserPlantsDocsResponseMapper {
  static UserPlantsDocsResponseEntity fromDto({
    required UserPlantsDocsResponseDto dto,
    DateTime? lastWateringDate,
  }) {
    
    return UserPlantsDocsResponseEntity(
      id: dto.id,
      userId: dto.userId,
      plantId: dto.plantId,
      userPlantName: dto.userPlantName,
      plantData: dto.plantData != null
          ? DictionaryDocsResponseMapper.fromDto(dto: dto.plantData!)
          : null,
      lastWateringDate: lastWateringDate,
    );
  }
}
