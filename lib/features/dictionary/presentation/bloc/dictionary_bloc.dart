import 'package:flora_care/common/utils/error_handler.dart';

import 'package:flora_care/features/dictionary/domain/entities/dictionary_docs_response_entity.dart';
import 'package:flora_care/features/dictionary/domain/repositories/dictionary_repository.dart';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

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

      emit(DictionaryState.loaded(plants: allPlants, filterPlants: []));
    } catch (e) {
      String message;
      if (e is DictionaryDocsResponseException) {
        message = e.message;
      } else {
        message = handleError(e);
      }
      emit(DictionaryState.error(message: message));
    }
  }

  Future<void> _search({
    required Emitter<DictionaryState> emit,
    required String query,
    required int page,
    required int limit,
  }) async {
    try {
      final List<DictionaryDocsResponseEntity> plants;
      List<DictionaryDocsResponseEntity> filterPlants = [];
      if (state.getPlants != null) {
        plants = state.getPlants!;
        filterPlants =
            plants
                .where(
                  (item) =>
                      (item.scientificName.toString().toLowerCase().contains(
                            query.toLowerCase(),
                          ) ||
                          (item.commonName.toString().toLowerCase().contains(
                            query,
                          ))),
                )
                .toList();
                
      } else {
        plants = [];
      }
      emit(DictionaryState.loaded(plants: plants, filterPlants: filterPlants));
    } catch (e) {
      String message;
      if (e is DictionaryDocsResponseException) {
        message = e.message;
      } else {
        message = handleError(e);
      }
      emit(DictionaryState.error(message: message));
    }
  }

}
