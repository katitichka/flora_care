import 'package:flora_care/features/diary/data/DTOs/diary_docs_response_dto.dart';
import 'package:flora_care/features/diary/domain/entities/diary_docs_response_entity.dart';


abstract class DiaryDocsResponseMapper {
  static DiaryDocsResponseEntity fromDto({required DiaryDocsResponseDto dto}) {
    return DiaryDocsResponseEntity(
      id: dto.id,
      note: dto.note,
      eventDate: dto.eventDate,
      created: dto.created,
      formattedEventDate: dto.formattedEventDate,
      userPlantId: dto.userPlantId,
    );
  }
}