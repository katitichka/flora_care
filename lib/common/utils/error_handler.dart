import 'dart:io';
import 'package:pocketbase/pocketbase.dart';

class DictionaryDocsResponseException implements Exception {
  final String message;
  DictionaryDocsResponseException(this.message);

  @override
  String toString() => 'DictionaryDocsResponseException: $message';
}
String handleError(dynamic error) {
  if (error is DictionaryDocsResponseException) {
    return error.message;
  }
  if (error is SocketException) {
    return 'Нет интернет-соединения. Проверьте подключение.';
  }
  if (error is ClientException) {
    return 'Ошибка при обработке запроса. Попробуйте еще раз.';
  }
  return 'Произошла непредвиденная ошибка. Попробуйте позже.';
}

void handleException(dynamic error) {
  if (error is SocketException) {
    throw DictionaryDocsResponseException('Нет интернет-соединения. Проверьте подключение.');
  }

  if (error is ClientException) {
    final response = error.response;
    final data = response['data'] as Map<String, dynamic>?;

    if (data != null) {
      if (data['email'] is List && data['email'].isNotEmpty) {
        if (data['email'].first.toString().contains('already exists')) {
          throw DictionaryDocsResponseException('Пользователь с такой почтой уже зарегистрирован');
        }
      }
      if (data['username'] is List && data['username'].isNotEmpty) {
        if (data['username'].first.toString().contains('already exists')) {
          throw DictionaryDocsResponseException('Пользователь с таким именем уже существует');
        }
      }
    }

    final message = error.toString();
    if (message.contains('Connection reset by peer') || message.contains('SocketException')) {
      throw DictionaryDocsResponseException('Проблемы с соединением. Проверьте интернет.');
    }
    if (message.contains('404')) {
      throw DictionaryDocsResponseException('Данные не найдены.');
    }
    if (message.contains('500')) {
      throw DictionaryDocsResponseException('Ошибка сервера. Попробуйте позже.');
    }
    throw DictionaryDocsResponseException('Неизвестная ошибка сервера.');
  }

  if (error is DictionaryDocsResponseException) {
    throw error;  
  }

  throw DictionaryDocsResponseException('Произошла непредвиденная ошибка. Попробуйте позже.');
}