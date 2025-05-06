import 'package:flora_care/features/dictionary/domain/entities/dictionary_docs_response_entity.dart';

abstract interface class DictionaryRepository {
  Future<List<DictionaryDocsResponseEntity>> getAllPlants({
    required int page,
    required int limit,
  }); 
  Future<List<DictionaryDocsResponseEntity>> searchPlants({
    required int page,
    required int limit,
    required String query,
  }); 
  // Future<DictionaryDocsResponseEntity> getPlantById(
  //   String id,
  // ); 
}
