import 'package:flora_care/common/utils/error_handler.dart';
import 'package:flora_care/features/user_plants/domain/entities/user_plants_docs_response_entity.dart';
import 'package:flora_care/features/user_plants/domain/repositories/user_plants_repository.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:http/http.dart';

part 'user_plants_event.dart';
part 'user_plants_state.dart';
part 'user_plants_bloc.freezed.dart';

class UserPlantsBloc extends Bloc<UserPlantsEvent, UserPlantsState> {
  final UserPlantsRepository _userPlantsRepository;

  UserPlantsBloc({required UserPlantsRepository userPlantsRepository})
    : _userPlantsRepository = userPlantsRepository,
      super(const UserPlantsState.initial()) {
    on<UserPlantsEvent>(
      (event, emit) => switch (event) {
        _GetAllUserPlants(:final page, :final limit) => _getAllUserPlants(
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
        _AddUserPlant(:final userId, :final plantId) => _addUserPlant(
          emit: emit,
          userId: userId,
          plantId: plantId,
        ),
        _DeleteUserPlant(:final userPlantId) => _deleteUserPlant(
          emit: emit,
          userPlantId: userPlantId,
        ),
      },
    );
  }
  Future<void> _getAllUserPlants({
    required Emitter<UserPlantsState> emit,
    required int page,
    required int limit,
  }) async {
    emit(const UserPlantsState.loading());
    try {
      final allUserPlants = await _userPlantsRepository.getAllUserPlants(
        page: page,
        limit: limit,
      );

      emit(UserPlantsState.loaded(userPlants: allUserPlants));
    } catch (e) {
      final message = handleError(e);

      emit(UserPlantsState.error(message: message));
    }
  }

  Future<void> _search({
    required Emitter<UserPlantsState> emit,
    required String query,
    required int page,
    required int limit,
  }) async {
    emit(const UserPlantsState.loading());
    try {
      final plants = await _userPlantsRepository.searchPlants(
        query: query,
        page: page,
        limit: limit,
      );

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
  }) async {
    try {
      await _userPlantsRepository.addUserPlant(
        plantId: plantId,
        userId: userId,
        );
      emit(const UserPlantsState.actionSuccess(message: 'Растение добавлено'));
      _getAllUserPlants(emit: emit, page: 1, limit: 10);
    } catch (e) {
      emit(UserPlantsState.actionFail(message: handleError(e)));
    }
  }

  Future<void> _deleteUserPlant({
    required Emitter<UserPlantsState> emit,
    required String userPlantId,
  }) async {
    try {
      await _userPlantsRepository.deleteUserPlant(userPlantId: userPlantId);
      emit(const UserPlantsState.actionSuccess(message: 'Растение добавлено'));
      _getAllUserPlants(emit: emit, page: 1, limit: 10);
    } catch (e) {
      emit(UserPlantsState.actionFail(message: handleError(e)));
    }
  }
}
