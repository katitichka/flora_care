import 'dart:io';
import 'package:flora_care/features/dictionary/domain/entities/dictionary_docs_response_entity.dart';
import 'package:flora_care/features/dictionary/domain/repositories/dictionary_repository.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:pocketbase/pocketbase.dart';

part 'dictionary_event.dart';
part 'dictionary_state.dart';
part 'dictionary_bloc.freezed.dart';

class DictionaryBloc extends Bloc<DictionaryEvent, DictionaryState> {
  final DictionaryRepository _dictionaryRepository;

  DictionaryBloc({required DictionaryRepository dictionaryRepository})
    : _dictionaryRepository = dictionaryRepository,
      super(const DictionaryState.initial()) {
    on<DictionaryEvent>(
      (event, emit) => switch (event) {
        _GetAll(:final page, :final limit) => _getAll(
          emit: emit,
          page: page,
          limit: limit,
        ),
        _GetById(:final id) => _getById(emit: emit, id: id),
        _Search(:final query, :final page, :final limit) => _search(
          emit: emit,
          query: query,
          page: page,
          limit: limit,
        ),
      },
    );
  }

  Future<void> _getAll({
    required Emitter<DictionaryState> emit,
    required int page,
    required int limit,
  }) async {
    emit(const DictionaryState.loading());
    try {
      final allPlants = await _dictionaryRepository.getAllPlants(
        page: page,
        limit: limit,
      );
      if (allPlants.isEmpty) {
        emit(const DictionaryState.empty());
      } else {
        emit(DictionaryState.loaded(plants: allPlants));
      }
    } on SocketException catch (_) {
      emit(
        const DictionaryState.error(
          message: 'Нет интернет-соединения. Проверьте подключение.',
        ),
      );
    } on ClientException catch (e) {
      final errorMessage = _handlePocketBaseError(e);
      emit(
        DictionaryState.error(
          message: errorMessage,
          details: {'error': e.toString()}, 
        ),
      );
    } catch (e) {
      emit(
        DictionaryState.error(
          message: 'Не удалось загрузить данные. Попробуйте позже.',
          details: {'error': e.toString()},
        ),
      );
    }
  }

  String _handlePocketBaseError(ClientException e) {
    if (e.toString().contains('Connection reset by peer') ||
        e.toString().contains('SocketException')) {
      return 'Проблемы с соединением. Проверьте интернет.';
    }

    if (e.toString().contains('404')) {
      return 'Данные не найдены';
    }

    if (e.toString().contains('500')) {
      return 'Ошибка сервера. Попробуйте позже.';
    }

    return 'Неизвестная ошибка сервера';
  }

  Future<void> _getById({
    required Emitter<DictionaryState> emit,
    required String id,
  }) async {
    emit(const DictionaryState.loading());
    try {
      final plant = await _dictionaryRepository.getPlantById(id);
      emit(DictionaryState.loaded(plants: [plant]));
    } on SocketException catch (_) {
      emit(
        const DictionaryState.error(
          message: 'Нет интернет-соединения. Проверьте подключение.',
        ),
      );
    } on ClientException catch (e) {
      emit(
        DictionaryState.error(
          message: _handlePocketBaseError(e),
          details: {'error': e.toString()},
        ),
      );
    } catch (e) {
      emit(
        DictionaryState.error(
          message: 'Не удалось загрузить растение.',
          details: {'error': e.toString()},
        ),
      );
    }
  }

  Future<void> _search({
    required Emitter<DictionaryState> emit,
    required String query,
    required int page,
    required int limit,
  }) async {
    emit(const DictionaryState.loading());
    try {
      final plants = await _dictionaryRepository.searchPlants(
        query: query,
        page: page,
        limit: limit,
      );
      emit(DictionaryState.loaded(plants: plants));
    } on SocketException catch (_) {
      emit(
        const DictionaryState.error(
          message: 'Нет интернет-соединения. Проверьте подключение.',
        ),
      );
    } on ClientException catch (e) {
      emit(
        DictionaryState.error(
          message: _handlePocketBaseError(e),
          details: {'error': e.toString()},
        ),
      );
    } catch (e) {
      emit(
        DictionaryState.error(
          message: 'Не удалось выполнить поиск.',
          details: {'error': e.toString()},
        ),
      );
    }
  }
}
