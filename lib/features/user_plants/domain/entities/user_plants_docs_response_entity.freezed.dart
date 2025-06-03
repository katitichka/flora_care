// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'user_plants_docs_response_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$UserPlantsDocsResponseEntity {

 String get id; String get userId; String get plantId; String get userPlantName; DictionaryDocsResponseEntity? get plantData; DateTime? get lastWateringDate;
/// Create a copy of UserPlantsDocsResponseEntity
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$UserPlantsDocsResponseEntityCopyWith<UserPlantsDocsResponseEntity> get copyWith => _$UserPlantsDocsResponseEntityCopyWithImpl<UserPlantsDocsResponseEntity>(this as UserPlantsDocsResponseEntity, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is UserPlantsDocsResponseEntity&&(identical(other.id, id) || other.id == id)&&(identical(other.userId, userId) || other.userId == userId)&&(identical(other.plantId, plantId) || other.plantId == plantId)&&(identical(other.userPlantName, userPlantName) || other.userPlantName == userPlantName)&&(identical(other.plantData, plantData) || other.plantData == plantData)&&(identical(other.lastWateringDate, lastWateringDate) || other.lastWateringDate == lastWateringDate));
}


@override
int get hashCode => Object.hash(runtimeType,id,userId,plantId,userPlantName,plantData,lastWateringDate);

@override
String toString() {
  return 'UserPlantsDocsResponseEntity(id: $id, userId: $userId, plantId: $plantId, userPlantName: $userPlantName, plantData: $plantData, lastWateringDate: $lastWateringDate)';
}


}

/// @nodoc
abstract mixin class $UserPlantsDocsResponseEntityCopyWith<$Res>  {
  factory $UserPlantsDocsResponseEntityCopyWith(UserPlantsDocsResponseEntity value, $Res Function(UserPlantsDocsResponseEntity) _then) = _$UserPlantsDocsResponseEntityCopyWithImpl;
@useResult
$Res call({
 String id, String userId, String plantId, String userPlantName, DictionaryDocsResponseEntity? plantData, DateTime? lastWateringDate
});


$DictionaryDocsResponseEntityCopyWith<$Res>? get plantData;

}
/// @nodoc
class _$UserPlantsDocsResponseEntityCopyWithImpl<$Res>
    implements $UserPlantsDocsResponseEntityCopyWith<$Res> {
  _$UserPlantsDocsResponseEntityCopyWithImpl(this._self, this._then);

  final UserPlantsDocsResponseEntity _self;
  final $Res Function(UserPlantsDocsResponseEntity) _then;

/// Create a copy of UserPlantsDocsResponseEntity
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? userId = null,Object? plantId = null,Object? userPlantName = null,Object? plantData = freezed,Object? lastWateringDate = freezed,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,userId: null == userId ? _self.userId : userId // ignore: cast_nullable_to_non_nullable
as String,plantId: null == plantId ? _self.plantId : plantId // ignore: cast_nullable_to_non_nullable
as String,userPlantName: null == userPlantName ? _self.userPlantName : userPlantName // ignore: cast_nullable_to_non_nullable
as String,plantData: freezed == plantData ? _self.plantData : plantData // ignore: cast_nullable_to_non_nullable
as DictionaryDocsResponseEntity?,lastWateringDate: freezed == lastWateringDate ? _self.lastWateringDate : lastWateringDate // ignore: cast_nullable_to_non_nullable
as DateTime?,
  ));
}
/// Create a copy of UserPlantsDocsResponseEntity
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$DictionaryDocsResponseEntityCopyWith<$Res>? get plantData {
    if (_self.plantData == null) {
    return null;
  }

  return $DictionaryDocsResponseEntityCopyWith<$Res>(_self.plantData!, (value) {
    return _then(_self.copyWith(plantData: value));
  });
}
}


/// @nodoc


