part of 'auth_bloc.dart';

@freezed
sealed class AuthEvent with _$AuthEvent {
  const factory AuthEvent.login({
    required String email,
    required String password,
  }) = _Login;

  const factory AuthEvent.register({
    required String username,
    required String email,
    required String password,
  }) = _Register;

  const factory AuthEvent.checkAuth() = _CheckAuth;
  const factory AuthEvent.logout() = _Logout;
}
