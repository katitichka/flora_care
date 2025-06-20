// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'diary_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$DiaryEvent {

 String get userPlantId;
/// Create a copy of DiaryEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$DiaryEventCopyWith<DiaryEvent> get copyWith => _$DiaryEventCopyWithImpl<DiaryEvent>(this as DiaryEvent, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is DiaryEvent&&(identical(other.userPlantId, userPlantId) || other.userPlantId == userPlantId));
}


@override
int get hashCode => Object.hash(runtimeType,userPlantId);

@override
String toString() {
  return 'DiaryEvent(userPlantId: $userPlantId)';
}


}

/// @nodoc
abstract mixin class $DiaryEventCopyWith<$Res>  {
  factory $DiaryEventCopyWith(DiaryEvent value, $Res Function(DiaryEvent) _then) = _$DiaryEventCopyWithImpl;
@useResult
$Res call({
 String userPlantId
});




}
/// @nodoc
class _$DiaryEventCopyWithImpl<$Res>
    implements $DiaryEventCopyWith<$Res> {
  _$DiaryEventCopyWithImpl(this._self, this._then);

  final DiaryEvent _self;
  final $Res Function(DiaryEvent) _then;

/// Create a copy of DiaryEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? userPlantId = null,}) {
  return _then(_self.copyWith(
userPlantId: null == userPlantId ? _self.userPlantId : userPlantId // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// @nodoc


class _GetDiary implements DiaryEvent {
  const _GetDiary({required this.userPlantId});
  

@override final  String userPlantId;

/// Create a copy of DiaryEvent
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$GetDiaryCopyWith<_GetDiary> get copyWith => __$GetDiaryCopyWithImpl<_GetDiary>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _GetDiary&&(identical(other.userPlantId, userPlantId) || other.userPlantId == userPlantId));
}


@override
int get hashCode => Object.hash(runtimeType,userPlantId);

@override
String toString() {
  return 'DiaryEvent.getDiary(userPlantId: $userPlantId)';
}


}

/// @nodoc
abstract mixin class _$GetDiaryCopyWith<$Res> implements $DiaryEventCopyWith<$Res> {
  factory _$GetDiaryCopyWith(_GetDiary value, $Res Function(_GetDiary) _then) = __$GetDiaryCopyWithImpl;
@override @useResult
$Res call({
 String userPlantId
});




}
/// @nodoc
class __$GetDiaryCopyWithImpl<$Res>
    implements _$GetDiaryCopyWith<$Res> {
  __$GetDiaryCopyWithImpl(this._self, this._then);

  final _GetDiary _self;
  final $Res Function(_GetDiary) _then;

/// Create a copy of DiaryEvent
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? userPlantId = null,}) {
  return _then(_GetDiary(
userPlantId: null == userPlantId ? _self.userPlantId : userPlantId // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class _GetEvents implements DiaryEvent {
  const _GetEvents({required this.userPlantId});
  

@override final  String userPlantId;

/// Create a copy of DiaryEvent
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$GetEventsCopyWith<_GetEvents> get copyWith => __$GetEventsCopyWithImpl<_GetEvents>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _GetEvents&&(identical(other.userPlantId, userPlantId) || other.userPlantId == userPlantId));
}


@override
int get hashCode => Object.hash(runtimeType,userPlantId);

@override
String toString() {
  return 'DiaryEvent.getEvents(userPlantId: $userPlantId)';
}


}

/// @nodoc
abstract mixin class _$GetEventsCopyWith<$Res> implements $DiaryEventCopyWith<$Res> {
  factory _$GetEventsCopyWith(_GetEvents value, $Res Function(_GetEvents) _then) = __$GetEventsCopyWithImpl;
@override @useResult
$Res call({
 String userPlantId
});




}
/// @nodoc
class __$GetEventsCopyWithImpl<$Res>
    implements _$GetEventsCopyWith<$Res> {
  __$GetEventsCopyWithImpl(this._self, this._then);

  final _GetEvents _self;
  final $Res Function(_GetEvents) _then;

/// Create a copy of DiaryEvent
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? userPlantId = null,}) {
  return _then(_GetEvents(
userPlantId: null == userPlantId ? _self.userPlantId : userPlantId // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class _GetNotes implements DiaryEvent {
  const _GetNotes({required this.userPlantId});
  

@override final  String userPlantId;

/// Create a copy of DiaryEvent
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$GetNotesCopyWith<_GetNotes> get copyWith => __$GetNotesCopyWithImpl<_GetNotes>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _GetNotes&&(identical(other.userPlantId, userPlantId) || other.userPlantId == userPlantId));
}


@override
int get hashCode => Object.hash(runtimeType,userPlantId);

@override
String toString() {
  return 'DiaryEvent.getNotes(userPlantId: $userPlantId)';
}


}

