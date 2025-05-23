// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'auth_docs_response_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_AuthDocsResponseDto _$AuthDocsResponseDtoFromJson(Map<String, dynamic> json) =>
    _AuthDocsResponseDto(
      collectionId: json['collectionId'] as String,
      collectionName: json['collectionName'] as String,
      id: json['id'] as String,
      created: json['created'] as String,
      updated: json['updated'] as String,
      username: json['username'] as String,
      email: json['email'] as String,
      emailVisibility: json['emailVisibility'] as String,
      verified: json['verified'] as bool,
    );

Map<String, dynamic> _$AuthDocsResponseDtoToJson(
  _AuthDocsResponseDto instance,
) => <String, dynamic>{
  'collectionId': instance.collectionId,
  'collectionName': instance.collectionName,
  'id': instance.id,
  'created': instance.created,
  'updated': instance.updated,
  'username': instance.username,
  'email': instance.email,
  'emailVisibility': instance.emailVisibility,
  'verified': instance.verified,
};
