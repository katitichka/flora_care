import 'package:flora_care/features/user_plants/data/DTOs/user_plants_docs_response_dto.dart';
import 'package:flora_care/utils/json_datetime_converter.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:intl/intl.dart';

part 'diary_docs_response_dto.freezed.dart';
part 'diary_docs_response_dto.g.dart';

@freezed
sealed class DiaryDocsResponseDto with _$DiaryDocsResponseDto {
  const DiaryDocsResponseDto._();
  
  const factory DiaryDocsResponseDto({
    required String collectionId,
    required String collectionName,
    required String id,
    required String created,
    required String updated,

    @JsonKey(name: 'event_date')
    @SafeDateTimeConverter()
    DateTime? eventDate,

    String? note,

    @JsonKey(name: 'user_plant_id') required String userPlantId,

    @JsonKey(name: 'expand', fromJson: _userPlantDataFromJson)
    UserPlantsDocsResponseDto? userPlantData,
  }) = _DiaryDocsResponseDto;

  factory DiaryDocsResponseDto.fromJson(Map<String, dynamic> json) =>
      _$DiaryDocsResponseDtoFromJson(json);
}

extension DiaryDocsResponseDtoExt on DiaryDocsResponseDto {
  String get formattedEventDate {
    if (eventDate == null) return '';
    return DateFormat('dd-MM-yyyy в HH:mm').format(eventDate!);
  }
}

UserPlantsDocsResponseDto? _userPlantDataFromJson(
  Map<String, dynamic>? expand,
) {
  if (expand == null) return null;
  final raw = expand['user_plant_id'];
  print('From Json raw: $raw');
  return raw is Map<String, dynamic>
      ? UserPlantsDocsResponseDto.fromJson(raw)
      : null;
}