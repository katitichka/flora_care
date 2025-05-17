import 'package:flora_care/features/diary/data/DTOs/diary_docs_response_dto.dart';

abstract interface class DiaryDataProvider {
  Future<List<DiaryDocsResponseDto>> getDiary({required String userPlantId});

  Future<List<DiaryDocsResponseDto>> getEvents(String userPlantId);

  Future<List<DiaryDocsResponseDto>> getNotes(String userPlantId);

  Future<List<DiaryDocsResponseDto>> addEvent({
    required String userPlantId,
    DateTime? eventDate,
  });

  Future<List<DiaryDocsResponseDto>> addNote({
    required String userPlantId,
    required String noteText,
  });

  Future<List<DiaryDocsResponseDto>> modifyEvent({
    required String userPlantId,
    required String eventId,
    required bool isDelete,
    DateTime? newEventDate,
  });

  Future<List<DiaryDocsResponseDto>> modifyNote({
    required String userPlantId,
    required String noteId,
    required bool isDelete,
    String? noteText,
  });
}
