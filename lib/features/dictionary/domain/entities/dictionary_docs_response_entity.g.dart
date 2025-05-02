// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'dictionary_docs_response_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_DictionarysDocsResponseEntity _$DictionarysDocsResponseEntityFromJson(
  Map<String, dynamic> json,
) => _DictionarysDocsResponseEntity(
  id: json['id'] as String,
  scientificName: json['scientific_name'] as String,
  commonName: json['common_name'] as String,
  imageUrl: json['image_url'] as String?,
  light: json['light'] as String,
  optimalTemp: (json['optimal_temp'] as num).toDouble(),
  wateringFreq: (json['watering_freq'] as num).toInt(),
  humidity: (json['humidity'] as num).toDouble(),
  fertilizer: json['fertilizer'] as String,
  transplant: json['transplant'] as String,
);

Map<String, dynamic> _$DictionarysDocsResponseEntityToJson(
  _DictionarysDocsResponseEntity instance,
) => <String, dynamic>{
  'id': instance.id,
  'scientific_name': instance.scientificName,
  'common_name': instance.commonName,
  'image_url': instance.imageUrl,
  'light': instance.light,
  'optimal_temp': instance.optimalTemp,
  'watering_freq': instance.wateringFreq,
  'humidity': instance.humidity,
  'fertilizer': instance.fertilizer,
  'transplant': instance.transplant,
};
