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

 String get collectionId; String get collectionName; String get id; String get created; String get updated;@JsonKey(name: 'user_id') String get userId;@JsonKey(name: 'plant_id') String get plantId;@JsonKey(name: 'user_plant_name') String get userPlantName;@JsonKey(name: 'expand', fromJson: _plantDataFromJson, toJson: _plantDataToJson) DictionaryDocsResponseDto? get plantData;
/// Create a copy of UserPlantsDocsResponseDto
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$UserPlantsDocsResponseDtoCopyWith<UserPlantsDocsResponseDto> get copyWith => _$UserPlantsDocsResponseDtoCopyWithImpl<UserPlantsDocsResponseDto>(this as UserPlantsDocsResponseDto, _$identity);

  /// Serializes this UserPlantsDocsResponseDto to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is UserPlantsDocsResponseDto&&(identical(other.collectionId, collectionId) || other.collectionId == collectionId)&&(identical(other.collectionName, collectionName) || other.collectionName == collectionName)&&(identical(other.id, id) || other.id == id)&&(identical(other.created, created) || other.created == created)&&(identical(other.updated, updated) || other.updated == updated)&&(identical(other.userId, userId) || other.userId == userId)&&(identical(other.plantId, plantId) || other.plantId == plantId)&&(identical(other.userPlantName, userPlantName) || other.userPlantName == userPlantName)&&(identical(other.plantData, plantData) || other.plantData == plantData));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,collectionId,collectionName,id,created,updated,userId,plantId,userPlantName,plantData);

@override
String toString() {
  return 'UserPlantsDocsResponseDto(collectionId: $collectionId, collectionName: $collectionName, id: $id, created: $created, updated: $updated, userId: $userId, plantId: $plantId, userPlantName: $userPlantName, plantData: $plantData)';
}


}

/// @nodoc
abstract mixin class $UserPlantsDocsResponseDtoCopyWith<$Res>  {
  factory $UserPlantsDocsResponseDtoCopyWith(UserPlantsDocsResponseDto value, $Res Function(UserPlantsDocsResponseDto) _then) = _$UserPlantsDocsResponseDtoCopyWithImpl;
@useResult
$Res call({
 String collectionId, String collectionName, String id, String created, String updated,@JsonKey(name: 'user_id') String userId,@JsonKey(name: 'plant_id') String plantId,@JsonKey(name: 'user_plant_name') String userPlantName,@JsonKey(name: 'expand', fromJson: _plantDataFromJson, toJson: _plantDataToJson) DictionaryDocsResponseDto? plantData
});


$DictionaryDocsResponseDtoCopyWith<$Res>? get plantData;

}
/// @nodoc
class _$UserPlantsDocsResponseDtoCopyWithImpl<$Res>
    implements $UserPlantsDocsResponseDtoCopyWith<$Res> {
  _$UserPlantsDocsResponseDtoCopyWithImpl(this._self, this._then);

  final UserPlantsDocsResponseDto _self;
  final $Res Function(UserPlantsDocsResponseDto) _then;

/// Create a copy of UserPlantsDocsResponseDto
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? collectionId = null,Object? collectionName = null,Object? id = null,Object? created = null,Object? updated = null,Object? userId = null,Object? plantId = null,Object? userPlantName = null,Object? plantData = freezed,}) {
  return _then(_self.copyWith(
collectionId: null == collectionId ? _self.collectionId : collectionId // ignore: cast_nullable_to_non_nullable
as String,collectionName: null == collectionName ? _self.collectionName : collectionName // ignore: cast_nullable_to_non_nullable
as String,id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,created: null == created ? _self.created : created // ignore: cast_nullable_to_non_nullable
as String,updated: null == updated ? _self.updated : updated // ignore: cast_nullable_to_non_nullable
as String,userId: null == userId ? _self.userId : userId // ignore: cast_nullable_to_non_nullable
as String,plantId: null == plantId ? _self.plantId : plantId // ignore: cast_nullable_to_non_nullable
as String,userPlantName: null == userPlantName ? _self.userPlantName : userPlantName // ignore: cast_nullable_to_non_nullable
as String,plantData: freezed == plantData ? _self.plantData : plantData // ignore: cast_nullable_to_non_nullable
as DictionaryDocsResponseDto?,
  ));
}
/// Create a copy of UserPlantsDocsResponseDto
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$DictionaryDocsResponseDtoCopyWith<$Res>? get plantData {
    if (_self.plantData == null) {
    return null;
  }

  return $DictionaryDocsResponseDtoCopyWith<$Res>(_self.plantData!, (value) {
    return _then(_self.copyWith(plantData: value));
  });
}
}


/// @nodoc
@JsonSerializable()

