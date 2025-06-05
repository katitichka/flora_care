import 'dart:io';

import 'package:flora_care/common/utils/error_handler.dart';
import 'package:flora_care/features/authentication/data/DTOs/auth_docs_response_dto.dart';
import 'package:pocketbase/pocketbase.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:flora_care/features/authentication/data/data_providers/auth_data_provider.dart';

class AuthDataProviderImpl implements AuthDataProvider {
  final PocketBase _pocketBase;
  final SharedPreferences _prefs;
  static const _authTokenKey = 'auth_token';

  AuthDataProviderImpl(this._pocketBase, this._prefs);

  @override
  Future<AuthDocsResponseDto> login({
    required String email,
    required String password,
  }) async {
    try {
      final authResponse = await _pocketBase
          .collection('users')
          .authWithPassword(email, password);

      await _saveAuthToken(authResponse.token);

      return _mapRecordToDto(authResponse.record!);
    } catch (e) {
      await _clearAuthToken();
      rethrow;
    }
  }

  @override
Future<void> register({
  required String username,
  required String email,
  required String password,
}) async {
  try {
    await _pocketBase.collection('users').create(
      body: {
        'username': username,
        'email': email,
        'password': password,
        'passwordConfirm': password,
      },
    );
  } on ClientException catch (e) {
    final response = e.response;
    
    // Обработка ошибок email
    if (response['data']?['email'] != null) {
      final emailError = response['data']['email'];
      if (emailError['code'] == 'validation_invalid_email') {
        if (emailError['message'].contains('already in use')) {
          throw DictionaryDocsResponseException(
            'Пользователь с такой почтой уже зарегистрирован'
          );
        } else {
          throw DictionaryDocsResponseException(
            'Введите корректный email адрес'
          );
        }
      }
    }
    
    // Обработка ошибок username
    if (response['data']?['username'] != null) {
      final usernameError = response['data']['username'];
      if (usernameError['code'] == 'validation_invalid_username') {
        if (usernameError['message'].contains('already in use')) {
          throw DictionaryDocsResponseException(
            'Пользователь с таким именем уже существует'
          );
        } else {
          throw DictionaryDocsResponseException(
            'Имя пользователя должно содержать от 3 до 20 символов (буквы, цифры, _)'
          );
        }
      }
    }
    
    // Общая ошибка, если не распознали конкретные
    throw DictionaryDocsResponseException(
      response['message'] ?? 'Не удалось зарегистрироваться'
    );
    
  } on SocketException {
    throw DictionaryDocsResponseException('Нет интернет-соединения');
  } catch (e) {
    throw DictionaryDocsResponseException('Произошла непредвиденная ошибка');
  }
}

  @override
  Future<void> logout() async {
    _pocketBase.authStore.clear();
    await _clearAuthToken();
  }

  @override
  Future<bool> tryRestoreSession() async {
    final token = _prefs.getString(_authTokenKey);
    if (token == null || token.isEmpty) return false;

    try {
      _pocketBase.authStore.save(token, _pocketBase.authStore.model);
      await _pocketBase.collection('users').authRefresh();
      return true;
    } catch (e) {
      await _clearAuthToken();
      return false;
    }
  }

  @override
  AuthDocsResponseDto? get currentUser {
    final record = _pocketBase.authStore.model;
    return record != null ? _mapRecordToDto(record) : null;
  }

  @override
  bool get isAuthenticated => _pocketBase.authStore.isValid;

  Future<void> _saveAuthToken(String token) async {
    await _prefs.setString(_authTokenKey, token);
  }

  Future<void> _clearAuthToken() async {
    await _prefs.remove(_authTokenKey);
  }

  AuthDocsResponseDto _mapRecordToDto(RecordModel record) {
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
}
