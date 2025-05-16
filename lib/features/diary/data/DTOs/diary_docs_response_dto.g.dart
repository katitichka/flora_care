// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'diary_docs_response_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_DiaryDocsResponseDto _$DiaryDocsResponseDtoFromJson(
  Map<String, dynamic> json,
) => _DiaryDocsResponseDto(
  collectionId: json['collectionId'] as String,
  collectionName: json['collectionName'] as String,
  id: json['id'] as String,
  created: json['created'] as String,
  updated: json['updated'] as String,
  eventDate:
      json['event_date'] == null
          ? null
          : DateTime.parse(json['event_date'] as String),
  note: json['note'] as String?,
  userPlantId: json['user_plant_id'] as String,
  userPlantData: _userPlantDataFromJson(json['expand'] as Map<String, dynamic>),
);

Map<String, dynamic> _$DiaryDocsResponseDtoToJson(
  _DiaryDocsResponseDto instance,
) => <String, dynamic>{
  'collectionId': instance.collectionId,
  'collectionName': instance.collectionName,
  'id': instance.id,
  'created': instance.created,
  'updated': instance.updated,
  'event_date': instance.eventDate?.toIso8601String(),
  'note': instance.note,
  'user_plant_id': instance.userPlantId,
  'expand': _userPlantDataToJson(instance.userPlantData),
};
