part of 'dictionary_bloc.dart';

@freezed
sealed class DictionaryState with _$DictionaryState {
  const DictionaryState._();
  List<DictionaryDocsResponseEntity>? get getPlants => switch (this) {
    Loaded(:final plants) => plants,
    _ => null,
  };
  const factory DictionaryState.initial() = Initial;
  const factory DictionaryState.loading() = Loading;
  const factory DictionaryState.loaded({
    required List<DictionaryDocsResponseEntity> plants,
    required List<DictionaryDocsResponseEntity> filterPlants,
  }) = Loaded;
  const factory DictionaryState.error({
    required String message,
  }) = Error;
  
}