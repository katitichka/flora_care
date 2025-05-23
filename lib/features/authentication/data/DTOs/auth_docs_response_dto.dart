import 'package:freezed_annotation/freezed_annotation.dart';

part 'auth_docs_response_dto.freezed.dart';
part 'auth_docs_response_dto.g.dart';

@freezed
sealed class AuthDocsResponseDto with _$AuthDocsResponseDto {
  const factory AuthDocsResponseDto({
    required String collectionId,
    required String collectionName,
    required String id,
    required String created,
    required String updated,
    required String username,
    required String email,
    required String emailVisibility,
    required bool verified,
  }) = _AuthDocsResponseDto;

  factory AuthDocsResponseDto.fromJson(Map<String, dynamic> json) =>
      _$AuthDocsResponseDtoFromJson(json);
}
