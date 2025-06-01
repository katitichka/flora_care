import 'package:flora_care/common/utils/error_handler.dart';
import 'package:flora_care/features/diary/domain/repositories/diary_repository.dart';
import 'package:flora_care/features/user_plants/domain/entities/user_plants_docs_response_entity.dart';
import 'package:flora_care/features/user_plants/domain/repositories/user_plants_repository.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'user_plants_event.dart';
part 'user_plants_state.dart';
part 'user_plants_bloc.freezed.dart';

class UserPlantsBloc extends Bloc<UserPlantsEvent, UserPlantsState> {
  final UserPlantsRepository _userPlantsRepository;
  final DiaryRepository _diaryRepository;

  UserPlantsBloc({
    required UserPlantsRepository userPlantsRepository,
    required DiaryRepository diaryRepository,
  }) : _userPlantsRepository = userPlantsRepository,
       _diaryRepository = diaryRepository,
       super(const UserPlantsState.initial()) {
    on<UserPlantsEvent>(
      (event, emit) => switch (event) {
        _GetAllUserPlants() => _getAllUserPlants(emit: emit),
        _Search(:final query) => _search(emit: emit, query: query),
        _AddUserPlant(:final userId, :final plantId, :final userPlantName) =>
          _addUserPlant(
            emit: emit,
            userId: userId,
            plantId: plantId,
            userPlantName: userPlantName,
          ),
        _DeleteUserPlant(:final userPlantId) => _deleteUserPlant(
          emit: emit,
          userPlantId: userPlantId,
        ),
        _WaterPlant(:final userPlantId) => _waterPlant(
          emit: emit,
          userPlantId: userPlantId,
        ),
        _UpdatePlantName(:final userPlantId, :final newName) => _updatePlantName(
          emit: emit,
          userPlantId: userPlantId,
          newName: newName,
        ),
      },
    );
  }
  Future<void> _getAllUserPlants({
    required Emitter<UserPlantsState> emit,
  }) async {
    emit(const UserPlantsState.loading());
    try {
      final allUserPlants = await _userPlantsRepository.getAllUserPlants();

      emit(UserPlantsState.loaded(userPlants: allUserPlants));
    } catch (e) {
      final message = handleError(e);

      emit(UserPlantsState.error(message: message));
    }
  }

  Future<void> _search({
    required Emitter<UserPlantsState> emit,
    required String query,
  }) async {
    emit(const UserPlantsState.loading());
    try {
      final plants = await _userPlantsRepository.searchPlants(query: query);

      emit(UserPlantsState.loaded(userPlants: plants));
    } catch (e) {
      final message = handleError(e);
      emit(UserPlantsState.error(message: message));
    }
  }

  Future<void> _addUserPlant({
    required Emitter<UserPlantsState> emit,
    required String plantId,
    required String userId,
    required String userPlantName,
  }) async {
    final List<UserPlantsDocsResponseEntity> currentPlants =
        state is Loaded ? (state as Loaded).userPlants : [];

    try {
      await _userPlantsRepository.addUserPlant(
        plantId: plantId,
        userId: userId,
        userPlantName: userPlantName,
      );
      final updatedPlants = await _userPlantsRepository.getAllUserPlants();
      emit(UserPlantsState.loaded(userPlants: updatedPlants));
    } catch (e) {
      emit(UserPlantsState.error(message: handleError(e)));
      if (currentPlants.isNotEmpty) {
        emit(UserPlantsState.loaded(userPlants: currentPlants));
      }
    }
  }

  Future<bool> isPlantNameUnique(String name, String userId) async {
    try {
      final plants = await _userPlantsRepository.getAllUserPlants();
      return !plants.any(
        (plant) => plant.userPlantName.toLowerCase() == name.toLowerCase(),
      );
    } catch (e) {
      return true;
    }
  }

  Future<void> _deleteUserPlant({
    required Emitter<UserPlantsState> emit,
    required String userPlantId,
  }) async {
    final currentPlants = (state as Loaded).userPlants;
    try {
      if (state is Loaded) {
        final updatedPlants =
            currentPlants.where((plant) => plant.id != userPlantId).toList();
        emit(UserPlantsState.loaded(userPlants: updatedPlants));
      }

      await _userPlantsRepository.deleteUserPlant(userPlantId: userPlantId);
    } catch (e) {
      emit(
        UserPlantsState.actionFail(
          message: handleError(e),
          userPlants: currentPlants,
        ),
      );
    }
  }

  Future<void> _waterPlant({
    required Emitter<UserPlantsState> emit,
    required String userPlantId,
  }) async {
    final currentPlants =
        state is Loaded
            ? (state as Loaded).userPlants
            : <UserPlantsDocsResponseEntity>[];

    try {
      final events = await _diaryRepository.addEvent(
        userPlantId: userPlantId,
        eventDate: DateTime.now(),
      );
      print('Events after add: $events');
      if (state is Loaded) {
        emit(state);
      }
    } catch (e) {
      print('Events after failed: $e');
      emit(
        UserPlantsState.actionFail(
          message: handleError(e),
          userPlants: currentPlants,
        ),
      );
    }
  }
 Future<void> _updatePlantName({
  required Emitter<UserPlantsState> emit,
  required String userPlantId,
  required String newName,
}) async {
  if (state is! Loaded) return;
  
  final currentPlants = (state as Loaded).userPlants;

  try {
    final isUnique = await _userPlantsRepository.isPlantNameUnique(
      name: newName,
      userId: await _userPlantsRepository.getCurrentUserId(),
    );

    if (!isUnique) {
      emit(UserPlantsState.actionFail(
        message: 'Растение с таким именем уже существует',
        userPlants: currentPlants,
      ));
      return;
    }

    // Update in repository
    await _userPlantsRepository.updatePlantName(
      userPlantId: userPlantId,
      newName: newName,
    );

    // Update local state
    final updatedPlants = currentPlants.map((plant) {
      if (plant.id == userPlantId) {
        return plant.copyWith(userPlantName: newName);
      }
      return plant;
    }).toList();

    emit(UserPlantsState.loaded(userPlants: updatedPlants));
    emit(UserPlantsState.actionSuccess(message: 'Имя растения изменено'));
  } catch (e) {
    emit(UserPlantsState.actionFail(
      message: handleError(e),
      userPlants: currentPlants,
    ));
  }
}
}

