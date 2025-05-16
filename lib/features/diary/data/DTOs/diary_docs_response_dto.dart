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
      toJson: _userPlantDataToJson,
    )
    UserPlantsDocsResponseDto? userPlantData,
  }) = _DiaryDocsResponseDto;

  factory DiaryDocsResponseDto.fromJson(Map<String, dynamic> json) =>
      _$DiaryDocsResponseDtoFromJson(json);
}

UserPlantsDocsResponseDto? _userPlantDataFromJson(Map<String, dynamic> json) {
  if (json == null) {
    print("Received null plant data");
    return null;
  }
  if (!json.containsKey('user_plant_id')) {
    print("Expand data does not contain 'user_plant_id'");
    return null;
  }
  final userPlantDataJson = json['user_plant_id'] as Map<String, dynamic>;
  return UserPlantsDocsResponseDto.fromJson(userPlantDataJson);
}

Map<String, dynamic>? _userPlantDataToJson(UserPlantsDocsResponseDto? dto) {
  if (dto == null) return null;
  return dto.toJson();
}
