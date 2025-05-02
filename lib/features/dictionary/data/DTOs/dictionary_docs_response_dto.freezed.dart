// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'dictionary_docs_response_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$DictionaryDocsResponseDto {

 String get id;@JsonKey(name: 'scientific_name') String get scientificName;@JsonKey(name: 'common_name') String get commonName;@JsonKey(name: 'image_url') String? get imageUrl; String get light;@JsonKey(name: 'optimal_temp') double get optimalTemp;@JsonKey(name: 'watering_freq') int get wateringFreq; double get humidity; String get fertilizer; String get transplant;
/// Create a copy of DictionaryDocsResponseDto
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$DictionaryDocsResponseDtoCopyWith<DictionaryDocsResponseDto> get copyWith => _$DictionaryDocsResponseDtoCopyWithImpl<DictionaryDocsResponseDto>(this as DictionaryDocsResponseDto, _$identity);

  /// Serializes this DictionaryDocsResponseDto to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is DictionaryDocsResponseDto&&(identical(other.id, id) || other.id == id)&&(identical(other.scientificName, scientificName) || other.scientificName == scientificName)&&(identical(other.commonName, commonName) || other.commonName == commonName)&&(identical(other.imageUrl, imageUrl) || other.imageUrl == imageUrl)&&(identical(other.light, light) || other.light == light)&&(identical(other.optimalTemp, optimalTemp) || other.optimalTemp == optimalTemp)&&(identical(other.wateringFreq, wateringFreq) || other.wateringFreq == wateringFreq)&&(identical(other.humidity, humidity) || other.humidity == humidity)&&(identical(other.fertilizer, fertilizer) || other.fertilizer == fertilizer)&&(identical(other.transplant, transplant) || other.transplant == transplant));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,scientificName,commonName,imageUrl,light,optimalTemp,wateringFreq,humidity,fertilizer,transplant);

@override
String toString() {
  return 'DictionaryDocsResponseDto(id: $id, scientificName: $scientificName, commonName: $commonName, imageUrl: $imageUrl, light: $light, optimalTemp: $optimalTemp, wateringFreq: $wateringFreq, humidity: $humidity, fertilizer: $fertilizer, transplant: $transplant)';
}


}

/// @nodoc
abstract mixin class $DictionaryDocsResponseDtoCopyWith<$Res>  {
  factory $DictionaryDocsResponseDtoCopyWith(DictionaryDocsResponseDto value, $Res Function(DictionaryDocsResponseDto) _then) = _$DictionaryDocsResponseDtoCopyWithImpl;
@useResult
$Res call({
 String id,@JsonKey(name: 'scientific_name') String scientificName,@JsonKey(name: 'common_name') String commonName,@JsonKey(name: 'image_url') String? imageUrl, String light,@JsonKey(name: 'optimal_temp') double optimalTemp,@JsonKey(name: 'watering_freq') int wateringFreq, double humidity, String fertilizer, String transplant
});




}
/// @nodoc
class _$DictionaryDocsResponseDtoCopyWithImpl<$Res>
    implements $DictionaryDocsResponseDtoCopyWith<$Res> {
  _$DictionaryDocsResponseDtoCopyWithImpl(this._self, this._then);

  final DictionaryDocsResponseDto _self;
  final $Res Function(DictionaryDocsResponseDto) _then;

/// Create a copy of DictionaryDocsResponseDto
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
@JsonSerializable()

class _DictionaryDocsResponseDto implements DictionaryDocsResponseDto {
  const _DictionaryDocsResponseDto({required this.id, @JsonKey(name: 'scientific_name') required this.scientificName, @JsonKey(name: 'common_name') required this.commonName, @JsonKey(name: 'image_url') this.imageUrl, required this.light, @JsonKey(name: 'optimal_temp') required this.optimalTemp, @JsonKey(name: 'watering_freq') required this.wateringFreq, required this.humidity, required this.fertilizer, required this.transplant});
  factory _DictionaryDocsResponseDto.fromJson(Map<String, dynamic> json) => _$DictionaryDocsResponseDtoFromJson(json);

@override final  String id;
@override@JsonKey(name: 'scientific_name') final  String scientificName;
@override@JsonKey(name: 'common_name') final  String commonName;
@override@JsonKey(name: 'image_url') final  String? imageUrl;
@override final  String light;
@override@JsonKey(name: 'optimal_temp') final  double optimalTemp;
@override@JsonKey(name: 'watering_freq') final  int wateringFreq;
@override final  double humidity;
@override final  String fertilizer;
@override final  String transplant;

/// Create a copy of DictionaryDocsResponseDto
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$DictionaryDocsResponseDtoCopyWith<_DictionaryDocsResponseDto> get copyWith => __$DictionaryDocsResponseDtoCopyWithImpl<_DictionaryDocsResponseDto>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$DictionaryDocsResponseDtoToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _DictionaryDocsResponseDto&&(identical(other.id, id) || other.id == id)&&(identical(other.scientificName, scientificName) || other.scientificName == scientificName)&&(identical(other.commonName, commonName) || other.commonName == commonName)&&(identical(other.imageUrl, imageUrl) || other.imageUrl == imageUrl)&&(identical(other.light, light) || other.light == light)&&(identical(other.optimalTemp, optimalTemp) || other.optimalTemp == optimalTemp)&&(identical(other.wateringFreq, wateringFreq) || other.wateringFreq == wateringFreq)&&(identical(other.humidity, humidity) || other.humidity == humidity)&&(identical(other.fertilizer, fertilizer) || other.fertilizer == fertilizer)&&(identical(other.transplant, transplant) || other.transplant == transplant));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,scientificName,commonName,imageUrl,light,optimalTemp,wateringFreq,humidity,fertilizer,transplant);

@override
String toString() {
  return 'DictionaryDocsResponseDto(id: $id, scientificName: $scientificName, commonName: $commonName, imageUrl: $imageUrl, light: $light, optimalTemp: $optimalTemp, wateringFreq: $wateringFreq, humidity: $humidity, fertilizer: $fertilizer, transplant: $transplant)';
}


}

/// @nodoc
abstract mixin class _$DictionaryDocsResponseDtoCopyWith<$Res> implements $DictionaryDocsResponseDtoCopyWith<$Res> {
  factory _$DictionaryDocsResponseDtoCopyWith(_DictionaryDocsResponseDto value, $Res Function(_DictionaryDocsResponseDto) _then) = __$DictionaryDocsResponseDtoCopyWithImpl;
@override @useResult
$Res call({
 String id,@JsonKey(name: 'scientific_name') String scientificName,@JsonKey(name: 'common_name') String commonName,@JsonKey(name: 'image_url') String? imageUrl, String light,@JsonKey(name: 'optimal_temp') double optimalTemp,@JsonKey(name: 'watering_freq') int wateringFreq, double humidity, String fertilizer, String transplant
});




}
/// @nodoc
class __$DictionaryDocsResponseDtoCopyWithImpl<$Res>
    implements _$DictionaryDocsResponseDtoCopyWith<$Res> {
  __$DictionaryDocsResponseDtoCopyWithImpl(this._self, this._then);

  final _DictionaryDocsResponseDto _self;
  final $Res Function(_DictionaryDocsResponseDto) _then;

/// Create a copy of DictionaryDocsResponseDto
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? scientificName = null,Object? commonName = null,Object? imageUrl = freezed,Object? light = null,Object? optimalTemp = null,Object? wateringFreq = null,Object? humidity = null,Object? fertilizer = null,Object? transplant = null,}) {
  return _then(_DictionaryDocsResponseDto(
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