/// @nodoc
abstract mixin class _$GetNotesCopyWith<$Res> implements $DiaryEventCopyWith<$Res> {
  factory _$GetNotesCopyWith(_GetNotes value, $Res Function(_GetNotes) _then) = __$GetNotesCopyWithImpl;
@override @useResult
$Res call({
 String userPlantId
});




}
/// @nodoc
class __$GetNotesCopyWithImpl<$Res>
    implements _$GetNotesCopyWith<$Res> {
  __$GetNotesCopyWithImpl(this._self, this._then);

  final _GetNotes _self;
  final $Res Function(_GetNotes) _then;

/// Create a copy of DiaryEvent
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? userPlantId = null,}) {
  return _then(_GetNotes(
userPlantId: null == userPlantId ? _self.userPlantId : userPlantId // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class _AddEvent implements DiaryEvent {
  const _AddEvent({required this.userPlantId, required this.eventDate});
  

@override final  String userPlantId;
 final  DateTime eventDate;

/// Create a copy of DiaryEvent
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$AddEventCopyWith<_AddEvent> get copyWith => __$AddEventCopyWithImpl<_AddEvent>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _AddEvent&&(identical(other.userPlantId, userPlantId) || other.userPlantId == userPlantId)&&(identical(other.eventDate, eventDate) || other.eventDate == eventDate));
}


@override
int get hashCode => Object.hash(runtimeType,userPlantId,eventDate);

@override
String toString() {
  return 'DiaryEvent.addEvent(userPlantId: $userPlantId, eventDate: $eventDate)';
}


}

/// @nodoc
abstract mixin class _$AddEventCopyWith<$Res> implements $DiaryEventCopyWith<$Res> {
  factory _$AddEventCopyWith(_AddEvent value, $Res Function(_AddEvent) _then) = __$AddEventCopyWithImpl;
@override @useResult
$Res call({
 String userPlantId, DateTime eventDate
});




}
/// @nodoc
class __$AddEventCopyWithImpl<$Res>
    implements _$AddEventCopyWith<$Res> {
  __$AddEventCopyWithImpl(this._self, this._then);

  final _AddEvent _self;
  final $Res Function(_AddEvent) _then;

/// Create a copy of DiaryEvent
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? userPlantId = null,Object? eventDate = null,}) {
  return _then(_AddEvent(
userPlantId: null == userPlantId ? _self.userPlantId : userPlantId // ignore: cast_nullable_to_non_nullable
as String,eventDate: null == eventDate ? _self.eventDate : eventDate // ignore: cast_nullable_to_non_nullable
as DateTime,
  ));
}


}

/// @nodoc


class _AddNote implements DiaryEvent {
  const _AddNote({required this.userPlantId, required this.noteText});
  

@override final  String userPlantId;
 final  String noteText;

/// Create a copy of DiaryEvent
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$AddNoteCopyWith<_AddNote> get copyWith => __$AddNoteCopyWithImpl<_AddNote>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _AddNote&&(identical(other.userPlantId, userPlantId) || other.userPlantId == userPlantId)&&(identical(other.noteText, noteText) || other.noteText == noteText));
}


@override
int get hashCode => Object.hash(runtimeType,userPlantId,noteText);

@override
String toString() {
  return 'DiaryEvent.addNote(userPlantId: $userPlantId, noteText: $noteText)';
}


}

