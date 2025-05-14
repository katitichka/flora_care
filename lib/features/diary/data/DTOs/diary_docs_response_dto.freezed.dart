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

 String get collectionId; String get collectionName; String get id; String get created; String get updated;@JsonKey(name: 'event_date') DateTime get eventDate; String? get notes;@JsonKey(name: 'user_plant_id') String get userPlantId;@JsonKey(name: 'expand') Map<String, dynamic>? get expand;
/// Create a copy of DiaryDocsResponseDto
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$DiaryDocsResponseDtoCopyWith<DiaryDocsResponseDto> get copyWith => _$DiaryDocsResponseDtoCopyWithImpl<DiaryDocsResponseDto>(this as DiaryDocsResponseDto, _$identity);

  /// Serializes this DiaryDocsResponseDto to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is DiaryDocsResponseDto&&(identical(other.collectionId, collectionId) || other.collectionId == collectionId)&&(identical(other.collectionName, collectionName) || other.collectionName == collectionName)&&(identical(other.id, id) || other.id == id)&&(identical(other.created, created) || other.created == created)&&(identical(other.updated, updated) || other.updated == updated)&&(identical(other.eventDate, eventDate) || other.eventDate == eventDate)&&(identical(other.notes, notes) || other.notes == notes)&&(identical(other.userPlantId, userPlantId) || other.userPlantId == userPlantId)&&const DeepCollectionEquality().equals(other.expand, expand));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,collectionId,collectionName,id,created,updated,eventDate,notes,userPlantId,const DeepCollectionEquality().hash(expand));

@override
String toString() {
  return 'DiaryDocsResponseDto(collectionId: $collectionId, collectionName: $collectionName, id: $id, created: $created, updated: $updated, eventDate: $eventDate, notes: $notes, userPlantId: $userPlantId, expand: $expand)';
}


}

/// @nodoc
abstract mixin class $DiaryDocsResponseDtoCopyWith<$Res>  {
  factory $DiaryDocsResponseDtoCopyWith(DiaryDocsResponseDto value, $Res Function(DiaryDocsResponseDto) _then) = _$DiaryDocsResponseDtoCopyWithImpl;
@useResult
$Res call({
 String collectionId, String collectionName, String id, String created, String updated,@JsonKey(name: 'event_date') DateTime eventDate, String? notes,@JsonKey(name: 'user_plant_id') String userPlantId,@JsonKey(name: 'expand') Map<String, dynamic>? expand
});




}
/// @nodoc
class _$DiaryDocsResponseDtoCopyWithImpl<$Res>
    implements $DiaryDocsResponseDtoCopyWith<$Res> {
  _$DiaryDocsResponseDtoCopyWithImpl(this._self, this._then);

  final DiaryDocsResponseDto _self;
  final $Res Function(DiaryDocsResponseDto) _then;

/// Create a copy of DiaryDocsResponseDto
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? collectionId = null,Object? collectionName = null,Object? id = null,Object? created = null,Object? updated = null,Object? eventDate = null,Object? notes = freezed,Object? userPlantId = null,Object? expand = freezed,}) {
  return _then(_self.copyWith(
collectionId: null == collectionId ? _self.collectionId : collectionId // ignore: cast_nullable_to_non_nullable
as String,collectionName: null == collectionName ? _self.collectionName : collectionName // ignore: cast_nullable_to_non_nullable
as String,id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,created: null == created ? _self.created : created // ignore: cast_nullable_to_non_nullable
as String,updated: null == updated ? _self.updated : updated // ignore: cast_nullable_to_non_nullable
as String,eventDate: null == eventDate ? _self.eventDate : eventDate // ignore: cast_nullable_to_non_nullable
as DateTime,notes: freezed == notes ? _self.notes : notes // ignore: cast_nullable_to_non_nullable
as String?,userPlantId: null == userPlantId ? _self.userPlantId : userPlantId // ignore: cast_nullable_to_non_nullable
as String,expand: freezed == expand ? _self.expand : expand // ignore: cast_nullable_to_non_nullable
as Map<String, dynamic>?,
  ));
}

}


/// @nodoc
@JsonSerializable()

