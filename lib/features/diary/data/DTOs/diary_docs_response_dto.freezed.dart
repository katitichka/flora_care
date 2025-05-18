// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'diary_docs_response_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$DiaryDocsResponseDto {

 String get collectionId; String get collectionName; String get id; String get created; String get updated;@JsonKey(name: 'event_date')@SafeDateTimeConverter() DateTime? get eventDate; String? get note;@JsonKey(name: 'user_plant_id') String get userPlantId;@JsonKey(name: 'expand', fromJson: _userPlantDataFromJson) UserPlantsDocsResponseDto? get userPlantData;
/// Create a copy of DiaryDocsResponseDto
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$DiaryDocsResponseDtoCopyWith<DiaryDocsResponseDto> get copyWith => _$DiaryDocsResponseDtoCopyWithImpl<DiaryDocsResponseDto>(this as DiaryDocsResponseDto, _$identity);

  /// Serializes this DiaryDocsResponseDto to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is DiaryDocsResponseDto&&(identical(other.collectionId, collectionId) || other.collectionId == collectionId)&&(identical(other.collectionName, collectionName) || other.collectionName == collectionName)&&(identical(other.id, id) || other.id == id)&&(identical(other.created, created) || other.created == created)&&(identical(other.updated, updated) || other.updated == updated)&&(identical(other.eventDate, eventDate) || other.eventDate == eventDate)&&(identical(other.note, note) || other.note == note)&&(identical(other.userPlantId, userPlantId) || other.userPlantId == userPlantId)&&(identical(other.userPlantData, userPlantData) || other.userPlantData == userPlantData));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,collectionId,collectionName,id,created,updated,eventDate,note,userPlantId,userPlantData);

@override
String toString() {
  return 'DiaryDocsResponseDto(collectionId: $collectionId, collectionName: $collectionName, id: $id, created: $created, updated: $updated, eventDate: $eventDate, note: $note, userPlantId: $userPlantId, userPlantData: $userPlantData)';
}


}

/// @nodoc
abstract mixin class $DiaryDocsResponseDtoCopyWith<$Res>  {
  factory $DiaryDocsResponseDtoCopyWith(DiaryDocsResponseDto value, $Res Function(DiaryDocsResponseDto) _then) = _$DiaryDocsResponseDtoCopyWithImpl;
@useResult
$Res call({
 String collectionId, String collectionName, String id, String created, String updated,@JsonKey(name: 'event_date')@SafeDateTimeConverter() DateTime? eventDate, String? note,@JsonKey(name: 'user_plant_id') String userPlantId,@JsonKey(name: 'expand', fromJson: _userPlantDataFromJson) UserPlantsDocsResponseDto? userPlantData
});


$UserPlantsDocsResponseDtoCopyWith<$Res>? get userPlantData;

}
/// @nodoc
class _$DiaryDocsResponseDtoCopyWithImpl<$Res>
    implements $DiaryDocsResponseDtoCopyWith<$Res> {
  _$DiaryDocsResponseDtoCopyWithImpl(this._self, this._then);

  final DiaryDocsResponseDto _self;
  final $Res Function(DiaryDocsResponseDto) _then;

/// Create a copy of DiaryDocsResponseDto
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? collectionId = null,Object? collectionName = null,Object? id = null,Object? created = null,Object? updated = null,Object? eventDate = freezed,Object? note = freezed,Object? userPlantId = null,Object? userPlantData = freezed,}) {
  return _then(_self.copyWith(
collectionId: null == collectionId ? _self.collectionId : collectionId // ignore: cast_nullable_to_non_nullable
as String,collectionName: null == collectionName ? _self.collectionName : collectionName // ignore: cast_nullable_to_non_nullable
as String,id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,created: null == created ? _self.created : created // ignore: cast_nullable_to_non_nullable
as String,updated: null == updated ? _self.updated : updated // ignore: cast_nullable_to_non_nullable
as String,eventDate: freezed == eventDate ? _self.eventDate : eventDate // ignore: cast_nullable_to_non_nullable
as DateTime?,note: freezed == note ? _self.note : note // ignore: cast_nullable_to_non_nullable
as String?,userPlantId: null == userPlantId ? _self.userPlantId : userPlantId // ignore: cast_nullable_to_non_nullable
as String,userPlantData: freezed == userPlantData ? _self.userPlantData : userPlantData // ignore: cast_nullable_to_non_nullable
as UserPlantsDocsResponseDto?,
  ));
}
/// Create a copy of DiaryDocsResponseDto
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$UserPlantsDocsResponseDtoCopyWith<$Res>? get userPlantData {
    if (_self.userPlantData == null) {
    return null;
  }

  return $UserPlantsDocsResponseDtoCopyWith<$Res>(_self.userPlantData!, (value) {
    return _then(_self.copyWith(userPlantData: value));
  });
}
}


/// @nodoc
@JsonSerializable()

