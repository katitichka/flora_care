import 'package:flora_care/features/dictionary/data/data_poviders/dictionary_data_provider.dart';
import 'package:flora_care/features/dictionary/data/mappers/dictionary_docs_response_mapper.dart';
import 'package:flora_care/features/dictionary/domain/entities/dictionary_docs_response_entity.dart';
import 'package:flora_care/features/dictionary/domain/repositories/dictionary_repository.dart';


class DictionaryRepositoryImpl implements DictionaryRepository {
  final DictionaryDataProvider _dictionaryDataProvider;

  DictionaryRepositoryImpl({
    required DictionaryDataProvider dictionaryDataProvider,
  }) : _dictionaryDataProvider = dictionaryDataProvider;

  @override
  Future<List<DictionaryDocsResponseEntity>> getAllPlants({
    required int page,
    required int limit,
  }) async {
    final dtos = await _dictionaryDataProvider.getAllPlants(
      page: page,
      limit: limit,
    );
    return dtos.map((dto) => DictionaryDocsResponseMapper.fromDto(dto: dto)).toList();
  }


    // @override
  // Future<DictionaryDocsResponseEntity> getPlantById(String id) async {
  //   try {
  //     final result = await _pocketBase.collection('plants').getOne(id);
  //     return DictionaryDocsResponseMapper.fromDto(
  //       dto: DictionaryDocsResponseDto.fromJson(result.data),
  //     );
  //   } catch (e) {
  //     debugPrint('Error in getPlantById: $e');
  //     rethrow;
  //   }
  // }

}
