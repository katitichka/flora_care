import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'diary_docs_response_entity.freezed.dart';

@freezed
sealed class DiaryDocsResponseEntity with _$DiaryDocsResponseEntity {
  const factory DiaryDocsResponseEntity({
    required String id,
    required String? notes,
    required DateTime eventDate,
    required String userPlantId,
  }) = _DiaryDocsResponseEntity;
}
