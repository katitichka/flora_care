import 'package:flora_care/features/dictionary/data/DTOs/dictionary_docs_response_dto.dart';
import 'package:flora_care/features/dictionary/data/mappers/dictionary_docs_response_mapper.dart';
import 'package:flora_care/features/dictionary/domain/entities/dictionary_docs_response_entity.dart';
import 'package:flora_care/features/dictionary/domain/repositories/dictionary_repository.dart';
import 'package:flutter/material.dart';
import 'package:pocketbase/pocketbase.dart';

class DictionaryRepositoryImpl implements DictionaryRepository {
  final PocketBase _pocketBase;

  DictionaryRepositoryImpl(this._pocketBase);

  @override
  Future<List<DictionaryDocsResponseEntity>> getAllPlants({
    required int page,
    required int limit,
  }) async {
    final result = await _pocketBase.collection('plants').getList(
      page: page,
      perPage: limit,
    );
    return _mapItems(result.items);
  }

  @override
  Future<DictionaryDocsResponseEntity> getPlantById(String id) async {
    try {
      final result = await _pocketBase.collection('plants').getOne(id);
      return DictionaryDocsResponseMapper.fromDto(
        dto: DictionaryDocsResponseDto.fromJson(result.data),
      );
    } catch (e) {
      debugPrint('Error in getPlantById: $e');
      rethrow;
    }
  }

  @override
  Future<List<DictionaryDocsResponseEntity>> searchPlants({
    required int page,
    required int limit,
    required String query,
  }) async {
    try {
      final result = await _pocketBase.collection('plants').getList(
        page: page,
        perPage: limit,
        filter: 'common_name ~ "$query" || scientific_name ~ "$query"',
      );
      debugPrint('Response data: ${result.items}');
      return _mapItems(result.items);
    } catch (e) {
      debugPrint('Error in searchPlants: $e');
      rethrow;
    }
  }


    List<DictionaryDocsResponseEntity> _mapItems(List<RecordModel> items) {
    return items.map((e) {
      try {
        return DictionaryDocsResponseMapper.fromDto(
          dto: DictionaryDocsResponseDto.fromJson(e.data),
        );
      } catch (e) {
        throw FormatException('Failed to map plant data: ${e.toString()}');
      }
    }).toList();
  }
}