/// @nodoc
abstract mixin class _$AddNoteCopyWith<$Res> implements $DiaryEventCopyWith<$Res> {
  factory _$AddNoteCopyWith(_AddNote value, $Res Function(_AddNote) _then) = __$AddNoteCopyWithImpl;
@override @useResult
$Res call({
 String userPlantId, String noteText
});




}
/// @nodoc
class __$AddNoteCopyWithImpl<$Res>
    implements _$AddNoteCopyWith<$Res> {
  __$AddNoteCopyWithImpl(this._self, this._then);

  final _AddNote _self;
  final $Res Function(_AddNote) _then;

/// Create a copy of DiaryEvent
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? userPlantId = null,Object? noteText = null,}) {
  return _then(_AddNote(
userPlantId: null == userPlantId ? _self.userPlantId : userPlantId // ignore: cast_nullable_to_non_nullable
as String,noteText: null == noteText ? _self.noteText : noteText // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class _ModifyEvent implements DiaryEvent {
  const _ModifyEvent({required this.userPlantId, required this.isDelete, required this.eventId});
  

@override final  String userPlantId;
 final  bool isDelete;
 final  String eventId;

/// Create a copy of DiaryEvent
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ModifyEventCopyWith<_ModifyEvent> get copyWith => __$ModifyEventCopyWithImpl<_ModifyEvent>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ModifyEvent&&(identical(other.userPlantId, userPlantId) || other.userPlantId == userPlantId)&&(identical(other.isDelete, isDelete) || other.isDelete == isDelete)&&(identical(other.eventId, eventId) || other.eventId == eventId));
}


@override
int get hashCode => Object.hash(runtimeType,userPlantId,isDelete,eventId);

@override
String toString() {
  return 'DiaryEvent.modifyEvent(userPlantId: $userPlantId, isDelete: $isDelete, eventId: $eventId)';
}


}

/// @nodoc
abstract mixin class _$ModifyEventCopyWith<$Res> implements $DiaryEventCopyWith<$Res> {
  factory _$ModifyEventCopyWith(_ModifyEvent value, $Res Function(_ModifyEvent) _then) = __$ModifyEventCopyWithImpl;
@override @useResult
$Res call({
 String userPlantId, bool isDelete, String eventId
});




}
/// @nodoc
class __$ModifyEventCopyWithImpl<$Res>
    implements _$ModifyEventCopyWith<$Res> {
  __$ModifyEventCopyWithImpl(this._self, this._then);

  final _ModifyEvent _self;
  final $Res Function(_ModifyEvent) _then;

/// Create a copy of DiaryEvent
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? userPlantId = null,Object? isDelete = null,Object? eventId = null,}) {
  return _then(_ModifyEvent(
userPlantId: null == userPlantId ? _self.userPlantId : userPlantId // ignore: cast_nullable_to_non_nullable
as String,isDelete: null == isDelete ? _self.isDelete : isDelete // ignore: cast_nullable_to_non_nullable
as bool,eventId: null == eventId ? _self.eventId : eventId // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class _ModifyNote implements DiaryEvent {
  const _ModifyNote({required this.userPlantId, required this.isDelete, required this.noteId, this.noteText});
  

@override final  String userPlantId;
 final  bool isDelete;
 final  String noteId;
 final  String? noteText;

/// Create a copy of DiaryEvent
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ModifyNoteCopyWith<_ModifyNote> get copyWith => __$ModifyNoteCopyWithImpl<_ModifyNote>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ModifyNote&&(identical(other.userPlantId, userPlantId) || other.userPlantId == userPlantId)&&(identical(other.isDelete, isDelete) || other.isDelete == isDelete)&&(identical(other.noteId, noteId) || other.noteId == noteId)&&(identical(other.noteText, noteText) || other.noteText == noteText));
}


@override
int get hashCode => Object.hash(runtimeType,userPlantId,isDelete,noteId,noteText);

@override
String toString() {
  return 'DiaryEvent.modifyNote(userPlantId: $userPlantId, isDelete: $isDelete, noteId: $noteId, noteText: $noteText)';
}


}

