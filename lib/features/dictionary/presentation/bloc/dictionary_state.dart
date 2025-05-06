part of 'dictionary_bloc.dart';

@freezed
class DictionaryState with _$DictionaryState {
  const factory DictionaryState.initial() = Initial;
  const factory DictionaryState.loading() = Loading;
  const factory DictionaryState.loaded({
    required List<DictionaryDocsResponseEntity> plants,
  }) = Loaded;
  const factory DictionaryState.error({
    required String message,
    //Map<String, dynamic>? details,
  }) = Error;
}