import 'package:freezed_annotation/freezed_annotation.dart';

part 'dictionary_docs_response_entity.freezed.dart';

@freezed
sealed class DictionaryDocsResponseEntity with _$DictionaryDocsResponseEntity {
  const factory DictionaryDocsResponseEntity({
    required String id,
    required String scientificName,
    required String commonName,
    String? imageUrl,
    required String light,
    required double optimalTemp,
    required int wateringFreq,
    required double humidity,
    required String fertilizer,
    required String transplant,
  }) = _DictionaryDocsResponseEntity;
}
