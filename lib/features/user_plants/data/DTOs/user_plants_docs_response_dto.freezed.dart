// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'user_plants_docs_response_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$UserPlantsDocsResponseDto {

 String get id; String get created; String get updated;@JsonKey(name: 'added_plant') DateTime get addedPlant;@JsonKey(name: 'user_id') String get userId;@JsonKey(name: 'plant_id') String get plantId;
/// Create a copy of UserPlantsDocsResponseDto
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$UserPlantsDocsResponseDtoCopyWith<UserPlantsDocsResponseDto> get copyWith => _$UserPlantsDocsResponseDtoCopyWithImpl<UserPlantsDocsResponseDto>(this as UserPlantsDocsResponseDto, _$identity);

  /// Serializes this UserPlantsDocsResponseDto to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is UserPlantsDocsResponseDto&&(identical(other.id, id) || other.id == id)&&(identical(other.created, created) || other.created == created)&&(identical(other.updated, updated) || other.updated == updated)&&(identical(other.addedPlant, addedPlant) || other.addedPlant == addedPlant)&&(identical(other.userId, userId) || other.userId == userId)&&(identical(other.plantId, plantId) || other.plantId == plantId));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,created,updated,addedPlant,userId,plantId);

@override
String toString() {
  return 'UserPlantsDocsResponseDto(id: $id, created: $created, updated: $updated, addedPlant: $addedPlant, userId: $userId, plantId: $plantId)';
}


}

/// @nodoc
abstract mixin class $UserPlantsDocsResponseDtoCopyWith<$Res>  {
  factory $UserPlantsDocsResponseDtoCopyWith(UserPlantsDocsResponseDto value, $Res Function(UserPlantsDocsResponseDto) _then) = _$UserPlantsDocsResponseDtoCopyWithImpl;
@useResult
$Res call({
 String id, String created, String updated,@JsonKey(name: 'added_plant') DateTime addedPlant,@JsonKey(name: 'user_id') String userId,@JsonKey(name: 'plant_id') String plantId
});




}
/// @nodoc
class _$UserPlantsDocsResponseDtoCopyWithImpl<$Res>
    implements $UserPlantsDocsResponseDtoCopyWith<$Res> {
  _$UserPlantsDocsResponseDtoCopyWithImpl(this._self, this._then);

  final UserPlantsDocsResponseDto _self;
  final $Res Function(UserPlantsDocsResponseDto) _then;

/// Create a copy of UserPlantsDocsResponseDto
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? created = null,Object? updated = null,Object? addedPlant = null,Object? userId = null,Object? plantId = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,created: null == created ? _self.created : created // ignore: cast_nullable_to_non_nullable
as String,updated: null == updated ? _self.updated : updated // ignore: cast_nullable_to_non_nullable
as String,addedPlant: null == addedPlant ? _self.addedPlant : addedPlant // ignore: cast_nullable_to_non_nullable
as DateTime,userId: null == userId ? _self.userId : userId // ignore: cast_nullable_to_non_nullable
as String,plantId: null == plantId ? _self.plantId : plantId // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// @nodoc
@JsonSerializable()

class _UserPlantsDocsResponseDto implements UserPlantsDocsResponseDto {
  const _UserPlantsDocsResponseDto({required this.id, required this.created, required this.updated, @JsonKey(name: 'added_plant') required this.addedPlant, @JsonKey(name: 'user_id') required this.userId, @JsonKey(name: 'plant_id') required this.plantId});
  factory _UserPlantsDocsResponseDto.fromJson(Map<String, dynamic> json) => _$UserPlantsDocsResponseDtoFromJson(json);

@override final  String id;
@override final  String created;
@override final  String updated;
@override@JsonKey(name: 'added_plant') final  DateTime addedPlant;
@override@JsonKey(name: 'user_id') final  String userId;
@override@JsonKey(name: 'plant_id') final  String plantId;

/// Create a copy of UserPlantsDocsResponseDto
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$UserPlantsDocsResponseDtoCopyWith<_UserPlantsDocsResponseDto> get copyWith => __$UserPlantsDocsResponseDtoCopyWithImpl<_UserPlantsDocsResponseDto>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$UserPlantsDocsResponseDtoToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _UserPlantsDocsResponseDto&&(identical(other.id, id) || other.id == id)&&(identical(other.created, created) || other.created == created)&&(identical(other.updated, updated) || other.updated == updated)&&(identical(other.addedPlant, addedPlant) || other.addedPlant == addedPlant)&&(identical(other.userId, userId) || other.userId == userId)&&(identical(other.plantId, plantId) || other.plantId == plantId));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,created,updated,addedPlant,userId,plantId);

@override
String toString() {
  return 'UserPlantsDocsResponseDto(id: $id, created: $created, updated: $updated, addedPlant: $addedPlant, userId: $userId, plantId: $plantId)';
}


}

/// @nodoc
abstract mixin class _$UserPlantsDocsResponseDtoCopyWith<$Res> implements $UserPlantsDocsResponseDtoCopyWith<$Res> {
  factory _$UserPlantsDocsResponseDtoCopyWith(_UserPlantsDocsResponseDto value, $Res Function(_UserPlantsDocsResponseDto) _then) = __$UserPlantsDocsResponseDtoCopyWithImpl;
@override @useResult
$Res call({
 String id, String created, String updated,@JsonKey(name: 'added_plant') DateTime addedPlant,@JsonKey(name: 'user_id') String userId,@JsonKey(name: 'plant_id') String plantId
});




}
/// @nodoc
class __$UserPlantsDocsResponseDtoCopyWithImpl<$Res>
    implements _$UserPlantsDocsResponseDtoCopyWith<$Res> {
  __$UserPlantsDocsResponseDtoCopyWithImpl(this._self, this._then);

  final _UserPlantsDocsResponseDto _self;
  final $Res Function(_UserPlantsDocsResponseDto) _then;

/// Create a copy of UserPlantsDocsResponseDto
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? created = null,Object? updated = null,Object? addedPlant = null,Object? userId = null,Object? plantId = null,}) {
  return _then(_UserPlantsDocsResponseDto(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,created: null == created ? _self.created : created // ignore: cast_nullable_to_non_nullable
as String,updated: null == updated ? _self.updated : updated // ignore: cast_nullable_to_non_nullable
as String,addedPlant: null == addedPlant ? _self.addedPlant : addedPlant // ignore: cast_nullable_to_non_nullable
as DateTime,userId: null == userId ? _self.userId : userId // ignore: cast_nullable_to_non_nullable
as String,plantId: null == plantId ? _self.plantId : plantId // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
