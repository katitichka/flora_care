import 'package:freezed_annotation/freezed_annotation.dart';

part 'user_plants_docs_response_dto.freezed.dart';
part 'user_plants_docs_response_dto.g.dart';

@freezed
sealed class UserPlantsDocsResponseDto with _$UserPlantsDocsResponseDto {

  const factory UserPlantsDocsResponseDto({
    required String id,
    required String created,
    required String updated,
    @JsonKey(name: 'added_plant')
    required DateTime addedPlant,
    @JsonKey(name: 'user_id')
    required String userId,
    @JsonKey(name: 'plant_id')
    required String plantId,
  }) = _UserPlantsDocsResponseDto;

  factory UserPlantsDocsResponseDto.fromJson(Map<String, dynamic> json) =>
      _$UserPlantsDocsResponseDtoFromJson(json);
}