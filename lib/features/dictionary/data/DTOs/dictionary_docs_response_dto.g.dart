// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'dictionary_docs_response_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_DictionaryDocsResponseDto _$DictionaryDocsResponseDtoFromJson(
  Map<String, dynamic> json,
) => _DictionaryDocsResponseDto(
  collectionId: json['collectionId'] as String,
  collectionName: json['collectionName'] as String,
  created: json['created'] as String,
  updated: json['updated'] as String,
  id: json['id'] as String,
  scientificName: json['scientific_name'] as String,
  commonName: json['common_name'] as String,
  image: json['image'] as String,
  light: json['light'] as String,
  optimalTemp: (json['optimal_temp'] as num).toInt(),
  wateringFreq: (json['watering_freq'] as num).toInt(),
  humidity: (json['humidity'] as num).toInt(),
  fertilizer: json['fertilizer'] as String,
  transplant: json['transplant'] as String,
);

Map<String, dynamic> _$DictionaryDocsResponseDtoToJson(
  _DictionaryDocsResponseDto instance,
) => <String, dynamic>{
  'collectionId': instance.collectionId,
  'collectionName': instance.collectionName,
  'created': instance.created,
  'updated': instance.updated,
  'id': instance.id,
  'scientific_name': instance.scientificName,
  'common_name': instance.commonName,
  'image': instance.image,
  'light': instance.light,
  'optimal_temp': instance.optimalTemp,
  'watering_freq': instance.wateringFreq,
  'humidity': instance.humidity,
  'fertilizer': instance.fertilizer,
  'transplant': instance.transplant,
};
