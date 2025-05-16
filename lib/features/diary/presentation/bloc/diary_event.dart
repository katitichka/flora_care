part of 'diary_bloc.dart';

@freezed
sealed class DiaryEvent with _$DiaryEvent {
  const factory DiaryEvent.getDiary({
    required String userPlantId,
  }) = _GetDiary;

  const factory DiaryEvent.getEvents() = _GetEvents;

  const factory DiaryEvent.getNotes() = _GetNotes;

  const factory DiaryEvent.addEvent({
    required String userPlantId,
    required DateTime eventDate,
  }) = _AddEvent;

  const factory DiaryEvent.addNote({
    required String userPlantId,
    required String noteText,
  }) = _AddNote;

  const factory DiaryEvent.modifyEvent({
    required bool isDelete,
    required String eventId,
  }) = _ModifyEvent;

  const factory DiaryEvent.modifyNote({
    required bool isDelete,
    required String noteId,
    String? noteText,
  }) = _ModifyNote;

}