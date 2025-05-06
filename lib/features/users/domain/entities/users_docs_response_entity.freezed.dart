// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'users_docs_response_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$UsersDocsResponseEntity {

 String get id; String get name; DateTime get created;
/// Create a copy of UsersDocsResponseEntity
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$UsersDocsResponseEntityCopyWith<UsersDocsResponseEntity> get copyWith => _$UsersDocsResponseEntityCopyWithImpl<UsersDocsResponseEntity>(this as UsersDocsResponseEntity, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is UsersDocsResponseEntity&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.created, created) || other.created == created));
}


@override
int get hashCode => Object.hash(runtimeType,id,name,created);

@override
String toString() {
  return 'UsersDocsResponseEntity(id: $id, name: $name, created: $created)';
}


}

/// @nodoc
abstract mixin class $UsersDocsResponseEntityCopyWith<$Res>  {
  factory $UsersDocsResponseEntityCopyWith(UsersDocsResponseEntity value, $Res Function(UsersDocsResponseEntity) _then) = _$UsersDocsResponseEntityCopyWithImpl;
@useResult
$Res call({
 String id, String name, DateTime created
});




}
/// @nodoc
class _$UsersDocsResponseEntityCopyWithImpl<$Res>
    implements $UsersDocsResponseEntityCopyWith<$Res> {
  _$UsersDocsResponseEntityCopyWithImpl(this._self, this._then);

  final UsersDocsResponseEntity _self;
  final $Res Function(UsersDocsResponseEntity) _then;

/// Create a copy of UsersDocsResponseEntity
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? name = null,Object? created = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,created: null == created ? _self.created : created // ignore: cast_nullable_to_non_nullable
as DateTime,
  ));
}

}


/// @nodoc


class _UsersDocsResponseEntity implements UsersDocsResponseEntity {
  const _UsersDocsResponseEntity({required this.id, required this.name, required this.created});
  

@override final  String id;
@override final  String name;
@override final  DateTime created;

/// Create a copy of UsersDocsResponseEntity
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$UsersDocsResponseEntityCopyWith<_UsersDocsResponseEntity> get copyWith => __$UsersDocsResponseEntityCopyWithImpl<_UsersDocsResponseEntity>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _UsersDocsResponseEntity&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.created, created) || other.created == created));
}


@override
int get hashCode => Object.hash(runtimeType,id,name,created);

@override
String toString() {
  return 'UsersDocsResponseEntity(id: $id, name: $name, created: $created)';
}


}

/// @nodoc
abstract mixin class _$UsersDocsResponseEntityCopyWith<$Res> implements $UsersDocsResponseEntityCopyWith<$Res> {
  factory _$UsersDocsResponseEntityCopyWith(_UsersDocsResponseEntity value, $Res Function(_UsersDocsResponseEntity) _then) = __$UsersDocsResponseEntityCopyWithImpl;
@override @useResult
$Res call({
 String id, String name, DateTime created
});




}
/// @nodoc
class __$UsersDocsResponseEntityCopyWithImpl<$Res>
    implements _$UsersDocsResponseEntityCopyWith<$Res> {
  __$UsersDocsResponseEntityCopyWithImpl(this._self, this._then);

  final _UsersDocsResponseEntity _self;
  final $Res Function(_UsersDocsResponseEntity) _then;

/// Create a copy of UsersDocsResponseEntity
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? name = null,Object? created = null,}) {
  return _then(_UsersDocsResponseEntity(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,created: null == created ? _self.created : created // ignore: cast_nullable_to_non_nullable
as DateTime,
  ));
}


}

// dart format on
