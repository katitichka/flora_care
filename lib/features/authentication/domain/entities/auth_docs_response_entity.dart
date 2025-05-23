import 'package:freezed_annotation/freezed_annotation.dart';

part 'auth_docs_response_entity.freezed.dart';

@freezed
sealed class AuthDocsResponseEntity with _$AuthDocsResponseEntity {
  const factory AuthDocsResponseEntity({
    required String id,
    required String email,
    required bool verified,
  }) = _AuthDocsResponseEntity;
}
