
// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';

part 'configuration.freezed.dart';
part 'configuration.g.dart';

@freezed
class ConfigurationModel with _$ConfigurationModel {
  const factory ConfigurationModel({
    @JsonKey(name: '_id') String? id,
    required int duration

  }) = _ConfigurationModel;
	
  factory ConfigurationModel.fromJson(Map<String, dynamic> json) =>
			_$ConfigurationModelFromJson(json);
}
