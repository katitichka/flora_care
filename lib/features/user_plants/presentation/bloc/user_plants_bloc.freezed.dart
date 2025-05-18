// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'user_plants_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$UserPlantsEvent implements DiagnosticableTreeMixin {




@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'UserPlantsEvent'))
    ;
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is UserPlantsEvent);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'UserPlantsEvent()';
}


}

/// @nodoc
class $UserPlantsEventCopyWith<$Res>  {
$UserPlantsEventCopyWith(UserPlantsEvent _, $Res Function(UserPlantsEvent) __);
}


/// @nodoc


class _GetAllUserPlants with DiagnosticableTreeMixin implements UserPlantsEvent {
  const _GetAllUserPlants();
  





@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'UserPlantsEvent.getAllUserPlants'))
    ;
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _GetAllUserPlants);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'UserPlantsEvent.getAllUserPlants()';
}


}




/// @nodoc


class _AddUserPlant with DiagnosticableTreeMixin implements UserPlantsEvent {
  const _AddUserPlant({required this.plantId, required this.userId, required this.userPlantName});
  

 final  String plantId;
 final  String userId;
 final  String userPlantName;

/// Create a copy of UserPlantsEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$AddUserPlantCopyWith<_AddUserPlant> get copyWith => __$AddUserPlantCopyWithImpl<_AddUserPlant>(this, _$identity);


@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'UserPlantsEvent.addUserPlant'))
    ..add(DiagnosticsProperty('plantId', plantId))..add(DiagnosticsProperty('userId', userId))..add(DiagnosticsProperty('userPlantName', userPlantName));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _AddUserPlant&&(identical(other.plantId, plantId) || other.plantId == plantId)&&(identical(other.userId, userId) || other.userId == userId)&&(identical(other.userPlantName, userPlantName) || other.userPlantName == userPlantName));
}


@override
int get hashCode => Object.hash(runtimeType,plantId,userId,userPlantName);

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'UserPlantsEvent.addUserPlant(plantId: $plantId, userId: $userId, userPlantName: $userPlantName)';
}


}

/// @nodoc
abstract mixin class _$AddUserPlantCopyWith<$Res> implements $UserPlantsEventCopyWith<$Res> {
  factory _$AddUserPlantCopyWith(_AddUserPlant value, $Res Function(_AddUserPlant) _then) = __$AddUserPlantCopyWithImpl;
@useResult
$Res call({
 String plantId, String userId, String userPlantName
});




}
/// @nodoc
class __$AddUserPlantCopyWithImpl<$Res>
    implements _$AddUserPlantCopyWith<$Res> {
  __$AddUserPlantCopyWithImpl(this._self, this._then);

  final _AddUserPlant _self;
  final $Res Function(_AddUserPlant) _then;

/// Create a copy of UserPlantsEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? plantId = null,Object? userId = null,Object? userPlantName = null,}) {
  return _then(_AddUserPlant(
plantId: null == plantId ? _self.plantId : plantId // ignore: cast_nullable_to_non_nullable
as String,userId: null == userId ? _self.userId : userId // ignore: cast_nullable_to_non_nullable
as String,userPlantName: null == userPlantName ? _self.userPlantName : userPlantName // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class _DeleteUserPlant with DiagnosticableTreeMixin implements UserPlantsEvent {
  const _DeleteUserPlant({required this.userPlantId});
  

 final  String userPlantId;

/// Create a copy of UserPlantsEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$DeleteUserPlantCopyWith<_DeleteUserPlant> get copyWith => __$DeleteUserPlantCopyWithImpl<_DeleteUserPlant>(this, _$identity);


@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'UserPlantsEvent.deleteUserPlant'))
    ..add(DiagnosticsProperty('userPlantId', userPlantId));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _DeleteUserPlant&&(identical(other.userPlantId, userPlantId) || other.userPlantId == userPlantId));
}


@override
int get hashCode => Object.hash(runtimeType,userPlantId);

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'UserPlantsEvent.deleteUserPlant(userPlantId: $userPlantId)';
}


}

/// @nodoc
abstract mixin class _$DeleteUserPlantCopyWith<$Res> implements $UserPlantsEventCopyWith<$Res> {
  factory _$DeleteUserPlantCopyWith(_DeleteUserPlant value, $Res Function(_DeleteUserPlant) _then) = __$DeleteUserPlantCopyWithImpl;
@useResult
$Res call({
 String userPlantId
});




}
/// @nodoc
class __$DeleteUserPlantCopyWithImpl<$Res>
    implements _$DeleteUserPlantCopyWith<$Res> {
  __$DeleteUserPlantCopyWithImpl(this._self, this._then);

  final _DeleteUserPlant _self;
  final $Res Function(_DeleteUserPlant) _then;

/// Create a copy of UserPlantsEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? userPlantId = null,}) {
  return _then(_DeleteUserPlant(
userPlantId: null == userPlantId ? _self.userPlantId : userPlantId // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class _Search with DiagnosticableTreeMixin implements UserPlantsEvent {
  const _Search({required this.query});
  

 final  String query;

/// Create a copy of UserPlantsEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$SearchCopyWith<_Search> get copyWith => __$SearchCopyWithImpl<_Search>(this, _$identity);


@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'UserPlantsEvent.search'))
    ..add(DiagnosticsProperty('query', query));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Search&&(identical(other.query, query) || other.query == query));
}


