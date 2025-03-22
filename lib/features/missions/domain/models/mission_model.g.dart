// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'mission_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_MissionModel _$MissionModelFromJson(Map<String, dynamic> json) =>
    _MissionModel(
      id: (json['id'] as num).toInt(),
      name: json['name'] as String,
      isCompleted: json['isCompleted'] as bool,
      requiredFatigue: (json['requiredFatigue'] as num).toInt(),
      priority: $enumDecode(_$MissionPriorityEnumMap, json['priority']),
    );

Map<String, dynamic> _$MissionModelToJson(_MissionModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'isCompleted': instance.isCompleted,
      'requiredFatigue': instance.requiredFatigue,
      'priority': _$MissionPriorityEnumMap[instance.priority]!,
    };

const _$MissionPriorityEnumMap = {
  MissionPriority.low: 'low',
  MissionPriority.medium: 'medium',
  MissionPriority.high: 'high',
  MissionPriority.worldEnding: 'worldEnding',
};
