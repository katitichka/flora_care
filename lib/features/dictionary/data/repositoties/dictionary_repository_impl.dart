import 'package:flora_care/features/dictionary/data/DTOs/dictionary_docs_response_dto.dart';
import 'package:flora_care/features/dictionary/data/mappers/dictionary_docs_response_mapper.dart'; 
import 'package:flora_care/features/dictionary/domain/entities/dictionary_docs_response_entity.dart';
import 'package:flora_care/features/dictionary/domain/repositories/dictionary_repository.dart';
import 'package:pocketbase/pocketbase.dart';

class DictionaryRepositoryImpl implements DictionaryRepository {
  final PocketBase _pocketBase;

  DictionaryRepositoryImpl(this._pocketBase);

  @override
  Future<List<DictionaryDocsResponseEntity>> getAllPlants({
    required int page,
    required int limit,
  }) async {
    final result = await _pocketBase.collection('plants').getFullList();
    return result
        .map((e) => DictionaryDocsResponseMapper.fromDto(
              dto: DictionaryDocsResponseDto.fromJson(e.data),
            ))
        .toList();
  }

  @override
  Future<DictionaryDocsResponseEntity> getPlantById(String id) async {
    final result = await _pocketBase.collection('plants').getOne(id);
    return DictionaryDocsResponseMapper.fromDto(
      dto: DictionaryDocsResponseDto.fromJson(result.data),
    );
  }

  @override
  Future<List<DictionaryDocsResponseEntity>> searchPlants({
    required int page,
    required int limit,
    required String query,
  }) async {
    final result = await _pocketBase.collection('plants').getFullList(
      filter: 'name ~ "$query"',
    );
    return result
        .map((e) => DictionaryDocsResponseMapper.fromDto(
              dto: DictionaryDocsResponseDto.fromJson(e.data),
            ))
        .toList();
  }
}
