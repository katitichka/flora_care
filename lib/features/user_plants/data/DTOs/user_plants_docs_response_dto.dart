import 'package:freezed_annotation/freezed_annotation.dart';

part 'user_plants_docs_response_dto.freezed.dart';
part 'user_plants_docs_response_dto.g.dart';

@freezed
sealed class UserPlantsDocsResponseDto with _$UserPlantsDocsResponseDto {

  const factory UserPlantsDocsResponseDto({
    required String id,
    required String created,
    required String updated,
    @JsonKey(name: 'user_id')
    required String userId,
    @JsonKey(name: 'plant_id')
    required String plantId,
    @JsonKey(name: 'user_plant_name')
    required String userPlantName,
  }) = _UserPlantsDocsResponseDto;

  factory UserPlantsDocsResponseDto.fromJson(Map<String, dynamic> json) =>
      _$UserPlantsDocsResponseDtoFromJson(json);
}