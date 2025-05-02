import 'package:flora_care/features/dictionary/data/DTOs/dictionary_docs_response_dto.dart';
import 'package:flora_care/features/dictionary/domain/entities/dictionary_docs_response_entity.dart';

abstract class DictionaryDocsResponseMapper {
  static DictionaryDocsResponseEntity fromDto({required DictionaryDocsResponseDto dto}) {
    return DictionaryDocsResponseEntity(
      id: dto.id,
      scientificName: dto.scientificName,
      commonName: dto.commonName,
      imageUrl: dto.imageUrl,
      light: dto.light,
      optimalTemp: dto.optimalTemp,
      wateringFreq: dto.wateringFreq,
      humidity: dto.humidity,
      fertilizer: dto.fertilizer,
      transplant: dto.transplant,
    );
  }
}
