// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'device_status.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$DeviceStatusModelImpl _$$DeviceStatusModelImplFromJson(
        Map<String, dynamic> json) =>
    _$DeviceStatusModelImpl(
      json['_id'] as String?,
      DateTime.parse(json['time'] as String),
    );

Map<String, dynamic> _$$DeviceStatusModelImplToJson(
        _$DeviceStatusModelImpl instance) =>
    <String, dynamic>{
      '_id': instance.id,
      'time': instance.time.toIso8601String(),
    };