@override
int get hashCode => Object.hash(runtimeType,query);

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'UserPlantsEvent.search(query: $query)';
}


}

/// @nodoc
abstract mixin class _$SearchCopyWith<$Res> implements $UserPlantsEventCopyWith<$Res> {
  factory _$SearchCopyWith(_Search value, $Res Function(_Search) _then) = __$SearchCopyWithImpl;
@useResult
$Res call({
 String query
});




}
/// @nodoc
class __$SearchCopyWithImpl<$Res>
    implements _$SearchCopyWith<$Res> {
  __$SearchCopyWithImpl(this._self, this._then);

  final _Search _self;
  final $Res Function(_Search) _then;

/// Create a copy of UserPlantsEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? query = null,}) {
  return _then(_Search(
query: null == query ? _self.query : query // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class _WaterPlant with DiagnosticableTreeMixin implements UserPlantsEvent {
  const _WaterPlant({required this.userPlantId});
  

 final  String userPlantId;

/// Create a copy of UserPlantsEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$WaterPlantCopyWith<_WaterPlant> get copyWith => __$WaterPlantCopyWithImpl<_WaterPlant>(this, _$identity);


@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'UserPlantsEvent.waterPlant'))
    ..add(DiagnosticsProperty('userPlantId', userPlantId));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _WaterPlant&&(identical(other.userPlantId, userPlantId) || other.userPlantId == userPlantId));
}


@override
int get hashCode => Object.hash(runtimeType,userPlantId);

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'UserPlantsEvent.waterPlant(userPlantId: $userPlantId)';
}


}

/// @nodoc
abstract mixin class _$WaterPlantCopyWith<$Res> implements $UserPlantsEventCopyWith<$Res> {
  factory _$WaterPlantCopyWith(_WaterPlant value, $Res Function(_WaterPlant) _then) = __$WaterPlantCopyWithImpl;
@useResult
$Res call({
 String userPlantId
});




}
/// @nodoc
class __$WaterPlantCopyWithImpl<$Res>
    implements _$WaterPlantCopyWith<$Res> {
  __$WaterPlantCopyWithImpl(this._self, this._then);

  final _WaterPlant _self;
  final $Res Function(_WaterPlant) _then;

/// Create a copy of UserPlantsEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? userPlantId = null,}) {
  return _then(_WaterPlant(
userPlantId: null == userPlantId ? _self.userPlantId : userPlantId // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc
mixin _$UserPlantsState implements DiagnosticableTreeMixin {




@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'UserPlantsState'))
    ;
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is UserPlantsState);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'UserPlantsState()';
}


}

/// @nodoc
class $UserPlantsStateCopyWith<$Res>  {
$UserPlantsStateCopyWith(UserPlantsState _, $Res Function(UserPlantsState) __);
}


/// @nodoc


class Initial with DiagnosticableTreeMixin implements UserPlantsState {
  const Initial();
  





@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'UserPlantsState.initial'))
    ;
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Initial);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'UserPlantsState.initial()';
}


}




/// @nodoc


class Loading with DiagnosticableTreeMixin implements UserPlantsState {
  const Loading();
  





@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'UserPlantsState.loading'))
    ;
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Loading);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'UserPlantsState.loading()';
}


}




/// @nodoc


class Loaded with DiagnosticableTreeMixin implements UserPlantsState {
  const Loaded({required final  List<UserPlantsDocsResponseEntity> userPlants}): _userPlants = userPlants;
  

 final  List<UserPlantsDocsResponseEntity> _userPlants;
 List<UserPlantsDocsResponseEntity> get userPlants {
  if (_userPlants is EqualUnmodifiableListView) return _userPlants;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_userPlants);
}


/// Create a copy of UserPlantsState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$LoadedCopyWith<Loaded> get copyWith => _$LoadedCopyWithImpl<Loaded>(this, _$identity);


@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'UserPlantsState.loaded'))
    ..add(DiagnosticsProperty('userPlants', userPlants));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Loaded&&const DeepCollectionEquality().equals(other._userPlants, _userPlants));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_userPlants));

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'UserPlantsState.loaded(userPlants: $userPlants)';
}


}

/// @nodoc
abstract mixin class $LoadedCopyWith<$Res> implements $UserPlantsStateCopyWith<$Res> {
  factory $LoadedCopyWith(Loaded value, $Res Function(Loaded) _then) = _$LoadedCopyWithImpl;
@useResult
$Res call({
 List<UserPlantsDocsResponseEntity> userPlants
});




}
/// @nodoc
class _$LoadedCopyWithImpl<$Res>
    implements $LoadedCopyWith<$Res> {
  _$LoadedCopyWithImpl(this._self, this._then);

  final Loaded _self;
  final $Res Function(Loaded) _then;

/// Create a copy of UserPlantsState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? userPlants = null,}) {
  return _then(Loaded(
userPlants: null == userPlants ? _self._userPlants : userPlants // ignore: cast_nullable_to_non_nullable
as List<UserPlantsDocsResponseEntity>,
  ));
}


}

