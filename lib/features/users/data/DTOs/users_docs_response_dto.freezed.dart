// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'users_docs_response_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$UsersDocsResponseDto {

 String get id; DateTime get created; String get name;
/// Create a copy of UsersDocsResponseDto
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$UsersDocsResponseDtoCopyWith<UsersDocsResponseDto> get copyWith => _$UsersDocsResponseDtoCopyWithImpl<UsersDocsResponseDto>(this as UsersDocsResponseDto, _$identity);

  /// Serializes this UsersDocsResponseDto to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is UsersDocsResponseDto&&(identical(other.id, id) || other.id == id)&&(identical(other.created, created) || other.created == created)&&(identical(other.name, name) || other.name == name));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,created,name);

@override
String toString() {
  return 'UsersDocsResponseDto(id: $id, created: $created, name: $name)';
}


}

/// @nodoc
abstract mixin class $UsersDocsResponseDtoCopyWith<$Res>  {
  factory $UsersDocsResponseDtoCopyWith(UsersDocsResponseDto value, $Res Function(UsersDocsResponseDto) _then) = _$UsersDocsResponseDtoCopyWithImpl;
@useResult
$Res call({
 String id, DateTime created, String name
});




}
/// @nodoc
class _$UsersDocsResponseDtoCopyWithImpl<$Res>
    implements $UsersDocsResponseDtoCopyWith<$Res> {
  _$UsersDocsResponseDtoCopyWithImpl(this._self, this._then);

  final UsersDocsResponseDto _self;
  final $Res Function(UsersDocsResponseDto) _then;

/// Create a copy of UsersDocsResponseDto
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? created = null,Object? name = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,created: null == created ? _self.created : created // ignore: cast_nullable_to_non_nullable
as DateTime,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// @nodoc

@JsonSerializable(fieldRename: FieldRename.snake)
class _UsersDocsResponseDto implements UsersDocsResponseDto {
  const _UsersDocsResponseDto({required this.id, required this.created, required this.name});
  factory _UsersDocsResponseDto.fromJson(Map<String, dynamic> json) => _$UsersDocsResponseDtoFromJson(json);

@override final  String id;
@override final  DateTime created;
@override final  String name;

/// Create a copy of UsersDocsResponseDto
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$UsersDocsResponseDtoCopyWith<_UsersDocsResponseDto> get copyWith => __$UsersDocsResponseDtoCopyWithImpl<_UsersDocsResponseDto>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$UsersDocsResponseDtoToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _UsersDocsResponseDto&&(identical(other.id, id) || other.id == id)&&(identical(other.created, created) || other.created == created)&&(identical(other.name, name) || other.name == name));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,created,name);

@override
String toString() {
  return 'UsersDocsResponseDto(id: $id, created: $created, name: $name)';
}


}

/// @nodoc
abstract mixin class _$UsersDocsResponseDtoCopyWith<$Res> implements $UsersDocsResponseDtoCopyWith<$Res> {
  factory _$UsersDocsResponseDtoCopyWith(_UsersDocsResponseDto value, $Res Function(_UsersDocsResponseDto) _then) = __$UsersDocsResponseDtoCopyWithImpl;
@override @useResult
$Res call({
 String id, DateTime created, String name
});




}
/// @nodoc
class __$UsersDocsResponseDtoCopyWithImpl<$Res>
    implements _$UsersDocsResponseDtoCopyWith<$Res> {
  __$UsersDocsResponseDtoCopyWithImpl(this._self, this._then);

  final _UsersDocsResponseDto _self;
  final $Res Function(_UsersDocsResponseDto) _then;

/// Create a copy of UsersDocsResponseDto
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? created = null,Object? name = null,}) {
  return _then(_UsersDocsResponseDto(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,created: null == created ? _self.created : created // ignore: cast_nullable_to_non_nullable
as DateTime,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
