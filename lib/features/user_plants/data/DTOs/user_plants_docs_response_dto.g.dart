// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_plants_docs_response_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_UserPlantsDocsResponseDto _$UserPlantsDocsResponseDtoFromJson(
  Map<String, dynamic> json,
) => _UserPlantsDocsResponseDto(
  id: json['id'] as String,
  created: json['created'] as String,
  updated: json['updated'] as String,
  addedPlant: DateTime.parse(json['added_plant'] as String),
  userId: json['user_id'] as String,
  plantId: json['plant_id'] as String,
);

Map<String, dynamic> _$UserPlantsDocsResponseDtoToJson(
  _UserPlantsDocsResponseDto instance,
) => <String, dynamic>{
  'id': instance.id,
  'created': instance.created,
  'updated': instance.updated,
  'added_plant': instance.addedPlant.toIso8601String(),
  'user_id': instance.userId,
  'plant_id': instance.plantId,
};
