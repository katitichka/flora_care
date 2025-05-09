import 'package:freezed_annotation/freezed_annotation.dart';

part 'user_plants_docs_response_entity.freezed.dart';

@freezed
sealed class UserPlantsDocsResponseEntity with _$UserPlantsDocsResponseEntity {
  const factory UserPlantsDocsResponseEntity({
    required String id,
    required DateTime addedPlant,
    required String userId,
    required String plantId,
  }) = _UserPlantsDocsResponseEntity;
}
