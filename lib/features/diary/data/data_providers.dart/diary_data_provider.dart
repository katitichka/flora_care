import 'package:flora_care/features/diary/data/DTOs/diary_docs_response_dto.dart';

abstract interface class DiaryDataProvider {
  Future<List<DiaryDocsResponseDto>> getEvent();
  Future<List<DiaryDocsResponseDto>> getNotes();
  Future<List<DiaryDocsResponseDto>> addEvent();
  Future<List<DiaryDocsResponseDto>> addNotes();
}
