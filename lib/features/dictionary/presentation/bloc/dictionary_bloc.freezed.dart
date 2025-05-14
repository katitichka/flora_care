// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'dictionary_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$DictionaryEvent {

 int get page; int get limit;
/// Create a copy of DictionaryEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$DictionaryEventCopyWith<DictionaryEvent> get copyWith => _$DictionaryEventCopyWithImpl<DictionaryEvent>(this as DictionaryEvent, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is DictionaryEvent&&(identical(other.page, page) || other.page == page)&&(identical(other.limit, limit) || other.limit == limit));
}


@override
int get hashCode => Object.hash(runtimeType,page,limit);

@override
String toString() {
  return 'DictionaryEvent(page: $page, limit: $limit)';
}


}

/// @nodoc
abstract mixin class $DictionaryEventCopyWith<$Res>  {
  factory $DictionaryEventCopyWith(DictionaryEvent value, $Res Function(DictionaryEvent) _then) = _$DictionaryEventCopyWithImpl;
@useResult
$Res call({
 int page, int limit
});




}
/// @nodoc
class _$DictionaryEventCopyWithImpl<$Res>
    implements $DictionaryEventCopyWith<$Res> {
  _$DictionaryEventCopyWithImpl(this._self, this._then);

  final DictionaryEvent _self;
  final $Res Function(DictionaryEvent) _then;

/// Create a copy of DictionaryEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? page = null,Object? limit = null,}) {
  return _then(_self.copyWith(
page: null == page ? _self.page : page // ignore: cast_nullable_to_non_nullable
as int,limit: null == limit ? _self.limit : limit // ignore: cast_nullable_to_non_nullable
as int,
  ));
}

}


/// @nodoc


class _GetAll implements DictionaryEvent {
  const _GetAll({required this.page, required this.limit});
  

@override final  int page;
@override final  int limit;

/// Create a copy of DictionaryEvent
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$GetAllCopyWith<_GetAll> get copyWith => __$GetAllCopyWithImpl<_GetAll>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _GetAll&&(identical(other.page, page) || other.page == page)&&(identical(other.limit, limit) || other.limit == limit));
}


@override
int get hashCode => Object.hash(runtimeType,page,limit);

@override
String toString() {
  return 'DictionaryEvent.getAll(page: $page, limit: $limit)';
}


}

/// @nodoc
abstract mixin class _$GetAllCopyWith<$Res> implements $DictionaryEventCopyWith<$Res> {
  factory _$GetAllCopyWith(_GetAll value, $Res Function(_GetAll) _then) = __$GetAllCopyWithImpl;
@override @useResult
$Res call({
 int page, int limit
});




}
/// @nodoc
class __$GetAllCopyWithImpl<$Res>
    implements _$GetAllCopyWith<$Res> {
  __$GetAllCopyWithImpl(this._self, this._then);

  final _GetAll _self;
  final $Res Function(_GetAll) _then;

/// Create a copy of DictionaryEvent
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? page = null,Object? limit = null,}) {
  return _then(_GetAll(
page: null == page ? _self.page : page // ignore: cast_nullable_to_non_nullable
as int,limit: null == limit ? _self.limit : limit // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}

/// @nodoc


class _Search implements DictionaryEvent {
  const _Search({required this.query, required this.page, required this.limit});
  

 final  String query;
@override final  int page;
@override final  int limit;

/// Create a copy of DictionaryEvent
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$SearchCopyWith<_Search> get copyWith => __$SearchCopyWithImpl<_Search>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Search&&(identical(other.query, query) || other.query == query)&&(identical(other.page, page) || other.page == page)&&(identical(other.limit, limit) || other.limit == limit));
}


@override
int get hashCode => Object.hash(runtimeType,query,page,limit);

@override
String toString() {
  return 'DictionaryEvent.search(query: $query, page: $page, limit: $limit)';
}


}

/// @nodoc
abstract mixin class _$SearchCopyWith<$Res> implements $DictionaryEventCopyWith<$Res> {
  factory _$SearchCopyWith(_Search value, $Res Function(_Search) _then) = __$SearchCopyWithImpl;
@override @useResult
$Res call({
 String query, int page, int limit
});




}
/// @nodoc
class __$SearchCopyWithImpl<$Res>
    implements _$SearchCopyWith<$Res> {
  __$SearchCopyWithImpl(this._self, this._then);

  final _Search _self;
  final $Res Function(_Search) _then;

/// Create a copy of DictionaryEvent
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? query = null,Object? page = null,Object? limit = null,}) {
  return _then(_Search(
query: null == query ? _self.query : query // ignore: cast_nullable_to_non_nullable
as String,page: null == page ? _self.page : page // ignore: cast_nullable_to_non_nullable
as int,limit: null == limit ? _self.limit : limit // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}

/// @nodoc
mixin _$DictionaryState {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is DictionaryState);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'DictionaryState()';
}


}

/// @nodoc
class $DictionaryStateCopyWith<$Res>  {
$DictionaryStateCopyWith(DictionaryState _, $Res Function(DictionaryState) __);
}


/// @nodoc


class Initial extends DictionaryState {
  const Initial(): super._();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Initial);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'DictionaryState.initial()';
}


}




