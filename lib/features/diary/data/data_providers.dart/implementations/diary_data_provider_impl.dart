import 'package:flora_care/features/diary/data/DTOs/diary_docs_response_dto.dart';
import 'package:flora_care/features/diary/data/data_providers.dart/diary_data_provider.dart';
import 'package:pocketbase/pocketbase.dart';

class DiaryDataProviderImpl implements DiaryDataProvider {
  final PocketBase _pocketBase;

  DiaryDataProviderImpl({required PocketBase pocketBase}) : _pocketBase = pocketBase;

  @override
  Future<List<DiaryDocsResponseDto>> getDiary({
    required String userPlantId,
  }) async {
    final res = await _pocketBase
        .collection('diary')
        .getList(
          expand: 'user_plant_id',
        );
    print('GEBUG PRINT RES: $res');
    return res.items
        .map((e) => DiaryDocsResponseDto.fromJson(e.toJson()))
        .toList();
  }

  @override
  Future<List<DiaryDocsResponseDto>> getEvents(String userPlantId) async {
    final res = await _pocketBase
        .collection('diary')
        .getList(
          expand: 'user_plant_id',
        );

    return res.items
        .map((e) => DiaryDocsResponseDto.fromJson(e.toJson()))
        .toList();
  }

  @override
  Future<List<DiaryDocsResponseDto>> getNotes(String userPlantId) async {
    final res = await _pocketBase
        .collection('diary')
        .getList(
          expand: 'user_plant_id',
        );

    return res.items
        .map((e) => DiaryDocsResponseDto.fromJson(e.toJson()))
        .toList();
  }

  @override
  Future<List<DiaryDocsResponseDto>> addEvent({
    required String userPlantId,
    DateTime? eventDate,
  }) async {
    await _pocketBase
        .collection('diary')
        .create(
          body: {
            'user_plant_id': userPlantId,
            'event_date': eventDate?.toIso8601String(),
          },
        );

    return getEvents(userPlantId);
  }

  @override
  Future<List<DiaryDocsResponseDto>> addNote({
    required String userPlantId,
    required String noteText,
  }) async {
    await _pocketBase
        .collection('diary')
        .create(body: {'user_plant_id': userPlantId, 'note': noteText});

    return getNotes(userPlantId);
  }

  @override
  Future<List<DiaryDocsResponseDto>> modifyEvent({
    required String userPlantId,
    required String eventId,
    required bool isDelete,
    DateTime? newEventDate,
  }) async {
    if (isDelete) {
      await _pocketBase.collection('diary').delete(eventId);
    } else {
      if (newEventDate == null) {
        throw ArgumentError('newEventDate is required when updating');
      }
      await _pocketBase
          .collection('diary')
          .update(
            eventId,
            body: {'event_date': newEventDate.toIso8601String()},
          );
    }
    return getEvents(userPlantId);
  }

  @override
  Future<List<DiaryDocsResponseDto>> modifyNote({
    required String userPlantId,
    required String noteId,
    required bool isDelete,
    String? noteText,
  }) async {
    if (isDelete) {
      await _pocketBase.collection('diary').delete(noteId);
    } else {
      if (noteText == null) {
        throw ArgumentError('noteText is required when updating');
      }
      await _pocketBase.collection('diary').update(noteId, body: {'note': noteText});
    }
    return getNotes(userPlantId);
  }
  Future<void> debugDiaryRaw(String userPlantId) async {
  final res = await _pocketBase.collection('diary').getList(
    filter: 'user_plant_id = "$userPlantId"',
    perPage: 50,
  );
  for (final item in res.items) {
    print(item.toJson());
  }
}

}
