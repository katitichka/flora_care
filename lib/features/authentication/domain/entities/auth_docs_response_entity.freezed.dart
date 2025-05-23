// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'auth_docs_response_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$AuthDocsResponseEntity {

 String get id; String get email; bool get verified;
/// Create a copy of AuthDocsResponseEntity
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$AuthDocsResponseEntityCopyWith<AuthDocsResponseEntity> get copyWith => _$AuthDocsResponseEntityCopyWithImpl<AuthDocsResponseEntity>(this as AuthDocsResponseEntity, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AuthDocsResponseEntity&&(identical(other.id, id) || other.id == id)&&(identical(other.email, email) || other.email == email)&&(identical(other.verified, verified) || other.verified == verified));
}


@override
int get hashCode => Object.hash(runtimeType,id,email,verified);

@override
String toString() {
  return 'AuthDocsResponseEntity(id: $id, email: $email, verified: $verified)';
}


}

/// @nodoc
abstract mixin class $AuthDocsResponseEntityCopyWith<$Res>  {
  factory $AuthDocsResponseEntityCopyWith(AuthDocsResponseEntity value, $Res Function(AuthDocsResponseEntity) _then) = _$AuthDocsResponseEntityCopyWithImpl;
@useResult
$Res call({
 String id, String email, bool verified
});




}
/// @nodoc
class _$AuthDocsResponseEntityCopyWithImpl<$Res>
    implements $AuthDocsResponseEntityCopyWith<$Res> {
  _$AuthDocsResponseEntityCopyWithImpl(this._self, this._then);

  final AuthDocsResponseEntity _self;
  final $Res Function(AuthDocsResponseEntity) _then;

/// Create a copy of AuthDocsResponseEntity
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? email = null,Object? verified = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,email: null == email ? _self.email : email // ignore: cast_nullable_to_non_nullable
as String,verified: null == verified ? _self.verified : verified // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}

}


/// @nodoc


class _AuthDocsResponseEntity implements AuthDocsResponseEntity {
  const _AuthDocsResponseEntity({required this.id, required this.email, required this.verified});
  

@override final  String id;
@override final  String email;
@override final  bool verified;

/// Create a copy of AuthDocsResponseEntity
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$AuthDocsResponseEntityCopyWith<_AuthDocsResponseEntity> get copyWith => __$AuthDocsResponseEntityCopyWithImpl<_AuthDocsResponseEntity>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _AuthDocsResponseEntity&&(identical(other.id, id) || other.id == id)&&(identical(other.email, email) || other.email == email)&&(identical(other.verified, verified) || other.verified == verified));
}


@override
int get hashCode => Object.hash(runtimeType,id,email,verified);

@override
String toString() {
  return 'AuthDocsResponseEntity(id: $id, email: $email, verified: $verified)';
}


}

/// @nodoc
abstract mixin class _$AuthDocsResponseEntityCopyWith<$Res> implements $AuthDocsResponseEntityCopyWith<$Res> {
  factory _$AuthDocsResponseEntityCopyWith(_AuthDocsResponseEntity value, $Res Function(_AuthDocsResponseEntity) _then) = __$AuthDocsResponseEntityCopyWithImpl;
@override @useResult
$Res call({
 String id, String email, bool verified
});




}
/// @nodoc
class __$AuthDocsResponseEntityCopyWithImpl<$Res>
    implements _$AuthDocsResponseEntityCopyWith<$Res> {
  __$AuthDocsResponseEntityCopyWithImpl(this._self, this._then);

  final _AuthDocsResponseEntity _self;
  final $Res Function(_AuthDocsResponseEntity) _then;

/// Create a copy of AuthDocsResponseEntity
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? email = null,Object? verified = null,}) {
  return _then(_AuthDocsResponseEntity(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,email: null == email ? _self.email : email // ignore: cast_nullable_to_non_nullable
as String,verified: null == verified ? _self.verified : verified // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}


}

// dart format on
