import 'package:flora_care/features/diary/data/DTOs/diary_docs_response_dto.dart';
import 'package:flora_care/features/diary/data/data_providers.dart/diary_data_provider.dart';
import 'package:pocketbase/pocketbase.dart';

class DiaryDataProviderImpl implements DiaryDataProvider {
  final PocketBase _pocketBase;

  DiaryDataProviderImpl({required PocketBase pocketBase})
    : _pocketBase = pocketBase;

  @override
  Future<List<DiaryDocsResponseDto>> getDiary({
    required String userPlantId,
  }) async {
    try {
      final eventModels = await _pocketBase
          .collection('diary')
          .getList(
            filter: 'user_plant_id = "$userPlantId"',
            expand: 'user_plant_id',
          );
      print("Event Mosels list : $eventModels");
      final eventsList =
          eventModels.items.map((eventModel) {
            final dto = DiaryDocsResponseDto.fromJson(eventModel.toJson());

            return dto;
          }).toList();
      print("Events List: $eventsList");
      return eventsList;
    } catch (e) {
      throw Exception('Failed to get diary events: $e');
    }
  }

  @override
  Future<List<DiaryDocsResponseDto>> getEvents(String userPlantId) async {
    try {
      final eventModels = await _pocketBase
          .collection('diary')
          .getList(filter: 'user_plant_id = "$userPlantId" && event_date != ""', expand: 'user_plant_id');

      return eventModels.items
          .map((e) => DiaryDocsResponseDto.fromJson(e.toJson()))
          .toList();
    } catch (e) {
      throw Exception('Failed to get events: $e');
    }
  }

  @override
  Future<List<DiaryDocsResponseDto>> getNotes(String userPlantId) async {
    try {
      final noteModels = await _pocketBase
          .collection('diary')
          .getList(filter: 'user_plant_id = "$userPlantId" && note != ""', expand: 'user_plant_id');

      return noteModels.items
          .map((e) => DiaryDocsResponseDto.fromJson(e.toJson()))
          .toList();
    } catch (e) {
      throw Exception('Failed to get notes: $e');
    }
  }

  @override
  Future<List<DiaryDocsResponseDto>> addEvent({
    required String userPlantId,
    final DateTime? eventDate,
  }) async {
    try {
      await _pocketBase
          .collection('diary')
          .create(
            body: {
              'user_plant_id': userPlantId,
              'event_date': eventDate?.toIso8601String(),
            },
          );
      return getEvents(userPlantId);
    } catch (e) {
      throw Exception('Failed to add plant: $e');
    }
  }

  @override
  Future<List<DiaryDocsResponseDto>> addNote({
    required String userPlantId,
    required String noteText,
  }) async {
    try {
      await _pocketBase
          .collection('diary')
          .create(
            body: {'user_plant_id': userPlantId, 'note': noteText},
          );
      return getNotes();
    } catch (e) {
      throw Exception('Failed to add note: $e');
    }
  }

  @override
  Future<List<DiaryDocsResponseDto>> modifyEvent({
    required String eventId,
    required bool isDelete,
    DateTime? newEventDate,
  }) async {
    try {
      if (isDelete) {
        await _pocketBase.collection('diary').delete(eventId);
      } else {
        if (newEventDate == null) {
          throw ArgumentError('newEventDate is required when not deleting');
        }
        await _pocketBase
            .collection('diary')
            .update(
              eventId,
              body: {'event_date': newEventDate.toIso8601String()},
            );
      }
      return getEvents();
    } catch (e) {
      throw Exception('Failed to update event: $e');
    }
  }

  @override
  Future<List<DiaryDocsResponseDto>> modifyNote({
    required String noteId,
    required bool isDelete,
    String? noteText,
  }) async {
    try {
      if (isDelete) {
        await _pocketBase.collection('diary').delete(noteId);
      } else {
        if (noteText == null) {
          throw ArgumentError('noteText is required when not deleting');
        }
        await _pocketBase
            .collection('diary')
            .update(noteId, body: {'note': noteText});
      }
      return getNotes();
    } catch (e) {
      throw Exception('Failed to update note: $e');
    }
  }
}