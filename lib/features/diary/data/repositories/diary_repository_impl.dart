import 'package:flora_care/features/diary/data/data_providers.dart/diary_data_provider.dart';
import 'package:flora_care/features/diary/data/mappers/diary_docs_response_mapper.dart';
import 'package:flora_care/features/diary/domain/entities/diary_docs_response_entity.dart';
import 'package:flora_care/features/diary/domain/repositories/diary_repository.dart';

class DiaryRepositoryImpl implements DiaryRepository {
  final DiaryDataProvider _diaryDataProvider;

  DiaryRepositoryImpl({required DiaryDataProvider diaryDataProvider})
    : _diaryDataProvider = diaryDataProvider;

  @override
  Future<List<DiaryDocsResponseEntity>> getDiary({
    required String userPlantId,
  }) async {
    final dtos = await _diaryDataProvider.getDiary(userPlantId: userPlantId);
    return dtos
        .map((dto) => DiaryDocsResponseMapper.fromDto(dto: dto))
        .toList();
  }

  @override
  Future<List<DiaryDocsResponseEntity>> getEvents(String userPlantId) async {
    final dtos = await _diaryDataProvider.getEvents(userPlantId);
    print("All events: $dtos");
    return dtos
        .map((dto) => DiaryDocsResponseMapper.fromDto(dto: dto))
        .toList();
  }

  @override
  Future<List<DiaryDocsResponseEntity>> getNotes(String userPlantId) async {
    final dtos = await _diaryDataProvider.getNotes(userPlantId);
    return dtos
        .map((dto) => DiaryDocsResponseMapper.fromDto(dto: dto))
        .toList();
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
    return getEvents(userPlantId);
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
    return getNotes(userPlantId);
  }

  @override
  Future<List<DiaryDocsResponseEntity>> modifyEvent({
    required String userPlantId,
    required String eventId,
    required bool isDelete,
    DateTime? newEventDate,
  }) async {
    await _diaryDataProvider.modifyEvent(
      userPlantId: userPlantId,
      eventId: eventId,
      isDelete: isDelete,
      newEventDate: newEventDate,
    );
    return getEvents(userPlantId);
  }

  @override
  Future<List<DiaryDocsResponseEntity>> modifyNote({
    required String userPlantId,
    required String noteId,
    required bool isDelete,
    String? noteText,
  }) async {
    await _diaryDataProvider.modifyNote(
      userPlantId: userPlantId,
      noteId: noteId,
      isDelete: isDelete,
      noteText: noteText,
    );
    return getNotes(userPlantId);
  }

  @override
  Future<DateTime?> getLastWateringDate(String userPlantId) async {
    final events = await getEvents(userPlantId);
    final nonNullEvents = events.where((e) => e.eventDate != null).toList();
    
    if (nonNullEvents.isEmpty) return null;
    nonNullEvents.sort((a, b) => b.eventDate!.compareTo(a.eventDate!));
    
    return nonNullEvents.first.eventDate;
  }
}