class _UserPlantsDocsResponseEntity implements UserPlantsDocsResponseEntity {
  const _UserPlantsDocsResponseEntity({required this.id, required this.userId, required this.plantId, required this.userPlantName, this.plantData, this.lastWateringDate});
  

@override final  String id;
@override final  String userId;
@override final  String plantId;
@override final  String userPlantName;
@override final  DictionaryDocsResponseEntity? plantData;
@override final  DateTime? lastWateringDate;

/// Create a copy of UserPlantsDocsResponseEntity
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$UserPlantsDocsResponseEntityCopyWith<_UserPlantsDocsResponseEntity> get copyWith => __$UserPlantsDocsResponseEntityCopyWithImpl<_UserPlantsDocsResponseEntity>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _UserPlantsDocsResponseEntity&&(identical(other.id, id) || other.id == id)&&(identical(other.userId, userId) || other.userId == userId)&&(identical(other.plantId, plantId) || other.plantId == plantId)&&(identical(other.userPlantName, userPlantName) || other.userPlantName == userPlantName)&&(identical(other.plantData, plantData) || other.plantData == plantData)&&(identical(other.lastWateringDate, lastWateringDate) || other.lastWateringDate == lastWateringDate));
}


@override
int get hashCode => Object.hash(runtimeType,id,userId,plantId,userPlantName,plantData,lastWateringDate);

@override
String toString() {
  return 'UserPlantsDocsResponseEntity(id: $id, userId: $userId, plantId: $plantId, userPlantName: $userPlantName, plantData: $plantData, lastWateringDate: $lastWateringDate)';
}


}

/// @nodoc
abstract mixin class _$UserPlantsDocsResponseEntityCopyWith<$Res> implements $UserPlantsDocsResponseEntityCopyWith<$Res> {
  factory _$UserPlantsDocsResponseEntityCopyWith(_UserPlantsDocsResponseEntity value, $Res Function(_UserPlantsDocsResponseEntity) _then) = __$UserPlantsDocsResponseEntityCopyWithImpl;
@override @useResult
$Res call({
 String id, String userId, String plantId, String userPlantName, DictionaryDocsResponseEntity? plantData, DateTime? lastWateringDate
});


@override $DictionaryDocsResponseEntityCopyWith<$Res>? get plantData;

}
/// @nodoc
class __$UserPlantsDocsResponseEntityCopyWithImpl<$Res>
    implements _$UserPlantsDocsResponseEntityCopyWith<$Res> {
  __$UserPlantsDocsResponseEntityCopyWithImpl(this._self, this._then);

  final _UserPlantsDocsResponseEntity _self;
  final $Res Function(_UserPlantsDocsResponseEntity) _then;

/// Create a copy of UserPlantsDocsResponseEntity
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? userId = null,Object? plantId = null,Object? userPlantName = null,Object? plantData = freezed,Object? lastWateringDate = freezed,}) {
  return _then(_UserPlantsDocsResponseEntity(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,userId: null == userId ? _self.userId : userId // ignore: cast_nullable_to_non_nullable
as String,plantId: null == plantId ? _self.plantId : plantId // ignore: cast_nullable_to_non_nullable
as String,userPlantName: null == userPlantName ? _self.userPlantName : userPlantName // ignore: cast_nullable_to_non_nullable
as String,plantData: freezed == plantData ? _self.plantData : plantData // ignore: cast_nullable_to_non_nullable
as DictionaryDocsResponseEntity?,lastWateringDate: freezed == lastWateringDate ? _self.lastWateringDate : lastWateringDate // ignore: cast_nullable_to_non_nullable
as DateTime?,
  ));
}

/// Create a copy of UserPlantsDocsResponseEntity
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$DictionaryDocsResponseEntityCopyWith<$Res>? get plantData {
    if (_self.plantData == null) {
    return null;
  }

  return $DictionaryDocsResponseEntityCopyWith<$Res>(_self.plantData!, (value) {
    return _then(_self.copyWith(plantData: value));
  });
}
}

// dart format on
