part of 'user_plants_bloc.dart';

@freezed
sealed class UserPlantsState with _$UserPlantsState {
  const factory UserPlantsState.initial() = Initial;
  const factory UserPlantsState.loading() = Loading;
  const factory UserPlantsState.loaded({
    required List<UserPlantsDocsResponseEntity> userPlants,
  }) = Loaded;
  const factory UserPlantsState.actionSuccess({
    required String message,
    }) = ActionSuccess;
  const factory UserPlantsState.actionFail({
    required String message,
    required List<UserPlantsDocsResponseEntity> userPlants,
    }) = ActionFail;
  const factory UserPlantsState.error({
    required String message,
    }) = Error;
}