class _DiaryDocsResponseDto extends DiaryDocsResponseDto {
  const _DiaryDocsResponseDto({required this.collectionId, required this.collectionName, required this.id, required this.created, required this.updated, @JsonKey(name: 'event_date')@SafeDateTimeConverter() this.eventDate, this.note, @JsonKey(name: 'user_plant_id') required this.userPlantId, @JsonKey(name: 'expand', fromJson: _userPlantDataFromJson) this.userPlantData}): super._();
  factory _DiaryDocsResponseDto.fromJson(Map<String, dynamic> json) => _$DiaryDocsResponseDtoFromJson(json);

@override final  String collectionId;
@override final  String collectionName;
@override final  String id;
@override final  String created;
@override final  String updated;
@override@JsonKey(name: 'event_date')@SafeDateTimeConverter() final  DateTime? eventDate;
@override final  String? note;
@override@JsonKey(name: 'user_plant_id') final  String userPlantId;
@override@JsonKey(name: 'expand', fromJson: _userPlantDataFromJson) final  UserPlantsDocsResponseDto? userPlantData;

/// Create a copy of DiaryDocsResponseDto
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$DiaryDocsResponseDtoCopyWith<_DiaryDocsResponseDto> get copyWith => __$DiaryDocsResponseDtoCopyWithImpl<_DiaryDocsResponseDto>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$DiaryDocsResponseDtoToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _DiaryDocsResponseDto&&(identical(other.collectionId, collectionId) || other.collectionId == collectionId)&&(identical(other.collectionName, collectionName) || other.collectionName == collectionName)&&(identical(other.id, id) || other.id == id)&&(identical(other.created, created) || other.created == created)&&(identical(other.updated, updated) || other.updated == updated)&&(identical(other.eventDate, eventDate) || other.eventDate == eventDate)&&(identical(other.note, note) || other.note == note)&&(identical(other.userPlantId, userPlantId) || other.userPlantId == userPlantId)&&(identical(other.userPlantData, userPlantData) || other.userPlantData == userPlantData));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,collectionId,collectionName,id,created,updated,eventDate,note,userPlantId,userPlantData);

@override
String toString() {
  return 'DiaryDocsResponseDto(collectionId: $collectionId, collectionName: $collectionName, id: $id, created: $created, updated: $updated, eventDate: $eventDate, note: $note, userPlantId: $userPlantId, userPlantData: $userPlantData)';
}


}

/// @nodoc
abstract mixin class _$DiaryDocsResponseDtoCopyWith<$Res> implements $DiaryDocsResponseDtoCopyWith<$Res> {
  factory _$DiaryDocsResponseDtoCopyWith(_DiaryDocsResponseDto value, $Res Function(_DiaryDocsResponseDto) _then) = __$DiaryDocsResponseDtoCopyWithImpl;
@override @useResult
$Res call({
 String collectionId, String collectionName, String id, String created, String updated,@JsonKey(name: 'event_date')@SafeDateTimeConverter() DateTime? eventDate, String? note,@JsonKey(name: 'user_plant_id') String userPlantId,@JsonKey(name: 'expand', fromJson: _userPlantDataFromJson) UserPlantsDocsResponseDto? userPlantData
});


@override $UserPlantsDocsResponseDtoCopyWith<$Res>? get userPlantData;

}
/// @nodoc
class __$DiaryDocsResponseDtoCopyWithImpl<$Res>
    implements _$DiaryDocsResponseDtoCopyWith<$Res> {
  __$DiaryDocsResponseDtoCopyWithImpl(this._self, this._then);

  final _DiaryDocsResponseDto _self;
  final $Res Function(_DiaryDocsResponseDto) _then;

/// Create a copy of DiaryDocsResponseDto
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? collectionId = null,Object? collectionName = null,Object? id = null,Object? created = null,Object? updated = null,Object? eventDate = freezed,Object? note = freezed,Object? userPlantId = null,Object? userPlantData = freezed,}) {
  return _then(_DiaryDocsResponseDto(
collectionId: null == collectionId ? _self.collectionId : collectionId // ignore: cast_nullable_to_non_nullable
as String,collectionName: null == collectionName ? _self.collectionName : collectionName // ignore: cast_nullable_to_non_nullable
as String,id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,created: null == created ? _self.created : created // ignore: cast_nullable_to_non_nullable
as String,updated: null == updated ? _self.updated : updated // ignore: cast_nullable_to_non_nullable
as String,eventDate: freezed == eventDate ? _self.eventDate : eventDate // ignore: cast_nullable_to_non_nullable
as DateTime?,note: freezed == note ? _self.note : note // ignore: cast_nullable_to_non_nullable
as String?,userPlantId: null == userPlantId ? _self.userPlantId : userPlantId // ignore: cast_nullable_to_non_nullable
as String,userPlantData: freezed == userPlantData ? _self.userPlantData : userPlantData // ignore: cast_nullable_to_non_nullable
as UserPlantsDocsResponseDto?,
  ));
}

/// Create a copy of DiaryDocsResponseDto
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$UserPlantsDocsResponseDtoCopyWith<$Res>? get userPlantData {
    if (_self.userPlantData == null) {
    return null;
  }

  return $UserPlantsDocsResponseDtoCopyWith<$Res>(_self.userPlantData!, (value) {
    return _then(_self.copyWith(userPlantData: value));
  });
}
}

// dart format on
