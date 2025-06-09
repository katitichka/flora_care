import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flora_care/features/dictionary/data/DTOs/dictionary_docs_response_dto.dart';

part 'user_plants_docs_response_dto.freezed.dart';
part 'user_plants_docs_response_dto.g.dart';

@freezed
sealed class UserPlantsDocsResponseDto with _$UserPlantsDocsResponseDto {

  const factory UserPlantsDocsResponseDto({
    required String collectionId,
    required String collectionName,
    required String id,
    required String created,
    required String updated,
    @JsonKey(name: 'user_id')
    required String userId,
    @JsonKey(name: 'plant_id')
    required String plantId,
    @JsonKey(name: 'user_plant_name')
    required String userPlantName,
    @JsonKey(
      name: 'expand', 
      fromJson: _plantDataFromJson,
      toJson: _plantDataToJson,
    )
    DictionaryDocsResponseDto? plantData,
  }) = _UserPlantsDocsResponseDto;

  factory UserPlantsDocsResponseDto.fromJson(Map<String, dynamic> json) =>
      _$UserPlantsDocsResponseDtoFromJson(json);
      
}

DictionaryDocsResponseDto? _plantDataFromJson(Map<String, dynamic>? json) {
  if (json == null) {
    return null;
  }
   if (!json.containsKey('plant_id')) {
    return null;
  }
  final plantDataJson = json['plant_id'] as Map<String, dynamic>;
  return DictionaryDocsResponseDto.fromJson(plantDataJson);
}

Map<String, dynamic>? _plantDataToJson(DictionaryDocsResponseDto? dto) {
  if (dto == null) return null;
  return dto.toJson();
}