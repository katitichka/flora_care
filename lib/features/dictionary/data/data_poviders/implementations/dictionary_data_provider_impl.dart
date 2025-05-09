import 'package:flora_care/features/dictionary/data/DTOs/dictionary_docs_response_dto.dart';
import 'package:flora_care/features/dictionary/data/data_poviders/dictionary_data_provider.dart';
import 'package:pocketbase/pocketbase.dart';

class DictionaryDataProviderImpl implements DictionaryDataProvider {
  final PocketBase _pocketBase;

  DictionaryDataProviderImpl({required PocketBase pocketBase})
    : _pocketBase = pocketBase;

  @override
  Future<List<DictionaryDocsResponseDto>> getAllPlants({
    required int page,
    required int limit,
  }) async {
    try {
      final records = await _pocketBase.collection('plants').getList();
      final result =
          records.items.map((item) {
            final url = _pocketBase.files.getURL(
              item,
              item.getStringValue('image'),
            );
            final dto = DictionaryDocsResponseDto.fromJson(item.toJson());
            return dto.copyWith(image: url.toString());
          }).toList();
      return result;
    } catch (error) {
      throw Exception(error);
    }
  }

  
    @override
    Future<List<DictionaryDocsResponseDto>> searchPlants({
      required int page,
      required int limit,
      required String query,
    }) async {
      final records = await _pocketBase
          .collection('plants')
          .getList(
            page: page,
            perPage: limit,
            filter: 'common_name ~ "$query" || scientific_name ~ "$query"',
          );
      final result =
          records.items.map((item) {
            final url = _pocketBase.files.getURL(
              item,
              item.getStringValue('image'),
            );
            final dto = DictionaryDocsResponseDto.fromJson(item.toJson());
            return dto.copyWith(image: url.toString());
          }).toList();
      return result;
    }
  }

  // return result.items
  //     .map(
  //       (item) => DictionaryDocsResponseDto.fromJson(
  //         item.data,
  //       ),
  //     )
  //     .toList();

      // final List<DictionaryDocsResponseDto> result = [];
      // for (final record in records.items) {
      //   final url = _pocketBase.files.getURL(
      //     record,
      //     record.getStringValue('image'),
      //   );

      //   final dto = DictionaryDocsResponseDto.fromJson(record.toJson());
      //   result.add(dto.copyWith(image: url.toString()));
      // }
