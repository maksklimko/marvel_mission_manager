// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'characters_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$CharactersEvent {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CharactersEvent);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'CharactersEvent()';
}


}

/// @nodoc
class $CharactersEventCopyWith<$Res>  {
$CharactersEventCopyWith(CharactersEvent _, $Res Function(CharactersEvent) __);
}


/// @nodoc


class CharactersLoadEvent implements CharactersEvent {
  const CharactersLoadEvent();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CharactersLoadEvent);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'CharactersEvent.load()';
}


}




/// @nodoc


class CharactersAddMissionEvent implements CharactersEvent {
  const CharactersAddMissionEvent(this.params);
  

 final  AddMissionParams params;

/// Create a copy of CharactersEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CharactersAddMissionEventCopyWith<CharactersAddMissionEvent> get copyWith => _$CharactersAddMissionEventCopyWithImpl<CharactersAddMissionEvent>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CharactersAddMissionEvent&&(identical(other.params, params) || other.params == params));
}


@override
int get hashCode => Object.hash(runtimeType,params);

@override
String toString() {
  return 'CharactersEvent.addMission(params: $params)';
}


}

/// @nodoc
abstract mixin class $CharactersAddMissionEventCopyWith<$Res> implements $CharactersEventCopyWith<$Res> {
  factory $CharactersAddMissionEventCopyWith(CharactersAddMissionEvent value, $Res Function(CharactersAddMissionEvent) _then) = _$CharactersAddMissionEventCopyWithImpl;
@useResult
$Res call({
 AddMissionParams params
});




}
/// @nodoc
class _$CharactersAddMissionEventCopyWithImpl<$Res>
    implements $CharactersAddMissionEventCopyWith<$Res> {
  _$CharactersAddMissionEventCopyWithImpl(this._self, this._then);

  final CharactersAddMissionEvent _self;
  final $Res Function(CharactersAddMissionEvent) _then;

/// Create a copy of CharactersEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? params = null,}) {
  return _then(CharactersAddMissionEvent(
null == params ? _self.params : params // ignore: cast_nullable_to_non_nullable
as AddMissionParams,
  ));
}


}

/// @nodoc
mixin _$CharactersState {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CharactersState);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'CharactersState()';
}


}

/// @nodoc
class $CharactersStateCopyWith<$Res>  {
$CharactersStateCopyWith(CharactersState _, $Res Function(CharactersState) __);
}


/// @nodoc


class CharactersInitialState implements CharactersState {
  const CharactersInitialState();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CharactersInitialState);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'CharactersState.initial()';
}


}




/// @nodoc


class CharactersLoadingState implements CharactersState {
  const CharactersLoadingState();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CharactersLoadingState);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'CharactersState.loading()';
}


}




/// @nodoc


class CharactersLoadedState implements CharactersState {
  const CharactersLoadedState(final  List<Character> characters): _characters = characters;
  

 final  List<Character> _characters;
 List<Character> get characters {
  if (_characters is EqualUnmodifiableListView) return _characters;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_characters);
}


/// Create a copy of CharactersState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CharactersLoadedStateCopyWith<CharactersLoadedState> get copyWith => _$CharactersLoadedStateCopyWithImpl<CharactersLoadedState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CharactersLoadedState&&const DeepCollectionEquality().equals(other._characters, _characters));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_characters));

@override
String toString() {
  return 'CharactersState.loaded(characters: $characters)';
}


}

/// @nodoc
abstract mixin class $CharactersLoadedStateCopyWith<$Res> implements $CharactersStateCopyWith<$Res> {
  factory $CharactersLoadedStateCopyWith(CharactersLoadedState value, $Res Function(CharactersLoadedState) _then) = _$CharactersLoadedStateCopyWithImpl;
@useResult
$Res call({
 List<Character> characters
});




}
/// @nodoc
class _$CharactersLoadedStateCopyWithImpl<$Res>
    implements $CharactersLoadedStateCopyWith<$Res> {
  _$CharactersLoadedStateCopyWithImpl(this._self, this._then);

  final CharactersLoadedState _self;
  final $Res Function(CharactersLoadedState) _then;

/// Create a copy of CharactersState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? characters = null,}) {
  return _then(CharactersLoadedState(
null == characters ? _self._characters : characters // ignore: cast_nullable_to_non_nullable
as List<Character>,
  ));
}


}

/// @nodoc


class CharactersErrorState implements CharactersState {
  const CharactersErrorState(this.failure);
  

 final  Failure failure;

/// Create a copy of CharactersState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CharactersErrorStateCopyWith<CharactersErrorState> get copyWith => _$CharactersErrorStateCopyWithImpl<CharactersErrorState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CharactersErrorState&&(identical(other.failure, failure) || other.failure == failure));
}


@override
int get hashCode => Object.hash(runtimeType,failure);

@override
String toString() {
  return 'CharactersState.error(failure: $failure)';
}


}

/// @nodoc
abstract mixin class $CharactersErrorStateCopyWith<$Res> implements $CharactersStateCopyWith<$Res> {
  factory $CharactersErrorStateCopyWith(CharactersErrorState value, $Res Function(CharactersErrorState) _then) = _$CharactersErrorStateCopyWithImpl;
@useResult
$Res call({
 Failure failure
});




}
/// @nodoc
class _$CharactersErrorStateCopyWithImpl<$Res>
    implements $CharactersErrorStateCopyWith<$Res> {
  _$CharactersErrorStateCopyWithImpl(this._self, this._then);

  final CharactersErrorState _self;
  final $Res Function(CharactersErrorState) _then;

/// Create a copy of CharactersState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? failure = null,}) {
  return _then(CharactersErrorState(
null == failure ? _self.failure : failure // ignore: cast_nullable_to_non_nullable
as Failure,
  ));
}


}

// dart format on
