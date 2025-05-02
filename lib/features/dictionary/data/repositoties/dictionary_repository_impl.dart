import 'package:flora_care/features/dictionary/domain/repositories/dictionary_repository.dart';
import 'package:pocketbase/pocketbase.dart';
import 'package:flora_care/features/dictionary/domain/entities/dictionary_docs_response_entity.dart';


class DictionaryRepositoryImpl  implements DictionaryRepository{
  final PocketBase _pocketBase;

  DictionaryRepositoryImpl(this._pocketBase);

  @override
  Future<List<DictionarysDocsResponseEntity>> getAllPlants({
    required int page,
    required int limit,
  }) async {
    final result = await _pocketBase.collection('plants').getFullList();
    return result.map((e) => DictionarysDocsResponseEntity.fromJson(e.data)).toList();
  }

  @override
  Future<DictionarysDocsResponseEntity> getPlantById(String id) async {
    final result = await _pocketBase.collection('plants').getOne(id);
    return DictionarysDocsResponseEntity.fromJson(result.data);
  }

  @override
  Future<List<DictionarysDocsResponseEntity>> searchPlants({
    required int page,
    required int limit,
    required String query,
  }) async {
    final result = await _pocketBase.collection('plants').getFullList(
      filter: 'name ~ "$query"', 
    );
    return result.map((e) => DictionarysDocsResponseEntity.fromJson(e.data)).toList();
  }
}
