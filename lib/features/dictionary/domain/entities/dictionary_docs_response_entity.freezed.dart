// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'dictionary_docs_response_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$DictionaryDocsResponseEntity {

 String get id; String get scientificName; String get commonName; String? get imageUrl; String get light; double get optimalTemp; int get wateringFreq; double get humidity; String get fertilizer; String get transplant;
/// Create a copy of DictionaryDocsResponseEntity
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$DictionaryDocsResponseEntityCopyWith<DictionaryDocsResponseEntity> get copyWith => _$DictionaryDocsResponseEntityCopyWithImpl<DictionaryDocsResponseEntity>(this as DictionaryDocsResponseEntity, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is DictionaryDocsResponseEntity&&(identical(other.id, id) || other.id == id)&&(identical(other.scientificName, scientificName) || other.scientificName == scientificName)&&(identical(other.commonName, commonName) || other.commonName == commonName)&&(identical(other.imageUrl, imageUrl) || other.imageUrl == imageUrl)&&(identical(other.light, light) || other.light == light)&&(identical(other.optimalTemp, optimalTemp) || other.optimalTemp == optimalTemp)&&(identical(other.wateringFreq, wateringFreq) || other.wateringFreq == wateringFreq)&&(identical(other.humidity, humidity) || other.humidity == humidity)&&(identical(other.fertilizer, fertilizer) || other.fertilizer == fertilizer)&&(identical(other.transplant, transplant) || other.transplant == transplant));
}


@override
int get hashCode => Object.hash(runtimeType,id,scientificName,commonName,imageUrl,light,optimalTemp,wateringFreq,humidity,fertilizer,transplant);

@override
String toString() {
  return 'DictionaryDocsResponseEntity(id: $id, scientificName: $scientificName, commonName: $commonName, imageUrl: $imageUrl, light: $light, optimalTemp: $optimalTemp, wateringFreq: $wateringFreq, humidity: $humidity, fertilizer: $fertilizer, transplant: $transplant)';
}


}

/// @nodoc
abstract mixin class $DictionaryDocsResponseEntityCopyWith<$Res>  {
  factory $DictionaryDocsResponseEntityCopyWith(DictionaryDocsResponseEntity value, $Res Function(DictionaryDocsResponseEntity) _then) = _$DictionaryDocsResponseEntityCopyWithImpl;
@useResult
$Res call({
 String id, String scientificName, String commonName, String? imageUrl, String light, double optimalTemp, int wateringFreq, double humidity, String fertilizer, String transplant
});




}
/// @nodoc
class _$DictionaryDocsResponseEntityCopyWithImpl<$Res>
    implements $DictionaryDocsResponseEntityCopyWith<$Res> {
  _$DictionaryDocsResponseEntityCopyWithImpl(this._self, this._then);

  final DictionaryDocsResponseEntity _self;
  final $Res Function(DictionaryDocsResponseEntity) _then;

/// Create a copy of DictionaryDocsResponseEntity
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? scientificName = null,Object? commonName = null,Object? imageUrl = freezed,Object? light = null,Object? optimalTemp = null,Object? wateringFreq = null,Object? humidity = null,Object? fertilizer = null,Object? transplant = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,scientificName: null == scientificName ? _self.scientificName : scientificName // ignore: cast_nullable_to_non_nullable
as String,commonName: null == commonName ? _self.commonName : commonName // ignore: cast_nullable_to_non_nullable
as String,imageUrl: freezed == imageUrl ? _self.imageUrl : imageUrl // ignore: cast_nullable_to_non_nullable
as String?,light: null == light ? _self.light : light // ignore: cast_nullable_to_non_nullable
as String,optimalTemp: null == optimalTemp ? _self.optimalTemp : optimalTemp // ignore: cast_nullable_to_non_nullable
as double,wateringFreq: null == wateringFreq ? _self.wateringFreq : wateringFreq // ignore: cast_nullable_to_non_nullable
as int,humidity: null == humidity ? _self.humidity : humidity // ignore: cast_nullable_to_non_nullable
as double,fertilizer: null == fertilizer ? _self.fertilizer : fertilizer // ignore: cast_nullable_to_non_nullable
as String,transplant: null == transplant ? _self.transplant : transplant // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// @nodoc


class _DictionaryDocsResponseEntity implements DictionaryDocsResponseEntity {
  const _DictionaryDocsResponseEntity({required this.id, required this.scientificName, required this.commonName, this.imageUrl, required this.light, required this.optimalTemp, required this.wateringFreq, required this.humidity, required this.fertilizer, required this.transplant});
  

@override final  String id;
@override final  String scientificName;
@override final  String commonName;
@override final  String? imageUrl;
@override final  String light;
@override final  double optimalTemp;
@override final  int wateringFreq;
@override final  double humidity;
@override final  String fertilizer;
@override final  String transplant;

/// Create a copy of DictionaryDocsResponseEntity
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$DictionaryDocsResponseEntityCopyWith<_DictionaryDocsResponseEntity> get copyWith => __$DictionaryDocsResponseEntityCopyWithImpl<_DictionaryDocsResponseEntity>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _DictionaryDocsResponseEntity&&(identical(other.id, id) || other.id == id)&&(identical(other.scientificName, scientificName) || other.scientificName == scientificName)&&(identical(other.commonName, commonName) || other.commonName == commonName)&&(identical(other.imageUrl, imageUrl) || other.imageUrl == imageUrl)&&(identical(other.light, light) || other.light == light)&&(identical(other.optimalTemp, optimalTemp) || other.optimalTemp == optimalTemp)&&(identical(other.wateringFreq, wateringFreq) || other.wateringFreq == wateringFreq)&&(identical(other.humidity, humidity) || other.humidity == humidity)&&(identical(other.fertilizer, fertilizer) || other.fertilizer == fertilizer)&&(identical(other.transplant, transplant) || other.transplant == transplant));
}


