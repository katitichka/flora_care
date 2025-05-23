// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'auth_docs_response_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$AuthDocsResponseDto {

 String get collectionId; String get collectionName; String get id; String get created; String get updated; String get username; String get email; String get emailVisibility; bool get verified;
/// Create a copy of AuthDocsResponseDto
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$AuthDocsResponseDtoCopyWith<AuthDocsResponseDto> get copyWith => _$AuthDocsResponseDtoCopyWithImpl<AuthDocsResponseDto>(this as AuthDocsResponseDto, _$identity);

  /// Serializes this AuthDocsResponseDto to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AuthDocsResponseDto&&(identical(other.collectionId, collectionId) || other.collectionId == collectionId)&&(identical(other.collectionName, collectionName) || other.collectionName == collectionName)&&(identical(other.id, id) || other.id == id)&&(identical(other.created, created) || other.created == created)&&(identical(other.updated, updated) || other.updated == updated)&&(identical(other.username, username) || other.username == username)&&(identical(other.email, email) || other.email == email)&&(identical(other.emailVisibility, emailVisibility) || other.emailVisibility == emailVisibility)&&(identical(other.verified, verified) || other.verified == verified));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,collectionId,collectionName,id,created,updated,username,email,emailVisibility,verified);

@override
String toString() {
  return 'AuthDocsResponseDto(collectionId: $collectionId, collectionName: $collectionName, id: $id, created: $created, updated: $updated, username: $username, email: $email, emailVisibility: $emailVisibility, verified: $verified)';
}


}

/// @nodoc
abstract mixin class $AuthDocsResponseDtoCopyWith<$Res>  {
  factory $AuthDocsResponseDtoCopyWith(AuthDocsResponseDto value, $Res Function(AuthDocsResponseDto) _then) = _$AuthDocsResponseDtoCopyWithImpl;
@useResult
$Res call({
 String collectionId, String collectionName, String id, String created, String updated, String username, String email, String emailVisibility, bool verified
});




}
/// @nodoc
class _$AuthDocsResponseDtoCopyWithImpl<$Res>
    implements $AuthDocsResponseDtoCopyWith<$Res> {
  _$AuthDocsResponseDtoCopyWithImpl(this._self, this._then);

  final AuthDocsResponseDto _self;
  final $Res Function(AuthDocsResponseDto) _then;

/// Create a copy of AuthDocsResponseDto
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? collectionId = null,Object? collectionName = null,Object? id = null,Object? created = null,Object? updated = null,Object? username = null,Object? email = null,Object? emailVisibility = null,Object? verified = null,}) {
  return _then(_self.copyWith(
collectionId: null == collectionId ? _self.collectionId : collectionId // ignore: cast_nullable_to_non_nullable
as String,collectionName: null == collectionName ? _self.collectionName : collectionName // ignore: cast_nullable_to_non_nullable
as String,id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,created: null == created ? _self.created : created // ignore: cast_nullable_to_non_nullable
as String,updated: null == updated ? _self.updated : updated // ignore: cast_nullable_to_non_nullable
as String,username: null == username ? _self.username : username // ignore: cast_nullable_to_non_nullable
as String,email: null == email ? _self.email : email // ignore: cast_nullable_to_non_nullable
as String,emailVisibility: null == emailVisibility ? _self.emailVisibility : emailVisibility // ignore: cast_nullable_to_non_nullable
as String,verified: null == verified ? _self.verified : verified // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}

}


/// @nodoc
@JsonSerializable()

class _AuthDocsResponseDto implements AuthDocsResponseDto {
  const _AuthDocsResponseDto({required this.collectionId, required this.collectionName, required this.id, required this.created, required this.updated, required this.username, required this.email, required this.emailVisibility, required this.verified});
  factory _AuthDocsResponseDto.fromJson(Map<String, dynamic> json) => _$AuthDocsResponseDtoFromJson(json);

@override final  String collectionId;
@override final  String collectionName;
@override final  String id;
@override final  String created;
@override final  String updated;
@override final  String username;
@override final  String email;
@override final  String emailVisibility;
@override final  bool verified;

/// Create a copy of AuthDocsResponseDto
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$AuthDocsResponseDtoCopyWith<_AuthDocsResponseDto> get copyWith => __$AuthDocsResponseDtoCopyWithImpl<_AuthDocsResponseDto>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$AuthDocsResponseDtoToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _AuthDocsResponseDto&&(identical(other.collectionId, collectionId) || other.collectionId == collectionId)&&(identical(other.collectionName, collectionName) || other.collectionName == collectionName)&&(identical(other.id, id) || other.id == id)&&(identical(other.created, created) || other.created == created)&&(identical(other.updated, updated) || other.updated == updated)&&(identical(other.username, username) || other.username == username)&&(identical(other.email, email) || other.email == email)&&(identical(other.emailVisibility, emailVisibility) || other.emailVisibility == emailVisibility)&&(identical(other.verified, verified) || other.verified == verified));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,collectionId,collectionName,id,created,updated,username,email,emailVisibility,verified);

@override
String toString() {
  return 'AuthDocsResponseDto(collectionId: $collectionId, collectionName: $collectionName, id: $id, created: $created, updated: $updated, username: $username, email: $email, emailVisibility: $emailVisibility, verified: $verified)';
}


}

/// @nodoc
abstract mixin class _$AuthDocsResponseDtoCopyWith<$Res> implements $AuthDocsResponseDtoCopyWith<$Res> {
  factory _$AuthDocsResponseDtoCopyWith(_AuthDocsResponseDto value, $Res Function(_AuthDocsResponseDto) _then) = __$AuthDocsResponseDtoCopyWithImpl;
@override @useResult
$Res call({
 String collectionId, String collectionName, String id, String created, String updated, String username, String email, String emailVisibility, bool verified
});




}
/// @nodoc
class __$AuthDocsResponseDtoCopyWithImpl<$Res>
    implements _$AuthDocsResponseDtoCopyWith<$Res> {
  __$AuthDocsResponseDtoCopyWithImpl(this._self, this._then);

  final _AuthDocsResponseDto _self;
  final $Res Function(_AuthDocsResponseDto) _then;

/// Create a copy of AuthDocsResponseDto
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? collectionId = null,Object? collectionName = null,Object? id = null,Object? created = null,Object? updated = null,Object? username = null,Object? email = null,Object? emailVisibility = null,Object? verified = null,}) {
  return _then(_AuthDocsResponseDto(
collectionId: null == collectionId ? _self.collectionId : collectionId // ignore: cast_nullable_to_non_nullable
as String,collectionName: null == collectionName ? _self.collectionName : collectionName // ignore: cast_nullable_to_non_nullable
as String,id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,created: null == created ? _self.created : created // ignore: cast_nullable_to_non_nullable
as String,updated: null == updated ? _self.updated : updated // ignore: cast_nullable_to_non_nullable
as String,username: null == username ? _self.username : username // ignore: cast_nullable_to_non_nullable
as String,email: null == email ? _self.email : email // ignore: cast_nullable_to_non_nullable
as String,emailVisibility: null == emailVisibility ? _self.emailVisibility : emailVisibility // ignore: cast_nullable_to_non_nullable
as String,verified: null == verified ? _self.verified : verified // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}


}

// dart format on
