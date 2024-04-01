// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'schedules.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

SchedulesModel _$SchedulesModelFromJson(Map<String, dynamic> json) {
  return _SchedulesModel.fromJson(json);
}

/// @nodoc
mixin _$SchedulesModel {
  @JsonKey(name: '_id')
  String? get id => throw _privateConstructorUsedError;
  String? get label => throw _privateConstructorUsedError;
  bool? get isActive => throw _privateConstructorUsedError;
  List<RepeatModesModel>? get repeatModes => throw _privateConstructorUsedError;
  DateTime? get time => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SchedulesModelCopyWith<SchedulesModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SchedulesModelCopyWith<$Res> {
  factory $SchedulesModelCopyWith(
          SchedulesModel value, $Res Function(SchedulesModel) then) =
      _$SchedulesModelCopyWithImpl<$Res, SchedulesModel>;
  @useResult
  $Res call(
      {@JsonKey(name: '_id') String? id,
      String? label,
      bool? isActive,
      List<RepeatModesModel>? repeatModes,
      DateTime? time});
}

/// @nodoc
class _$SchedulesModelCopyWithImpl<$Res, $Val extends SchedulesModel>
    implements $SchedulesModelCopyWith<$Res> {
  _$SchedulesModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? label = freezed,
    Object? isActive = freezed,
    Object? repeatModes = freezed,
    Object? time = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      label: freezed == label
          ? _value.label
          : label // ignore: cast_nullable_to_non_nullable
              as String?,
      isActive: freezed == isActive
          ? _value.isActive
          : isActive // ignore: cast_nullable_to_non_nullable
              as bool?,
      repeatModes: freezed == repeatModes
          ? _value.repeatModes
          : repeatModes // ignore: cast_nullable_to_non_nullable
              as List<RepeatModesModel>?,
      time: freezed == time
          ? _value.time
          : time // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SchedulesModelImplCopyWith<$Res>
    implements $SchedulesModelCopyWith<$Res> {
  factory _$$SchedulesModelImplCopyWith(_$SchedulesModelImpl value,
          $Res Function(_$SchedulesModelImpl) then) =
      __$$SchedulesModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: '_id') String? id,
      String? label,
      bool? isActive,
      List<RepeatModesModel>? repeatModes,
      DateTime? time});
}

/// @nodoc
class __$$SchedulesModelImplCopyWithImpl<$Res>
    extends _$SchedulesModelCopyWithImpl<$Res, _$SchedulesModelImpl>
    implements _$$SchedulesModelImplCopyWith<$Res> {
  __$$SchedulesModelImplCopyWithImpl(
      _$SchedulesModelImpl _value, $Res Function(_$SchedulesModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? label = freezed,
    Object? isActive = freezed,
    Object? repeatModes = freezed,
    Object? time = freezed,
  }) {
    return _then(_$SchedulesModelImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      label: freezed == label
          ? _value.label
          : label // ignore: cast_nullable_to_non_nullable
              as String?,
      isActive: freezed == isActive
          ? _value.isActive
          : isActive // ignore: cast_nullable_to_non_nullable
              as bool?,
      repeatModes: freezed == repeatModes
          ? _value._repeatModes
          : repeatModes // ignore: cast_nullable_to_non_nullable
              as List<RepeatModesModel>?,
      time: freezed == time
          ? _value.time
          : time // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$SchedulesModelImpl implements _SchedulesModel {
  const _$SchedulesModelImpl(
      {@JsonKey(name: '_id') this.id,
      this.label,
      this.isActive,
      final List<RepeatModesModel>? repeatModes,
      this.time})
      : _repeatModes = repeatModes;

  factory _$SchedulesModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$SchedulesModelImplFromJson(json);

  @override
  @JsonKey(name: '_id')
  final String? id;
  @override
  final String? label;
  @override
  final bool? isActive;
  final List<RepeatModesModel>? _repeatModes;
  @override
  List<RepeatModesModel>? get repeatModes {
    final value = _repeatModes;
    if (value == null) return null;
    if (_repeatModes is EqualUnmodifiableListView) return _repeatModes;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final DateTime? time;

  @override
  String toString() {
    return 'SchedulesModel(id: $id, label: $label, isActive: $isActive, repeatModes: $repeatModes, time: $time)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SchedulesModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.label, label) || other.label == label) &&
            (identical(other.isActive, isActive) ||
                other.isActive == isActive) &&
            const DeepCollectionEquality()
                .equals(other._repeatModes, _repeatModes) &&
            (identical(other.time, time) || other.time == time));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, label, isActive,
      const DeepCollectionEquality().hash(_repeatModes), time);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SchedulesModelImplCopyWith<_$SchedulesModelImpl> get copyWith =>
      __$$SchedulesModelImplCopyWithImpl<_$SchedulesModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SchedulesModelImplToJson(
      this,
    );
  }
}

abstract class _SchedulesModel implements SchedulesModel {
  const factory _SchedulesModel(
      {@JsonKey(name: '_id') final String? id,
      final String? label,
      final bool? isActive,
      final List<RepeatModesModel>? repeatModes,
      final DateTime? time}) = _$SchedulesModelImpl;

  factory _SchedulesModel.fromJson(Map<String, dynamic> json) =
      _$SchedulesModelImpl.fromJson;

  @override
  @JsonKey(name: '_id')
  String? get id;
  @override
  String? get label;
  @override
  bool? get isActive;
  @override
  List<RepeatModesModel>? get repeatModes;
  @override
  DateTime? get time;
  @override
  @JsonKey(ignore: true)
  _$$SchedulesModelImplCopyWith<_$SchedulesModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
