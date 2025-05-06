import 'package:freezed_annotation/freezed_annotation.dart';

part 'users_docs_response_entity.freezed.dart';

@freezed
sealed class UsersDocsResponseEntity with _$UsersDocsResponseEntity {
  const factory UsersDocsResponseEntity({
    required String id,
    required String name,
    required DateTime created,
  }) = _UsersDocsResponseEntity;
}
