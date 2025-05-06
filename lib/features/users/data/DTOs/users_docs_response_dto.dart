import 'package:freezed_annotation/freezed_annotation.dart';

part 'users_docs_response_dto.freezed.dart';
part 'users_docs_response_dto.g.dart';


@freezed
sealed class UsersDocsResponseDto with _$UsersDocsResponseDto {
  @JsonSerializable(fieldRename: FieldRename.snake) 
  const factory UsersDocsResponseDto({
    required String id,
    required DateTime created, 
    required String name,
  }) = _UsersDocsResponseDto;

  factory UsersDocsResponseDto.fromJson(Map<String, dynamic> json) =>
      _$UsersDocsResponseDtoFromJson(json);
}