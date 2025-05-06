part of 'dictionary_bloc.dart';

@freezed
sealed class DictionaryEvent with _$DictionaryEvent {
  const factory DictionaryEvent.getAll({
    required int page,
    required int limit,
  }) = _GetAll;

  // const factory DictionaryEvent.getById({
  //   required String id,
  // }) = _GetById;

  const factory DictionaryEvent.search({
    required String query,
    required int page,
    required int limit,
  }) = _Search;
}