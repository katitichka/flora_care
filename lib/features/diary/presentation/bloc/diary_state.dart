part of 'diary_bloc.dart';

@freezed
sealed class DiaryState with _$DiaryState {
  const factory DiaryState.initial() = Initial;
  const factory DiaryState.loading() = Loading;
  const factory DiaryState.loaded({
    required List<DiaryDocsResponseEntity> plantEvents,
    required List<DiaryDocsResponseEntity> plantNotes,
  }) = Loaded;
  const factory DiaryState.error({required String message}) = Error;
}