import 'package:freezed_annotation/freezed_annotation.dart';

part 'dictionary_docs_response_dto.freezed.dart';
part 'dictionary_docs_response_dto.g.dart';


@freezed
sealed class DictionaryDocsResponseDto with _$DictionaryDocsResponseDto {
  @JsonSerializable(fieldRename: FieldRename.snake) 
  const factory DictionaryDocsResponseDto({
    required String id,
    required String scientificName, 
    required String commonName,
    @JsonKey(name: 'image_url')
    String? imageUrl,
    required String light,
    required int optimalTemp,
    required int wateringFreq,
    required int humidity,
    required String fertilizer,
    required String transplant,
  }) = _DictionaryDocsResponseDto;

  factory DictionaryDocsResponseDto.fromJson(Map<String, dynamic> json) =>
      _$DictionaryDocsResponseDtoFromJson(json);
}