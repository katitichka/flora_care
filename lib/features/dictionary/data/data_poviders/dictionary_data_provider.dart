import 'package:flora_care/features/dictionary/data/DTOs/dictionary_docs_response_dto.dart';

abstract interface class DictionaryDataProvider {
  Future<List<DictionaryDocsResponseDto>> getAllPlants({
    required int page,
    required int limit,
  });
  Future<List<DictionaryDocsResponseDto>> searchPlants({
    required int page,
    required int limit,
    required String query,
  });
}
