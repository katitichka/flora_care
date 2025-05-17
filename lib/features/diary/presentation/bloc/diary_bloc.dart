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
        _GetEvents() => _getEvents(emit: emit),
        _GetNotes() => _getNotes(emit: emit),
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
        _ModifyEvent(:final isDelete, :final eventId) => _modifyEvent(
          emit: emit,
          isDelete: isDelete,
          eventId: eventId,
        ),
        _ModifyNote(:final isDelete, :final noteId, :final noteText) =>
          _modifyNote(
            emit: emit,
            isDelete: isDelete,
            noteId: noteId,
            noteText: noteText,
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
      final plantEvents  = await _diaryRepository.getEvents(userPlantId);
      final plantNotes  = await _diaryRepository.getNotes(userPlantId);

      emit(DiaryState.loaded(
      plantEvents: plantEvents,
      plantNotes: plantNotes,
    ));
    } catch (e) {
      final message = handleError(e);
      emit(DiaryState.error(message: message));
    }
  }

  Future<void> _getEvents({required Emitter<DiaryState> emit}) async {
    emit(const DiaryState.loading());
    try {
      final plantEvents = await _diaryRepository.getEvents();
      emit(DiaryState.loaded(plantEvents: plantEvents, plantNotes: const []));
    } catch (e) {
      final message = handleError(e);
      emit(DiaryState.error(message: message));
    }
  }

  Future<void> _getNotes({required Emitter<DiaryState> emit}) async {
    emit(const DiaryState.loading());
    try {
      final plantNotes = await _diaryRepository.getNotes();
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
  }) async {
    emit(const DiaryState.loading());
    try {
      await _diaryRepository.modifyEvent(eventId: eventId, isDelete: isDelete);

      final plantEvents = await _diaryRepository.getEvents();

      List<DiaryDocsResponseEntity> currentNotes = [];
      if (state is Loaded) {
        currentNotes = (state as Loaded).plantNotes;
      }

      emit(
        DiaryState.loaded(plantEvents: plantEvents, plantNotes: currentNotes),
      );
    } catch (e) {
      final message = handleError(e);
      emit(DiaryState.error(message: message));
    }
  }

  Future<void> _modifyNote({
    required Emitter<DiaryState> emit,
    required bool isDelete,
    required String noteId,
    String? noteText,
  }) async {
    emit(const DiaryState.loading());
    try {
      await _diaryRepository.modifyNote(
        noteId: noteId,
        isDelete: isDelete,
        noteText: noteText,
      );

      final plantNotes = await _diaryRepository.getNotes();

      List<DiaryDocsResponseEntity> currentEvents = [];
      if (state is Loaded) {
        currentEvents = (state as Loaded).plantEvents;
      }

      emit(
        DiaryState.loaded(plantEvents: currentEvents, plantNotes: plantNotes),
      );
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

      final allEvents = await _diaryRepository.getEvents();
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
      final allNotes = await _diaryRepository.getNotes();

      final plantNotes =
          allNotes.where((e) => e.userPlantId == userPlantId).toList();

      emit(DiaryState.loaded(plantEvents: plantEvents, plantNotes: plantNotes));
    } catch (e) {
      final message = handleError(e);
      emit(DiaryState.error(message: message));
    }
  }
}
