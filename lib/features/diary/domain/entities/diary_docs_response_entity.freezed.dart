// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'diary_docs_response_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$DiaryDocsResponseEntity implements DiagnosticableTreeMixin {

 String get id; String? get notes; DateTime get eventDate; String get userPlantId;
/// Create a copy of DiaryDocsResponseEntity
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$DiaryDocsResponseEntityCopyWith<DiaryDocsResponseEntity> get copyWith => _$DiaryDocsResponseEntityCopyWithImpl<DiaryDocsResponseEntity>(this as DiaryDocsResponseEntity, _$identity);


@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'DiaryDocsResponseEntity'))
    ..add(DiagnosticsProperty('id', id))..add(DiagnosticsProperty('notes', notes))..add(DiagnosticsProperty('eventDate', eventDate))..add(DiagnosticsProperty('userPlantId', userPlantId));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is DiaryDocsResponseEntity&&(identical(other.id, id) || other.id == id)&&(identical(other.notes, notes) || other.notes == notes)&&(identical(other.eventDate, eventDate) || other.eventDate == eventDate)&&(identical(other.userPlantId, userPlantId) || other.userPlantId == userPlantId));
}


@override
int get hashCode => Object.hash(runtimeType,id,notes,eventDate,userPlantId);

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'DiaryDocsResponseEntity(id: $id, notes: $notes, eventDate: $eventDate, userPlantId: $userPlantId)';
}


}

/// @nodoc
abstract mixin class $DiaryDocsResponseEntityCopyWith<$Res>  {
  factory $DiaryDocsResponseEntityCopyWith(DiaryDocsResponseEntity value, $Res Function(DiaryDocsResponseEntity) _then) = _$DiaryDocsResponseEntityCopyWithImpl;
@useResult
$Res call({
 String id, String? notes, DateTime eventDate, String userPlantId
});




}
/// @nodoc
class _$DiaryDocsResponseEntityCopyWithImpl<$Res>
    implements $DiaryDocsResponseEntityCopyWith<$Res> {
  _$DiaryDocsResponseEntityCopyWithImpl(this._self, this._then);

  final DiaryDocsResponseEntity _self;
  final $Res Function(DiaryDocsResponseEntity) _then;

/// Create a copy of DiaryDocsResponseEntity
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? notes = freezed,Object? eventDate = null,Object? userPlantId = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,notes: freezed == notes ? _self.notes : notes // ignore: cast_nullable_to_non_nullable
as String?,eventDate: null == eventDate ? _self.eventDate : eventDate // ignore: cast_nullable_to_non_nullable
as DateTime,userPlantId: null == userPlantId ? _self.userPlantId : userPlantId // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// @nodoc


class _DiaryDocsResponseEntity with DiagnosticableTreeMixin implements DiaryDocsResponseEntity {
  const _DiaryDocsResponseEntity({required this.id, required this.notes, required this.eventDate, required this.userPlantId});
  

@override final  String id;
@override final  String? notes;
@override final  DateTime eventDate;
@override final  String userPlantId;

/// Create a copy of DiaryDocsResponseEntity
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$DiaryDocsResponseEntityCopyWith<_DiaryDocsResponseEntity> get copyWith => __$DiaryDocsResponseEntityCopyWithImpl<_DiaryDocsResponseEntity>(this, _$identity);


@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'DiaryDocsResponseEntity'))
    ..add(DiagnosticsProperty('id', id))..add(DiagnosticsProperty('notes', notes))..add(DiagnosticsProperty('eventDate', eventDate))..add(DiagnosticsProperty('userPlantId', userPlantId));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _DiaryDocsResponseEntity&&(identical(other.id, id) || other.id == id)&&(identical(other.notes, notes) || other.notes == notes)&&(identical(other.eventDate, eventDate) || other.eventDate == eventDate)&&(identical(other.userPlantId, userPlantId) || other.userPlantId == userPlantId));
}


@override
int get hashCode => Object.hash(runtimeType,id,notes,eventDate,userPlantId);

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'DiaryDocsResponseEntity(id: $id, notes: $notes, eventDate: $eventDate, userPlantId: $userPlantId)';
}


}

/// @nodoc
abstract mixin class _$DiaryDocsResponseEntityCopyWith<$Res> implements $DiaryDocsResponseEntityCopyWith<$Res> {
  factory _$DiaryDocsResponseEntityCopyWith(_DiaryDocsResponseEntity value, $Res Function(_DiaryDocsResponseEntity) _then) = __$DiaryDocsResponseEntityCopyWithImpl;
@override @useResult
$Res call({
 String id, String? notes, DateTime eventDate, String userPlantId
});




}
/// @nodoc
class __$DiaryDocsResponseEntityCopyWithImpl<$Res>
    implements _$DiaryDocsResponseEntityCopyWith<$Res> {
  __$DiaryDocsResponseEntityCopyWithImpl(this._self, this._then);

  final _DiaryDocsResponseEntity _self;
  final $Res Function(_DiaryDocsResponseEntity) _then;

/// Create a copy of DiaryDocsResponseEntity
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? notes = freezed,Object? eventDate = null,Object? userPlantId = null,}) {
  return _then(_DiaryDocsResponseEntity(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,notes: freezed == notes ? _self.notes : notes // ignore: cast_nullable_to_non_nullable
as String?,eventDate: null == eventDate ? _self.eventDate : eventDate // ignore: cast_nullable_to_non_nullable
as DateTime,userPlantId: null == userPlantId ? _self.userPlantId : userPlantId // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
