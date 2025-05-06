// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'users_docs_response_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_UsersDocsResponseDto _$UsersDocsResponseDtoFromJson(
  Map<String, dynamic> json,
) => _UsersDocsResponseDto(
  id: json['id'] as String,
  created: DateTime.parse(json['created'] as String),
  name: json['name'] as String,
);

Map<String, dynamic> _$UsersDocsResponseDtoToJson(
  _UsersDocsResponseDto instance,
) => <String, dynamic>{
  'id': instance.id,
  'created': instance.created.toIso8601String(),
  'name': instance.name,
};
