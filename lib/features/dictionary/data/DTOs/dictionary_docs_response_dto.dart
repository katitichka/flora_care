import 'package:freezed_annotation/freezed_annotation.dart';

part 'dictionary_docs_response_dto.freezed.dart';
part 'dictionary_docs_response_dto.g.dart';


@freezed
sealed class DictionaryDocsResponseDto with _$DictionaryDocsResponseDto {

  const factory DictionaryDocsResponseDto({
    required String collectionId,
    required String collectionName,
    required String created,
    required String updated,
    required String id,
    @JsonKey(name: 'scientific_name')
    required String scientificName, 
    @JsonKey(name: 'common_name')
    required String commonName,
    required String image,
    required String light,
    @JsonKey(name: 'optimal_temp')
    required int optimalTemp,
    @JsonKey(name: 'watering_freq')
    required int wateringFreq,
    required int humidity,
    required String fertilizer,
    required String transplant,
  }) = _DictionaryDocsResponseDto;

  factory DictionaryDocsResponseDto.fromJson(Map<String, dynamic> json) =>
      _$DictionaryDocsResponseDtoFromJson(json);
}