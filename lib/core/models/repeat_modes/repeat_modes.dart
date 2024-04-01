
import 'package:freezed_annotation/freezed_annotation.dart';
part 'repeat_modes.freezed.dart';
part 'repeat_modes.g.dart';

@freezed
class RepeatModesModel with _$RepeatModesModel {
  const factory RepeatModesModel({
    String?  mode,
    bool? isActive,
    String? code
  }) = _RepeatModesModel;

  factory RepeatModesModel.fromJson(Map<String, dynamic> json) =>
      _$RepeatModesModelFromJson(json);
}
