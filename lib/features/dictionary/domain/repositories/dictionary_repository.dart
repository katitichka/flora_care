import 'package:flora_care/features/dictionary/domain/entities/dictionary_docs_response_entity.dart';

abstract class DictionaryRepository {
  Future<List<DictionarysDocsResponseEntity>> getAllPlants({
    required int page,
    required int limit,
  }); 
  Future<DictionarysDocsResponseEntity> getPlantById(
    String id,
  ); 
  Future<List<DictionarysDocsResponseEntity>> searchPlants({
    required int page,
    required int limit,
    required String query,
  }); 
}
