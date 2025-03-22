// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'character_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$CharacterModel {

 int get id; String get name; String get imageUrl; int get fatigue; List<MissionModel> get missions;
/// Create a copy of CharacterModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CharacterModelCopyWith<CharacterModel> get copyWith => _$CharacterModelCopyWithImpl<CharacterModel>(this as CharacterModel, _$identity);

  /// Serializes this CharacterModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CharacterModel&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.imageUrl, imageUrl) || other.imageUrl == imageUrl)&&(identical(other.fatigue, fatigue) || other.fatigue == fatigue)&&const DeepCollectionEquality().equals(other.missions, missions));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,name,imageUrl,fatigue,const DeepCollectionEquality().hash(missions));

@override
String toString() {
  return 'CharacterModel(id: $id, name: $name, imageUrl: $imageUrl, fatigue: $fatigue, missions: $missions)';
}


}

/// @nodoc
abstract mixin class $CharacterModelCopyWith<$Res>  {
  factory $CharacterModelCopyWith(CharacterModel value, $Res Function(CharacterModel) _then) = _$CharacterModelCopyWithImpl;
@useResult
$Res call({
 int id, String name, String imageUrl, int fatigue, List<MissionModel> missions
});




}
/// @nodoc
class _$CharacterModelCopyWithImpl<$Res>
    implements $CharacterModelCopyWith<$Res> {
  _$CharacterModelCopyWithImpl(this._self, this._then);

  final CharacterModel _self;
  final $Res Function(CharacterModel) _then;

/// Create a copy of CharacterModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? name = null,Object? imageUrl = null,Object? fatigue = null,Object? missions = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,imageUrl: null == imageUrl ? _self.imageUrl : imageUrl // ignore: cast_nullable_to_non_nullable
as String,fatigue: null == fatigue ? _self.fatigue : fatigue // ignore: cast_nullable_to_non_nullable
as int,missions: null == missions ? _self.missions : missions // ignore: cast_nullable_to_non_nullable
as List<MissionModel>,
  ));
}

}


/// @nodoc
@JsonSerializable()

class _CharacterModel implements CharacterModel {
  const _CharacterModel({required this.id, required this.name, required this.imageUrl, required this.fatigue, required final  List<MissionModel> missions}): _missions = missions;
  factory _CharacterModel.fromJson(Map<String, dynamic> json) => _$CharacterModelFromJson(json);

@override final  int id;
@override final  String name;
@override final  String imageUrl;
@override final  int fatigue;
 final  List<MissionModel> _missions;
@override List<MissionModel> get missions {
  if (_missions is EqualUnmodifiableListView) return _missions;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_missions);
}


/// Create a copy of CharacterModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$CharacterModelCopyWith<_CharacterModel> get copyWith => __$CharacterModelCopyWithImpl<_CharacterModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$CharacterModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _CharacterModel&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.imageUrl, imageUrl) || other.imageUrl == imageUrl)&&(identical(other.fatigue, fatigue) || other.fatigue == fatigue)&&const DeepCollectionEquality().equals(other._missions, _missions));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,name,imageUrl,fatigue,const DeepCollectionEquality().hash(_missions));

@override
String toString() {
  return 'CharacterModel(id: $id, name: $name, imageUrl: $imageUrl, fatigue: $fatigue, missions: $missions)';
}


}

/// @nodoc
abstract mixin class _$CharacterModelCopyWith<$Res> implements $CharacterModelCopyWith<$Res> {
  factory _$CharacterModelCopyWith(_CharacterModel value, $Res Function(_CharacterModel) _then) = __$CharacterModelCopyWithImpl;
@override @useResult
$Res call({
 int id, String name, String imageUrl, int fatigue, List<MissionModel> missions
});




}
/// @nodoc
class __$CharacterModelCopyWithImpl<$Res>
    implements _$CharacterModelCopyWith<$Res> {
  __$CharacterModelCopyWithImpl(this._self, this._then);

  final _CharacterModel _self;
  final $Res Function(_CharacterModel) _then;

/// Create a copy of CharacterModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? name = null,Object? imageUrl = null,Object? fatigue = null,Object? missions = null,}) {
  return _then(_CharacterModel(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,imageUrl: null == imageUrl ? _self.imageUrl : imageUrl // ignore: cast_nullable_to_non_nullable
as String,fatigue: null == fatigue ? _self.fatigue : fatigue // ignore: cast_nullable_to_non_nullable
as int,missions: null == missions ? _self._missions : missions // ignore: cast_nullable_to_non_nullable
as List<MissionModel>,
  ));
}


}

// dart format on
