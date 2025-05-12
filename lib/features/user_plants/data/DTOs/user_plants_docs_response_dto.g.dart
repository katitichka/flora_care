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
  userId: json['user_id'] as String,
  plantId: json['plant_id'] as String,
  userPlantName: json['user_plant_name'] as String,
);

Map<String, dynamic> _$UserPlantsDocsResponseDtoToJson(
  _UserPlantsDocsResponseDto instance,
) => <String, dynamic>{
  'id': instance.id,
  'created': instance.created,
  'updated': instance.updated,
  'user_id': instance.userId,
  'plant_id': instance.plantId,
  'user_plant_name': instance.userPlantName,
};
