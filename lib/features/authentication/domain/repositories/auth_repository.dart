import 'package:flora_care/features/authentication/domain/entities/auth_docs_response_entity.dart';

abstract class AuthRepository {
  Future<AuthDocsResponseEntity> login({
    required String email,
    required String password,
  });

  Future<void> register({
    required String username,
    required String email,
    required String password,
  });

  bool get isAuthenticated;
  String? get currentUserId;
  AuthDocsResponseEntity? getCurrentUser();

  void logout();
}
