import 'package:flora_care/features/authentication/data/DTOs/auth_docs_response_dto.dart';
import 'package:flora_care/features/authentication/data/data_providers/auth_data_provider.dart';
import 'package:pocketbase/pocketbase.dart';

class AuthDataProvider implements AuthDataProviderImpl{
  final PocketBase pocketBase;

  AuthDataProvider(this.pocketBase);

  // Авториизация
  Future<AuthDocsResponseDto> login({
    required String email,
    required String password,
  }) async {
    final authResponse = await pocketBase
        .collection('users')
        .authWithPassword(email, password);
    final user = authResponse.record;

    return AuthDocsResponseDto(
      collectionId: user.collectionId,
      collectionName: user.collectionName,
      id: user.id,
      created: user.created,
      updated: user.updated,
      username: user.getStringValue('username'),
      email: user.getStringValue('email'),
      emailVisibility: user.getStringValue('emailVisibility'),
      verified: user.getBoolValue('verified'),
    );
  }

  // Регистрация
  Future<void> register({
    required String username,
    required String email,
    required String password,
  }) async {
    await pocketBase
        .collection('users')
        .create(
          body: {
            'email': email,
            'password': password,
            'passwordConfirm': password,
            'username': username,
          },
        );
  }

  // Проверка авторизации
  bool get isAuthenticated => pocketBase.authStore.isValid;

  // Получение текущего пользователя
  AuthDocsResponseDto? getCurrentUser() {
    final record = pocketBase.authStore.model;
    if (record == null) return null;

    return AuthDocsResponseDto(
      collectionId: record.collectionId,
      collectionName: record.collectionName,
      id: record.id,
      created: record.created,
      updated: record.updated,
      username: record.getStringValue('username'),
      email: record.getStringValue('email'),
      emailVisibility: record.getStringValue('emailVisibility'),
      verified: record.getBoolValue('verified'),
    );
  }

  // Выход из аккаунта
  void logout() {
    pocketBase.authStore.clear();
  }
}
