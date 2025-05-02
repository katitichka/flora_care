import 'package:freezed_annotation/freezed_annotation.dart';

part 'dictionary_docs_response_dto.freezed.dart';
part 'dictionary_docs_response_dto.g.dart';

@freezed
sealed class DictionaryDocsResponseDto with _$DictionaryDocsResponseDto {
  const factory DictionaryDocsResponseDto({
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
  }) = _DictionaryDocsResponseDto;

  factory DictionaryDocsResponseDto.fromJson(Map<String, dynamic> json) =>
      _$DictionaryDocsResponseDtoFromJson(json);
}