class _UserPlantsDocsResponseDto implements UserPlantsDocsResponseDto {
  const _UserPlantsDocsResponseDto({required this.collectionId, required this.collectionName, required this.id, required this.created, required this.updated, @JsonKey(name: 'user_id') required this.userId, @JsonKey(name: 'plant_id') required this.plantId, @JsonKey(name: 'user_plant_name') required this.userPlantName, @JsonKey(name: 'expand', fromJson: _plantDataFromJson, toJson: _plantDataToJson) this.plantData});
  factory _UserPlantsDocsResponseDto.fromJson(Map<String, dynamic> json) => _$UserPlantsDocsResponseDtoFromJson(json);

@override final  String collectionId;
@override final  String collectionName;
@override final  String id;
@override final  String created;
@override final  String updated;
@override@JsonKey(name: 'user_id') final  String userId;
@override@JsonKey(name: 'plant_id') final  String plantId;
@override@JsonKey(name: 'user_plant_name') final  String userPlantName;
@override@JsonKey(name: 'expand', fromJson: _plantDataFromJson, toJson: _plantDataToJson) final  DictionaryDocsResponseDto? plantData;

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
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _UserPlantsDocsResponseDto&&(identical(other.collectionId, collectionId) || other.collectionId == collectionId)&&(identical(other.collectionName, collectionName) || other.collectionName == collectionName)&&(identical(other.id, id) || other.id == id)&&(identical(other.created, created) || other.created == created)&&(identical(other.updated, updated) || other.updated == updated)&&(identical(other.userId, userId) || other.userId == userId)&&(identical(other.plantId, plantId) || other.plantId == plantId)&&(identical(other.userPlantName, userPlantName) || other.userPlantName == userPlantName)&&(identical(other.plantData, plantData) || other.plantData == plantData));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,collectionId,collectionName,id,created,updated,userId,plantId,userPlantName,plantData);

@override
String toString() {
  return 'UserPlantsDocsResponseDto(collectionId: $collectionId, collectionName: $collectionName, id: $id, created: $created, updated: $updated, userId: $userId, plantId: $plantId, userPlantName: $userPlantName, plantData: $plantData)';
}


}

/// @nodoc
abstract mixin class _$UserPlantsDocsResponseDtoCopyWith<$Res> implements $UserPlantsDocsResponseDtoCopyWith<$Res> {
  factory _$UserPlantsDocsResponseDtoCopyWith(_UserPlantsDocsResponseDto value, $Res Function(_UserPlantsDocsResponseDto) _then) = __$UserPlantsDocsResponseDtoCopyWithImpl;
@override @useResult
$Res call({
 String collectionId, String collectionName, String id, String created, String updated,@JsonKey(name: 'user_id') String userId,@JsonKey(name: 'plant_id') String plantId,@JsonKey(name: 'user_plant_name') String userPlantName,@JsonKey(name: 'expand', fromJson: _plantDataFromJson, toJson: _plantDataToJson) DictionaryDocsResponseDto? plantData
});


@override $DictionaryDocsResponseDtoCopyWith<$Res>? get plantData;

}
/// @nodoc
class __$UserPlantsDocsResponseDtoCopyWithImpl<$Res>
    implements _$UserPlantsDocsResponseDtoCopyWith<$Res> {
  __$UserPlantsDocsResponseDtoCopyWithImpl(this._self, this._then);

  final _UserPlantsDocsResponseDto _self;
  final $Res Function(_UserPlantsDocsResponseDto) _then;

/// Create a copy of UserPlantsDocsResponseDto
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? collectionId = null,Object? collectionName = null,Object? id = null,Object? created = null,Object? updated = null,Object? userId = null,Object? plantId = null,Object? userPlantName = null,Object? plantData = freezed,}) {
  return _then(_UserPlantsDocsResponseDto(
collectionId: null == collectionId ? _self.collectionId : collectionId // ignore: cast_nullable_to_non_nullable
as String,collectionName: null == collectionName ? _self.collectionName : collectionName // ignore: cast_nullable_to_non_nullable
as String,id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,created: null == created ? _self.created : created // ignore: cast_nullable_to_non_nullable
as String,updated: null == updated ? _self.updated : updated // ignore: cast_nullable_to_non_nullable
as String,userId: null == userId ? _self.userId : userId // ignore: cast_nullable_to_non_nullable
as String,plantId: null == plantId ? _self.plantId : plantId // ignore: cast_nullable_to_non_nullable
as String,userPlantName: null == userPlantName ? _self.userPlantName : userPlantName // ignore: cast_nullable_to_non_nullable
as String,plantData: freezed == plantData ? _self.plantData : plantData // ignore: cast_nullable_to_non_nullable
as DictionaryDocsResponseDto?,
  ));
}

/// Create a copy of UserPlantsDocsResponseDto
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$DictionaryDocsResponseDtoCopyWith<$Res>? get plantData {
    if (_self.plantData == null) {
    return null;
  }

  return $DictionaryDocsResponseDtoCopyWith<$Res>(_self.plantData!, (value) {
    return _then(_self.copyWith(plantData: value));
  });
}
}

// dart format on
