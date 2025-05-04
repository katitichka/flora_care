import 'dart:io';
import 'package:pocketbase/pocketbase.dart';

class DictionaryDocsResponseException implements Exception {
  final String message;
  DictionaryDocsResponseException(this.message);

  @override
  String toString() => 'DictionaryDocsResponseException: $message';
}

String handleError(dynamic error) {
  if (error is SocketException) {
    return 'Нет интернет-соединения. Проверьте подключение.';
  }

  if (error is ClientException) {
    final message = error.toString();
    if (message.contains('Connection reset by peer') || message.contains('SocketException')) {
      return 'Проблемы с соединением. Проверьте интернет.';
    }
    if (message.contains('404')) {
      return 'Данные не найдены.';
    }
    if (message.contains('500')) {
      return 'Ошибка сервера. Попробуйте позже.';
    }
    return 'Неизвестная ошибка сервера.';
  }

  if (error is DictionaryDocsResponseException) {
    return error.message; 
  }

  return 'Произошла непредвиденная ошибка. Попробуйте позже.';
}

void handleException(dynamic error) {
  if (error is SocketException) {
    throw DictionaryDocsResponseException('Нет интернет-соединения. Проверьте подключение.');
  }

  if (error is ClientException) {
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
