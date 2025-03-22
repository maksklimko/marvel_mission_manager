// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'character_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_CharacterModel _$CharacterModelFromJson(Map<String, dynamic> json) =>
    _CharacterModel(
      id: (json['id'] as num).toInt(),
      name: json['name'] as String,
      imageUrl: json['imageUrl'] as String,
      fatigue: (json['fatigue'] as num).toInt(),
      missions:
          (json['missions'] as List<dynamic>)
              .map((e) => MissionModel.fromJson(e as Map<String, dynamic>))
              .toList(),
    );

Map<String, dynamic> _$CharacterModelToJson(_CharacterModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'imageUrl': instance.imageUrl,
      'fatigue': instance.fatigue,
      'missions': instance.missions,
    };