class _DiaryDocsResponseDto implements DiaryDocsResponseDto {
  const _DiaryDocsResponseDto({required this.collectionId, required this.collectionName, required this.id, required this.created, required this.updated, @JsonKey(name: 'event_date') required this.eventDate, this.notes, @JsonKey(name: 'user_plant_id') required this.userPlantId, @JsonKey(name: 'expand') final  Map<String, dynamic>? expand}): _expand = expand;
  factory _DiaryDocsResponseDto.fromJson(Map<String, dynamic> json) => _$DiaryDocsResponseDtoFromJson(json);

@override final  String collectionId;
@override final  String collectionName;
@override final  String id;
@override final  String created;
@override final  String updated;
@override@JsonKey(name: 'event_date') final  DateTime eventDate;
@override final  String? notes;
@override@JsonKey(name: 'user_plant_id') final  String userPlantId;
 final  Map<String, dynamic>? _expand;
@override@JsonKey(name: 'expand') Map<String, dynamic>? get expand {
  final value = _expand;
  if (value == null) return null;
  if (_expand is EqualUnmodifiableMapView) return _expand;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableMapView(value);
}


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
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _DiaryDocsResponseDto&&(identical(other.collectionId, collectionId) || other.collectionId == collectionId)&&(identical(other.collectionName, collectionName) || other.collectionName == collectionName)&&(identical(other.id, id) || other.id == id)&&(identical(other.created, created) || other.created == created)&&(identical(other.updated, updated) || other.updated == updated)&&(identical(other.eventDate, eventDate) || other.eventDate == eventDate)&&(identical(other.notes, notes) || other.notes == notes)&&(identical(other.userPlantId, userPlantId) || other.userPlantId == userPlantId)&&const DeepCollectionEquality().equals(other._expand, _expand));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,collectionId,collectionName,id,created,updated,eventDate,notes,userPlantId,const DeepCollectionEquality().hash(_expand));

@override
String toString() {
  return 'DiaryDocsResponseDto(collectionId: $collectionId, collectionName: $collectionName, id: $id, created: $created, updated: $updated, eventDate: $eventDate, notes: $notes, userPlantId: $userPlantId, expand: $expand)';
}


}

/// @nodoc
abstract mixin class _$DiaryDocsResponseDtoCopyWith<$Res> implements $DiaryDocsResponseDtoCopyWith<$Res> {
  factory _$DiaryDocsResponseDtoCopyWith(_DiaryDocsResponseDto value, $Res Function(_DiaryDocsResponseDto) _then) = __$DiaryDocsResponseDtoCopyWithImpl;
@override @useResult
$Res call({
 String collectionId, String collectionName, String id, String created, String updated,@JsonKey(name: 'event_date') DateTime eventDate, String? notes,@JsonKey(name: 'user_plant_id') String userPlantId,@JsonKey(name: 'expand') Map<String, dynamic>? expand
});




}
/// @nodoc
class __$DiaryDocsResponseDtoCopyWithImpl<$Res>
    implements _$DiaryDocsResponseDtoCopyWith<$Res> {
  __$DiaryDocsResponseDtoCopyWithImpl(this._self, this._then);

  final _DiaryDocsResponseDto _self;
  final $Res Function(_DiaryDocsResponseDto) _then;

/// Create a copy of DiaryDocsResponseDto
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? collectionId = null,Object? collectionName = null,Object? id = null,Object? created = null,Object? updated = null,Object? eventDate = null,Object? notes = freezed,Object? userPlantId = null,Object? expand = freezed,}) {
  return _then(_DiaryDocsResponseDto(
collectionId: null == collectionId ? _self.collectionId : collectionId // ignore: cast_nullable_to_non_nullable
as String,collectionName: null == collectionName ? _self.collectionName : collectionName // ignore: cast_nullable_to_non_nullable
as String,id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,created: null == created ? _self.created : created // ignore: cast_nullable_to_non_nullable
as String,updated: null == updated ? _self.updated : updated // ignore: cast_nullable_to_non_nullable
as String,eventDate: null == eventDate ? _self.eventDate : eventDate // ignore: cast_nullable_to_non_nullable
as DateTime,notes: freezed == notes ? _self.notes : notes // ignore: cast_nullable_to_non_nullable
as String?,userPlantId: null == userPlantId ? _self.userPlantId : userPlantId // ignore: cast_nullable_to_non_nullable
as String,expand: freezed == expand ? _self._expand : expand // ignore: cast_nullable_to_non_nullable
as Map<String, dynamic>?,
  ));
}


}

// dart format on
