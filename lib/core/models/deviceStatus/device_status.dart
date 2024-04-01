
// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';

part 'device_status.freezed.dart';
part 'device_status.g.dart';

@freezed
class DeviceStatusModel with _$DeviceStatusModel {
  const factory DeviceStatusModel(
    @JsonKey(name: '_id') String? id,
    DateTime time
  ) = _DeviceStatusModel;
	
  factory DeviceStatusModel.fromJson(Map<String, dynamic> json) =>
			_$DeviceStatusModelFromJson(json);
}
