// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'schedules.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$SchedulesModelImpl _$$SchedulesModelImplFromJson(Map<String, dynamic> json) =>
    _$SchedulesModelImpl(
      id: json['_id'] as String?,
      label: json['label'] as String?,
      isActive: json['isActive'] as bool?,
      repeatModes: (json['repeatModes'] as List<dynamic>?)
          ?.map((e) => RepeatModesModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      time:
          json['time'] == null ? null : DateTime.parse(json['time'] as String),
    );

Map<String, dynamic> _$$SchedulesModelImplToJson(
        _$SchedulesModelImpl instance) =>
    <String, dynamic>{
      '_id': instance.id,
      'label': instance.label,
      'isActive': instance.isActive,
      'repeatModes': instance.repeatModes,
      'time': instance.time?.toIso8601String(),
    };
