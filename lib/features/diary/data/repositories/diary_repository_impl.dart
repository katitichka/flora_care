import 'package:flora_care/features/diary/data/data_providers.dart/diary_data_provider.dart';
import 'package:flora_care/features/diary/data/mappers/diary_docs_response_mapper.dart';
import 'package:flora_care/features/diary/domain/entities/diary_docs_response_entity.dart';
import 'package:flora_care/features/diary/domain/repositories/diary_repository.dart';

class DiaryRepositoryImpl implements DiaryRepository {
  final DiaryDataProvider _diaryDataProvider;

  DiaryRepositoryImpl({required DiaryDataProvider diaryDataProvider})
    : _diaryDataProvider = diaryDataProvider;

  @override
  Future<List<DiaryDocsResponseEntity>> getDiary() async {
    final dtos = await _diaryDataProvider.getDiary();
    return dtos
        .map((dto) => DiaryDocsResponseMapper.fromDto(dto: dto))
        .toList();
  }

  @override
  Future<List<DiaryDocsResponseEntity>> getEvents() async {
    final dtos = await _diaryDataProvider.getEvents();
    return dtos.map((dto) => DiaryDocsResponseMapper.fromDto(dto: dto)).toList();
  }

  @override
  Future<List<DiaryDocsResponseEntity>> getNotes() async {
    final dtos = await _diaryDataProvider.getNotes();
    return dtos.map((dto) => DiaryDocsResponseMapper.fromDto(dto: dto)).toList();
  }

  @override
  Future<List<DiaryDocsResponseEntity>> addEvent({
    required String userPlantId,
    required DateTime eventDate,
  }) async {
    await _diaryDataProvider.addEvent(
      userPlantId: userPlantId,
      eventDate: eventDate,
    );
    return getDiary();
  }

  @override
  Future<List<DiaryDocsResponseEntity>> addNote({
    required String userPlantId,
    required String noteText,
  }) async {
    await _diaryDataProvider.addNote(
      userPlantId: userPlantId,
      noteText: noteText,
    );
    return getDiary();
  }

  @override
  Future<List<DiaryDocsResponseEntity>> modifyEvent({
    required String eventId,
    required bool isDelete,
  }) async {
    await _diaryDataProvider.modifyEvent(
      eventId: eventId,
      isDelete: isDelete,
    );
    return getDiary();
  }
  @override
  Future<List<DiaryDocsResponseEntity>> modifyNote({
    required String noteId,
    required bool isDelete,
    String? noteText,
  }) async {
    await _diaryDataProvider.modifyNote(
      noteId: noteId,
      isDelete: isDelete,
      noteText: noteText,
    );
    return getDiary();
  }

}
