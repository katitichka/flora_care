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
    @JsonKey(name: 'event_date') required DateTime eventDate,
    String? notes,
    @JsonKey(name: 'user_plant_id') required String userPlantId,
    @JsonKey(name: 'expand') Map<String, dynamic>? expand,
  }) = _DiaryDocsResponseDto;

  factory DiaryDocsResponseDto.fromJson(Map<String, dynamic> json) =>
      _$DiaryDocsResponseDtoFromJson(json);
}

extension DiaryDocsResponseDtoX on DiaryDocsResponseDto {
  UserPlantsDocsResponseDto? get userPlantData {
    final raw = expand?['user_plant_id'];
    if (raw is Map<String, dynamic>) {
      return UserPlantsDocsResponseDto.fromJson(raw);
    }
    return null; 
  }
}