/// @nodoc


class ActionSuccess with DiagnosticableTreeMixin implements UserPlantsState {
  const ActionSuccess({required this.message});
  

 final  String message;

/// Create a copy of UserPlantsState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ActionSuccessCopyWith<ActionSuccess> get copyWith => _$ActionSuccessCopyWithImpl<ActionSuccess>(this, _$identity);


@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'UserPlantsState.actionSuccess'))
    ..add(DiagnosticsProperty('message', message));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ActionSuccess&&(identical(other.message, message) || other.message == message));
}


@override
int get hashCode => Object.hash(runtimeType,message);

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'UserPlantsState.actionSuccess(message: $message)';
}


}

/// @nodoc
abstract mixin class $ActionSuccessCopyWith<$Res> implements $UserPlantsStateCopyWith<$Res> {
  factory $ActionSuccessCopyWith(ActionSuccess value, $Res Function(ActionSuccess) _then) = _$ActionSuccessCopyWithImpl;
@useResult
$Res call({
 String message
});




}
/// @nodoc
class _$ActionSuccessCopyWithImpl<$Res>
    implements $ActionSuccessCopyWith<$Res> {
  _$ActionSuccessCopyWithImpl(this._self, this._then);

  final ActionSuccess _self;
  final $Res Function(ActionSuccess) _then;

/// Create a copy of UserPlantsState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? message = null,}) {
  return _then(ActionSuccess(
message: null == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class ActionFail with DiagnosticableTreeMixin implements UserPlantsState {
  const ActionFail({required this.message, required final  List<UserPlantsDocsResponseEntity> userPlants}): _userPlants = userPlants;
  

 final  String message;
 final  List<UserPlantsDocsResponseEntity> _userPlants;
 List<UserPlantsDocsResponseEntity> get userPlants {
  if (_userPlants is EqualUnmodifiableListView) return _userPlants;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_userPlants);
}


/// Create a copy of UserPlantsState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ActionFailCopyWith<ActionFail> get copyWith => _$ActionFailCopyWithImpl<ActionFail>(this, _$identity);


@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'UserPlantsState.actionFail'))
    ..add(DiagnosticsProperty('message', message))..add(DiagnosticsProperty('userPlants', userPlants));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ActionFail&&(identical(other.message, message) || other.message == message)&&const DeepCollectionEquality().equals(other._userPlants, _userPlants));
}


@override
int get hashCode => Object.hash(runtimeType,message,const DeepCollectionEquality().hash(_userPlants));

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'UserPlantsState.actionFail(message: $message, userPlants: $userPlants)';
}


}

/// @nodoc
abstract mixin class $ActionFailCopyWith<$Res> implements $UserPlantsStateCopyWith<$Res> {
  factory $ActionFailCopyWith(ActionFail value, $Res Function(ActionFail) _then) = _$ActionFailCopyWithImpl;
@useResult
$Res call({
 String message, List<UserPlantsDocsResponseEntity> userPlants
});




}
/// @nodoc
class _$ActionFailCopyWithImpl<$Res>
    implements $ActionFailCopyWith<$Res> {
  _$ActionFailCopyWithImpl(this._self, this._then);

  final ActionFail _self;
  final $Res Function(ActionFail) _then;

/// Create a copy of UserPlantsState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? message = null,Object? userPlants = null,}) {
  return _then(ActionFail(
message: null == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String,userPlants: null == userPlants ? _self._userPlants : userPlants // ignore: cast_nullable_to_non_nullable
as List<UserPlantsDocsResponseEntity>,
  ));
}


}

/// @nodoc


class Error with DiagnosticableTreeMixin implements UserPlantsState {
  const Error({required this.message});
  

 final  String message;

/// Create a copy of UserPlantsState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ErrorCopyWith<Error> get copyWith => _$ErrorCopyWithImpl<Error>(this, _$identity);


@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'UserPlantsState.error'))
    ..add(DiagnosticsProperty('message', message));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Error&&(identical(other.message, message) || other.message == message));
}


@override
int get hashCode => Object.hash(runtimeType,message);

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'UserPlantsState.error(message: $message)';
}


}

/// @nodoc
abstract mixin class $ErrorCopyWith<$Res> implements $UserPlantsStateCopyWith<$Res> {
  factory $ErrorCopyWith(Error value, $Res Function(Error) _then) = _$ErrorCopyWithImpl;
@useResult
$Res call({
 String message
});




}
/// @nodoc
class _$ErrorCopyWithImpl<$Res>
    implements $ErrorCopyWith<$Res> {
  _$ErrorCopyWithImpl(this._self, this._then);

  final Error _self;
  final $Res Function(Error) _then;

/// Create a copy of UserPlantsState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? message = null,}) {
  return _then(Error(
message: null == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
