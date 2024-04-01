
// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:pet_feeder/core/models/repeat_modes/repeat_modes.dart';
part 'schedules.freezed.dart';
part 'schedules.g.dart';

@freezed
class SchedulesModel with _$SchedulesModel {
  const factory SchedulesModel({
    @JsonKey(name: '_id') String? id,
    String?  label,
    bool? isActive,
    List<RepeatModesModel>? repeatModes,
    DateTime? time
  }) = _SchedulesModel;

  factory SchedulesModel.fromJson(Map<String, dynamic> json) =>
      _$SchedulesModelFromJson(json);
}
