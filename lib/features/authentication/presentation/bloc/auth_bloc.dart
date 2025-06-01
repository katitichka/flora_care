import 'package:flora_care/features/authentication/domain/entities/auth_docs_response_entity.dart';
import 'package:flora_care/features/authentication/domain/repositories/auth_repository.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'auth_state.dart';
part 'auth_event.dart';
part 'auth_bloc.freezed.dart';

class AuthBloc extends Bloc<AuthEvent, AuthState> {
  final AuthRepository _authRepository;

  AuthBloc({required AuthRepository authRepository})
    : _authRepository = authRepository,
      super(const AuthState.initial()) {
    on<AuthEvent>(
      (event, emit) => switch (event) {
        _Login(:final email, :final password) => _onLogin(
          email: email,
          password: password,
          emit: emit,
        ),
        _Register(:final username, :final email, :final password) =>
          _onRegister(
            username: username,
            email: email,
            password: password,
            emit: emit,
          ),
        _CheckAuth() => _onCheckAuth(emit: emit),
        _Logout() => _onLogout(emit: emit),
      },
    );
    add(const AuthEvent.checkAuth());
  }

  Future<void> _onLogin({
    required String email,
    required String password,
    required Emitter<AuthState> emit,
  }) async {
    emit(const AuthState.loading());
    try {
      final user = await _authRepository.login(
        email: email,
        password: password,
      );
      emit(AuthState.authenticated(user));
    } catch (e) {
      emit(AuthState.error(e.toString()));
    }
  }

  Future<void> _onRegister({
    required String username,
    required String email,
    required String password,
    required Emitter<AuthState> emit,
  }) async {
    emit(const AuthState.loading());
    try {
      await _authRepository.register(
        username: username,
        email: email,
        password: password,
      );
      add(AuthEvent.login(email: email, password: password));
    } catch (e) {
      emit(AuthState.error(e.toString()));
    }
  }

  void _onCheckAuth({required Emitter<AuthState> emit}) {
    if (_authRepository.isAuthenticated) {
      final user = _authRepository.getCurrentUser();
      if (user != null) {
        emit(AuthState.authenticated(user));
      } else {
        emit(const AuthState.unauthenticated());
      }
    } else {
      emit(const AuthState.unauthenticated());
    }
  }

  void _onLogout({required Emitter<AuthState> emit}) {
    _authRepository.logout();
    emit(const AuthState.unauthenticated());
  }
}
