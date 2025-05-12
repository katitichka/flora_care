part of 'user_plants_bloc.dart';

@freezed
sealed class UserPlantsEvent with _$UserPlantsEvent {
  const factory UserPlantsEvent.getAllUserPlants({
    required int page,
    required int limit,
  }) = _GetAllUserPlants;

  const factory UserPlantsEvent.addUserPlant({
    required String plantId,
    required String userId,
    required String userPlantName,
  }) = _AddUserPlant;

  const factory UserPlantsEvent.deleteUserPlant({
    required String userPlantId,
  }) = _DeleteUserPlant;

  const factory UserPlantsEvent.search({
    required String query,
    required int page,
    required int limit,
  }) = _Search;
}