/// @nodoc
abstract mixin class _$ModifyNoteCopyWith<$Res> implements $DiaryEventCopyWith<$Res> {
  factory _$ModifyNoteCopyWith(_ModifyNote value, $Res Function(_ModifyNote) _then) = __$ModifyNoteCopyWithImpl;
@override @useResult
$Res call({
 String userPlantId, bool isDelete, String noteId, String? noteText
});




}
/// @nodoc
class __$ModifyNoteCopyWithImpl<$Res>
    implements _$ModifyNoteCopyWith<$Res> {
  __$ModifyNoteCopyWithImpl(this._self, this._then);

  final _ModifyNote _self;
  final $Res Function(_ModifyNote) _then;

/// Create a copy of DiaryEvent
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? userPlantId = null,Object? isDelete = null,Object? noteId = null,Object? noteText = freezed,}) {
  return _then(_ModifyNote(
userPlantId: null == userPlantId ? _self.userPlantId : userPlantId // ignore: cast_nullable_to_non_nullable
as String,isDelete: null == isDelete ? _self.isDelete : isDelete // ignore: cast_nullable_to_non_nullable
as bool,noteId: null == noteId ? _self.noteId : noteId // ignore: cast_nullable_to_non_nullable
as String,noteText: freezed == noteText ? _self.noteText : noteText // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

/// @nodoc
mixin _$DiaryState {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is DiaryState);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'DiaryState()';
}


}

/// @nodoc
class $DiaryStateCopyWith<$Res>  {
$DiaryStateCopyWith(DiaryState _, $Res Function(DiaryState) __);
}


/// @nodoc


class Initial implements DiaryState {
  const Initial();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Initial);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'DiaryState.initial()';
}


}




/// @nodoc


class Loading implements DiaryState {
  const Loading();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Loading);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'DiaryState.loading()';
}


}




/// @nodoc


class Loaded implements DiaryState {
  const Loaded({required final  List<DiaryDocsResponseEntity> plantEvents, required final  List<DiaryDocsResponseEntity> plantNotes}): _plantEvents = plantEvents,_plantNotes = plantNotes;
  

 final  List<DiaryDocsResponseEntity> _plantEvents;
 List<DiaryDocsResponseEntity> get plantEvents {
  if (_plantEvents is EqualUnmodifiableListView) return _plantEvents;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_plantEvents);
}

 final  List<DiaryDocsResponseEntity> _plantNotes;
 List<DiaryDocsResponseEntity> get plantNotes {
  if (_plantNotes is EqualUnmodifiableListView) return _plantNotes;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_plantNotes);
}


/// Create a copy of DiaryState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$LoadedCopyWith<Loaded> get copyWith => _$LoadedCopyWithImpl<Loaded>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Loaded&&const DeepCollectionEquality().equals(other._plantEvents, _plantEvents)&&const DeepCollectionEquality().equals(other._plantNotes, _plantNotes));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_plantEvents),const DeepCollectionEquality().hash(_plantNotes));

@override
String toString() {
  return 'DiaryState.loaded(plantEvents: $plantEvents, plantNotes: $plantNotes)';
}


}

/// @nodoc
abstract mixin class $LoadedCopyWith<$Res> implements $DiaryStateCopyWith<$Res> {
  factory $LoadedCopyWith(Loaded value, $Res Function(Loaded) _then) = _$LoadedCopyWithImpl;
@useResult
$Res call({
 List<DiaryDocsResponseEntity> plantEvents, List<DiaryDocsResponseEntity> plantNotes
});




}
/// @nodoc
class _$LoadedCopyWithImpl<$Res>
    implements $LoadedCopyWith<$Res> {
  _$LoadedCopyWithImpl(this._self, this._then);

  final Loaded _self;
  final $Res Function(Loaded) _then;

/// Create a copy of DiaryState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? plantEvents = null,Object? plantNotes = null,}) {
  return _then(Loaded(
plantEvents: null == plantEvents ? _self._plantEvents : plantEvents // ignore: cast_nullable_to_non_nullable
as List<DiaryDocsResponseEntity>,plantNotes: null == plantNotes ? _self._plantNotes : plantNotes // ignore: cast_nullable_to_non_nullable
as List<DiaryDocsResponseEntity>,
  ));
}


}

/// @nodoc


class Error implements DiaryState {
  const Error({required this.message});
  

 final  String message;

/// Create a copy of DiaryState
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
  return 'DiaryState.error(message: $message)';
}


}

/// @nodoc
abstract mixin class $ErrorCopyWith<$Res> implements $DiaryStateCopyWith<$Res> {
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

/// Create a copy of DiaryState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? message = null,}) {
  return _then(Error(
message: null == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
