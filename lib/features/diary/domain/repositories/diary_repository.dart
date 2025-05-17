import 'package:flora_care/features/diary/domain/entities/diary_docs_response_entity.dart';


abstract interface class DiaryRepository{
  Future<List<DiaryDocsResponseEntity>> getDiary({required String userPlantId,});

  Future<List<DiaryDocsResponseEntity>> getEvents();

  Future<List<DiaryDocsResponseEntity>> getNotes();

  Future<List<DiaryDocsResponseEntity>> addEvent({
    required String userPlantId,
    required DateTime eventDate,
    });

  Future<List<DiaryDocsResponseEntity>> addNote({
    required String userPlantId,
    required String noteText,
  });
  
  Future<List<DiaryDocsResponseEntity>> modifyEvent({
    required String eventId,
    required bool isDelete,
  });
  
  Future<List<DiaryDocsResponseEntity>> modifyNote({
    required String noteId,
    required bool isDelete,
    String? noteText,
  });
}