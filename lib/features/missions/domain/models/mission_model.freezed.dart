// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'mission_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$MissionModel {

 int get id; String get name; bool get isCompleted; int get requiredFatigue; MissionPriority get priority;
/// Create a copy of MissionModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$MissionModelCopyWith<MissionModel> get copyWith => _$MissionModelCopyWithImpl<MissionModel>(this as MissionModel, _$identity);

  /// Serializes this MissionModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is MissionModel&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.isCompleted, isCompleted) || other.isCompleted == isCompleted)&&(identical(other.requiredFatigue, requiredFatigue) || other.requiredFatigue == requiredFatigue)&&(identical(other.priority, priority) || other.priority == priority));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,name,isCompleted,requiredFatigue,priority);

@override
String toString() {
  return 'MissionModel(id: $id, name: $name, isCompleted: $isCompleted, requiredFatigue: $requiredFatigue, priority: $priority)';
}


}

/// @nodoc
abstract mixin class $MissionModelCopyWith<$Res>  {
  factory $MissionModelCopyWith(MissionModel value, $Res Function(MissionModel) _then) = _$MissionModelCopyWithImpl;
@useResult
$Res call({
 int id, String name, bool isCompleted, int requiredFatigue, MissionPriority priority
});




}
/// @nodoc
class _$MissionModelCopyWithImpl<$Res>
    implements $MissionModelCopyWith<$Res> {
  _$MissionModelCopyWithImpl(this._self, this._then);

  final MissionModel _self;
  final $Res Function(MissionModel) _then;

/// Create a copy of MissionModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? name = null,Object? isCompleted = null,Object? requiredFatigue = null,Object? priority = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,isCompleted: null == isCompleted ? _self.isCompleted : isCompleted // ignore: cast_nullable_to_non_nullable
as bool,requiredFatigue: null == requiredFatigue ? _self.requiredFatigue : requiredFatigue // ignore: cast_nullable_to_non_nullable
as int,priority: null == priority ? _self.priority : priority // ignore: cast_nullable_to_non_nullable
as MissionPriority,
  ));
}

}


/// @nodoc
@JsonSerializable()

class _MissionModel implements MissionModel {
  const _MissionModel({required this.id, required this.name, required this.isCompleted, required this.requiredFatigue, required this.priority});
  factory _MissionModel.fromJson(Map<String, dynamic> json) => _$MissionModelFromJson(json);

@override final  int id;
@override final  String name;
@override final  bool isCompleted;
@override final  int requiredFatigue;
@override final  MissionPriority priority;

/// Create a copy of MissionModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$MissionModelCopyWith<_MissionModel> get copyWith => __$MissionModelCopyWithImpl<_MissionModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$MissionModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _MissionModel&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.isCompleted, isCompleted) || other.isCompleted == isCompleted)&&(identical(other.requiredFatigue, requiredFatigue) || other.requiredFatigue == requiredFatigue)&&(identical(other.priority, priority) || other.priority == priority));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,name,isCompleted,requiredFatigue,priority);

@override
String toString() {
  return 'MissionModel(id: $id, name: $name, isCompleted: $isCompleted, requiredFatigue: $requiredFatigue, priority: $priority)';
}


}

/// @nodoc
abstract mixin class _$MissionModelCopyWith<$Res> implements $MissionModelCopyWith<$Res> {
  factory _$MissionModelCopyWith(_MissionModel value, $Res Function(_MissionModel) _then) = __$MissionModelCopyWithImpl;
@override @useResult
$Res call({
 int id, String name, bool isCompleted, int requiredFatigue, MissionPriority priority
});




}
/// @nodoc
class __$MissionModelCopyWithImpl<$Res>
    implements _$MissionModelCopyWith<$Res> {
  __$MissionModelCopyWithImpl(this._self, this._then);

  final _MissionModel _self;
  final $Res Function(_MissionModel) _then;

/// Create a copy of MissionModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? name = null,Object? isCompleted = null,Object? requiredFatigue = null,Object? priority = null,}) {
  return _then(_MissionModel(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,isCompleted: null == isCompleted ? _self.isCompleted : isCompleted // ignore: cast_nullable_to_non_nullable
as bool,requiredFatigue: null == requiredFatigue ? _self.requiredFatigue : requiredFatigue // ignore: cast_nullable_to_non_nullable
as int,priority: null == priority ? _self.priority : priority // ignore: cast_nullable_to_non_nullable
as MissionPriority,
  ));
}


}

// dart format on
