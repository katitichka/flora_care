import 'package:flora_care/features/diary/data/DTOs/diary_docs_response_dto.dart';

abstract interface class DiaryDataProvider {
  Future<List<DiaryDocsResponseDto>> getDiary({required String userPlantId});

  Future<List<DiaryDocsResponseDto>> getEvents();

  Future<List<DiaryDocsResponseDto>> getNotes();

  Future<List<DiaryDocsResponseDto>> addEvent({
    required String userPlantId,
    final DateTime? eventDate,
  });

  Future<List<DiaryDocsResponseDto>> addNote({
    required String userPlantId,
    required String noteText,
  });

  Future<List<DiaryDocsResponseDto>> modifyEvent({
    required String eventId,
    required bool isDelete,
  });

  Future<List<DiaryDocsResponseDto>> modifyNote({
    required String noteId,
    required bool isDelete,
    String? noteText,
  });
}
