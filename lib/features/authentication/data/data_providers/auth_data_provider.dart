import 'package:flora_care/features/authentication/data/DTOs/auth_docs_response_dto.dart';

abstract interface class AuthDataProvider {
  Future<AuthDocsResponseDto> login({
    required String email,
    required String password,
  });

  Future<void> register({
    required String username,
    required String email,
    required String password,
  });

  bool get isAuthenticated;

  AuthDocsResponseDto? get currentUser;
  
  void logout();
}