/// @nodoc


class Loading extends DictionaryState {
  const Loading(): super._();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Loading);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'DictionaryState.loading()';
}


}




/// @nodoc


class Loaded extends DictionaryState {
  const Loaded({required final  List<DictionaryDocsResponseEntity> plants, required final  List<DictionaryDocsResponseEntity> filterPlants}): _plants = plants,_filterPlants = filterPlants,super._();
  

 final  List<DictionaryDocsResponseEntity> _plants;
 List<DictionaryDocsResponseEntity> get plants {
  if (_plants is EqualUnmodifiableListView) return _plants;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_plants);
}

 final  List<DictionaryDocsResponseEntity> _filterPlants;
 List<DictionaryDocsResponseEntity> get filterPlants {
  if (_filterPlants is EqualUnmodifiableListView) return _filterPlants;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_filterPlants);
}


/// Create a copy of DictionaryState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$LoadedCopyWith<Loaded> get copyWith => _$LoadedCopyWithImpl<Loaded>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Loaded&&const DeepCollectionEquality().equals(other._plants, _plants)&&const DeepCollectionEquality().equals(other._filterPlants, _filterPlants));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_plants),const DeepCollectionEquality().hash(_filterPlants));

@override
String toString() {
  return 'DictionaryState.loaded(plants: $plants, filterPlants: $filterPlants)';
}


}

/// @nodoc
abstract mixin class $LoadedCopyWith<$Res> implements $DictionaryStateCopyWith<$Res> {
  factory $LoadedCopyWith(Loaded value, $Res Function(Loaded) _then) = _$LoadedCopyWithImpl;
@useResult
$Res call({
 List<DictionaryDocsResponseEntity> plants, List<DictionaryDocsResponseEntity> filterPlants
});




}
/// @nodoc
class _$LoadedCopyWithImpl<$Res>
    implements $LoadedCopyWith<$Res> {
  _$LoadedCopyWithImpl(this._self, this._then);

  final Loaded _self;
  final $Res Function(Loaded) _then;

/// Create a copy of DictionaryState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? plants = null,Object? filterPlants = null,}) {
  return _then(Loaded(
plants: null == plants ? _self._plants : plants // ignore: cast_nullable_to_non_nullable
as List<DictionaryDocsResponseEntity>,filterPlants: null == filterPlants ? _self._filterPlants : filterPlants // ignore: cast_nullable_to_non_nullable
as List<DictionaryDocsResponseEntity>,
  ));
}


}

/// @nodoc


class Error extends DictionaryState {
  const Error({required this.message}): super._();
  

 final  String message;

/// Create a copy of DictionaryState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ErrorCopyWith<Error> get copyWith => _$ErrorCopyWithImpl<Error>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Error&&(identical(other.message, message) || other.message == message));
}


@override
int get hashCode => Object.hash(runtimeType,message);

@override
String toString() {
  return 'DictionaryState.error(message: $message)';
}


}

/// @nodoc
abstract mixin class $ErrorCopyWith<$Res> implements $DictionaryStateCopyWith<$Res> {
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

/// Create a copy of DictionaryState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? message = null,}) {
  return _then(Error(
message: null == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
