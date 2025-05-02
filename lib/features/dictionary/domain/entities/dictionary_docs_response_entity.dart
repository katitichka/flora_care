import 'package:freezed_annotation/freezed_annotation.dart';

part 'dictionary_docs_response_entity.freezed.dart';
part 'dictionary_docs_response_entity.g.dart';


@freezed
sealed class DictionarysDocsResponseEntity with _$DictionarysDocsResponseEntity {
  const factory DictionarysDocsResponseEntity({
    required String id,
    @JsonKey(name: 'scientific_name') required String scientificName,
    @JsonKey(name: 'common_name') required String commonName,
    @JsonKey(name: 'image_url') String? imageUrl,
    required String light,
    @JsonKey(name: 'optimal_temp') required double optimalTemp,
    @JsonKey(name: 'watering_freq') required int wateringFreq,
    required double humidity,
    required String fertilizer,
    required String transplant,
  }) = _DictionarysDocsResponseEntity;

  factory DictionarysDocsResponseEntity.fromJson(Map<String, dynamic> json) =>
      _$DictionarysDocsResponseEntityFromJson(json);
}