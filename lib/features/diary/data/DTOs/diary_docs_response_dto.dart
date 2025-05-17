import 'package:flora_care/features/user_plants/data/DTOs/user_plants_docs_response_dto.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'diary_docs_response_dto.freezed.dart';
part 'diary_docs_response_dto.g.dart';

@freezed
sealed class DiaryDocsResponseDto with _$DiaryDocsResponseDto {
  const factory DiaryDocsResponseDto({
    required String collectionId,
    required String collectionName,
    required String id,
    required String created,
    required String updated,

    @JsonKey(name: 'event_date') DateTime? eventDate,
    String? note,

    @JsonKey(name: 'user_plant_id') required String userPlantId,

    @JsonKey(
      name: 'expand',
      fromJson: _userPlantDataFromJson,
    )
    UserPlantsDocsResponseDto? userPlantData,
  }) = _DiaryDocsResponseDto;

  factory DiaryDocsResponseDto.fromJson(Map<String, dynamic> json) =>
      _$DiaryDocsResponseDtoFromJson(json);
}

UserPlantsDocsResponseDto? _userPlantDataFromJson(Map<String, dynamic>? expand) {
  if (expand == null) return null;
  final raw = expand['user_plant_id'];
  return raw is Map<String, dynamic>
      ? UserPlantsDocsResponseDto.fromJson(raw)
      : null;
}
