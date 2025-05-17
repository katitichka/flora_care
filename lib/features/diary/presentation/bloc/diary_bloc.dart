import 'package:flora_care/common/utils/error_handler.dart';
import 'package:flora_care/features/diary/domain/repositories/diary_repository.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flora_care/features/diary/domain/entities/diary_docs_response_entity.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'diary_event.dart';
part 'diary_state.dart';
part 'diary_bloc.freezed.dart';

class DiaryBloc extends Bloc<DiaryEvent, DiaryState> {
  final DiaryRepository _diaryRepository;

  DiaryBloc({required DiaryRepository diaryRepository})
    : _diaryRepository = diaryRepository,
      super(const DiaryState.initial()) {
    on<DiaryEvent>(
      (event, emit) => switch (event) {
        _GetDiary(:final userPlantId) => _getDiary(
          emit: emit,
          userPlantId: userPlantId,
        ),
        _GetEvents(:final userPlantId) => _getEvents(emit: emit, userPlantId: userPlantId),
        _GetNotes(:final userPlantId) => _getNotes(emit: emit, userPlantId: userPlantId),
        _AddEvent(:final eventDate, :final userPlantId) => _addEvent(
          emit: emit,
          eventDate: eventDate,
          userPlantId: userPlantId,
        ),
        _AddNote(:final userPlantId, :final noteText) => _addNote(
          emit: emit,
          userPlantId: userPlantId,
          noteText: noteText,
        ),
        _ModifyEvent(:final isDelete, :final eventId, :final userPlantId) => _modifyEvent(
          emit: emit,
          isDelete: isDelete,
          eventId: eventId,
          userPlantId: userPlantId,
        ),
        _ModifyNote(:final isDelete, :final noteId, :final noteText, :final userPlantId) =>
          _modifyNote(
            emit: emit,
            isDelete: isDelete,
            noteId: noteId,
            noteText: noteText,
            userPlantId: userPlantId,
          ),
      },
    );
  }

  Future<void> _getDiary({
  required Emitter<DiaryState> emit,
  required String userPlantId,
}) async {
  emit(const DiaryState.loading());
  try {
    final plantEvents = await _diaryRepository.getEvents(userPlantId);
    final plantNotes = await _diaryRepository.getNotes(userPlantId);
    
    plantEvents.sort((a, b) => (b.eventDate ?? DateTime(0))
        .compareTo(a.eventDate ?? DateTime(0)));
    final filteredNotes = plantNotes.where((note) => note.note?.isNotEmpty ?? false).toList();

    emit(DiaryState.loaded(
      plantEvents: plantEvents,
      plantNotes: filteredNotes,
    ));
  } catch (e) {
    final message = handleError(e);
    emit(DiaryState.error(message: message));
  }
}

  Future<void> _getEvents({
  required Emitter<DiaryState> emit,
  required String userPlantId,
}) async {
  emit(const DiaryState.loading());
  try {
    final plantEvents = await _diaryRepository.getEvents(userPlantId);
    emit(DiaryState.loaded(plantEvents: plantEvents, plantNotes: const []));
  } catch (e) {
    emit(DiaryState.error(message: handleError(e)));
  }
}

  Future<void> _getNotes({required Emitter<DiaryState> emit, required String userPlantId,}) async {
    emit(const DiaryState.loading());
    try {
      final plantNotes = await _diaryRepository.getNotes(userPlantId);
      emit(DiaryState.loaded(plantEvents: const [], plantNotes: plantNotes));
    } catch (e) {
      final message = handleError(e);
      emit(DiaryState.error(message: message));
    }
  }

  Future<void> _modifyEvent({
  required Emitter<DiaryState> emit,
  required bool isDelete,
  required String eventId,
  required String userPlantId, 
}) async {
  emit(const DiaryState.loading());
  try {
    await _diaryRepository.modifyEvent(
      eventId: eventId,
      isDelete: isDelete,
      userPlantId: userPlantId,
    );

    final plantEvents = await _diaryRepository.getEvents(userPlantId);
    final List<DiaryDocsResponseEntity> currentNotes = state is Loaded 
      ? (state as Loaded).plantNotes 
      : [];

    emit(DiaryState.loaded(
      plantEvents: plantEvents,
      plantNotes: currentNotes,
    ));
  } catch (e) {
    final message = handleError(e);
    emit(DiaryState.error(message: message));
  }
}

Future<void> _modifyNote({
  required Emitter<DiaryState> emit,
  required bool isDelete,
  required String noteId,
  required String userPlantId, 
  String? noteText,
}) async {
  emit(const DiaryState.loading());
  try {
    await _diaryRepository.modifyNote(
      noteId: noteId,
      isDelete: isDelete,
      noteText: noteText,
      userPlantId: userPlantId,
    );

    final plantNotes = await _diaryRepository.getNotes(userPlantId);
    final List<DiaryDocsResponseEntity> currentEvents = state is Loaded 
      ? (state as Loaded).plantEvents 
      : [];

    emit(DiaryState.loaded(
      plantEvents: currentEvents,
      plantNotes: plantNotes,
    ));
  } catch (e) {
    final message = handleError(e);
    emit(DiaryState.error(message: message));
  }
}

  Future<void> _addEvent({
    required Emitter<DiaryState> emit,
    required String userPlantId,
    required DateTime eventDate,
  }) async {
    List<DiaryDocsResponseEntity> plantNotes = [];
    if (state is Loaded) {
      plantNotes = (state as Loaded).plantNotes;
    }

    emit(const DiaryState.loading());
    try {
      await _diaryRepository.addEvent(
        userPlantId: userPlantId,
        eventDate: eventDate,
      );

      final allEvents = await _diaryRepository.getEvents(userPlantId);
      final plantEvents =
          allEvents.where((e) => e.userPlantId == userPlantId).toList();

      emit(DiaryState.loaded(plantEvents: plantEvents, plantNotes: plantNotes));
    } catch (e) {
      final message = handleError(e);
      emit(DiaryState.error(message: message));
    }
  }

  Future<void> _addNote({
    required Emitter<DiaryState> emit,
    required String userPlantId,
    required String noteText,
  }) async {
    final List<DiaryDocsResponseEntity> plantEvents =
        state is Loaded ? (state as Loaded).plantEvents : [];

    try {
      print('Adding note for userPlantId=$userPlantId with text="$noteText"');
      await _diaryRepository.addNote(
        userPlantId: userPlantId,
        noteText: noteText,
      );
      print('Note added successfully');
      final allNotes = await _diaryRepository.getNotes(userPlantId);

      final plantNotes =
          allNotes.where((e) => e.userPlantId == userPlantId).toList();

      emit(DiaryState.loaded(plantEvents: plantEvents, plantNotes: plantNotes));
    } catch (e) {
      final message = handleError(e);
      emit(DiaryState.error(message: message));
    }
  }
}
