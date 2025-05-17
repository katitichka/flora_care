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

  factory DiaryDocsResponseDto.fromJson(Map<String, dynamic> json) {
    // Создаем копию, чтобы не модифицировать исходный json
    final jsonCopy = Map<String, dynamic>.from(json);
    
    // Обрабатываем expand только если он есть
    if (json['expand'] is Map<String, dynamic>) {
      final expand = json['expand'] as Map<String, dynamic>;
      if (expand['user_plant_id'] is Map<String, dynamic>) {
        jsonCopy['userPlantData'] = _userPlantDataFromJson(expand);
      }
    }

    try {
      return _$DiaryDocsResponseDtoFromJson(jsonCopy);
    } catch (e, stack) {
      print('Error parsing Diary entry ID: ${json['id']}');
      print('Error: $e');
      print('Stack trace: $stack');
      print('Problematic JSON: $json');
      rethrow;
    }
  }
}

UserPlantsDocsResponseDto? _userPlantDataFromJson(Map<String, dynamic>? json) {
  if (json == null) {
    print("Expand data is null");
    return null;
  }

  try {
    final userPlantData = json['user_plant_id'];
    
    if (userPlantData is! Map<String, dynamic>) {
      print("user_plant_id is not a Map: $userPlantData");
      return null;
    }
    
    return UserPlantsDocsResponseDto.fromJson(userPlantData);
  } catch (e, stack) {
    print('Error parsing user plant data: $e');
    print('Stack trace: $stack');
    return null;
  }
}

Map<String, dynamic>? _userPlantDataToJson(UserPlantsDocsResponseDto? dto) {
  if (dto == null) return null;
  return {'user_plant_id': dto.toJson()};
}