@override
int get hashCode => Object.hash(runtimeType,id,scientificName,commonName,imageUrl,light,optimalTemp,wateringFreq,humidity,fertilizer,transplant);

@override
String toString() {
  return 'DictionaryDocsResponseEntity(id: $id, scientificName: $scientificName, commonName: $commonName, imageUrl: $imageUrl, light: $light, optimalTemp: $optimalTemp, wateringFreq: $wateringFreq, humidity: $humidity, fertilizer: $fertilizer, transplant: $transplant)';
}


}

/// @nodoc
abstract mixin class _$DictionaryDocsResponseEntityCopyWith<$Res> implements $DictionaryDocsResponseEntityCopyWith<$Res> {
  factory _$DictionaryDocsResponseEntityCopyWith(_DictionaryDocsResponseEntity value, $Res Function(_DictionaryDocsResponseEntity) _then) = __$DictionaryDocsResponseEntityCopyWithImpl;
@override @useResult
$Res call({
 String id, String scientificName, String commonName, String? imageUrl, String light, double optimalTemp, int wateringFreq, double humidity, String fertilizer, String transplant
});




}
/// @nodoc
class __$DictionaryDocsResponseEntityCopyWithImpl<$Res>
    implements _$DictionaryDocsResponseEntityCopyWith<$Res> {
  __$DictionaryDocsResponseEntityCopyWithImpl(this._self, this._then);

  final _DictionaryDocsResponseEntity _self;
  final $Res Function(_DictionaryDocsResponseEntity) _then;

/// Create a copy of DictionaryDocsResponseEntity
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? scientificName = null,Object? commonName = null,Object? imageUrl = freezed,Object? light = null,Object? optimalTemp = null,Object? wateringFreq = null,Object? humidity = null,Object? fertilizer = null,Object? transplant = null,}) {
  return _then(_DictionaryDocsResponseEntity(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,scientificName: null == scientificName ? _self.scientificName : scientificName // ignore: cast_nullable_to_non_nullable
as String,commonName: null == commonName ? _self.commonName : commonName // ignore: cast_nullable_to_non_nullable
as String,imageUrl: freezed == imageUrl ? _self.imageUrl : imageUrl // ignore: cast_nullable_to_non_nullable
as String?,light: null == light ? _self.light : light // ignore: cast_nullable_to_non_nullable
as String,optimalTemp: null == optimalTemp ? _self.optimalTemp : optimalTemp // ignore: cast_nullable_to_non_nullable
as double,wateringFreq: null == wateringFreq ? _self.wateringFreq : wateringFreq // ignore: cast_nullable_to_non_nullable
as int,humidity: null == humidity ? _self.humidity : humidity // ignore: cast_nullable_to_non_nullable
as double,fertilizer: null == fertilizer ? _self.fertilizer : fertilizer // ignore: cast_nullable_to_non_nullable
as String,transplant: null == transplant ? _self.transplant : transplant // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
