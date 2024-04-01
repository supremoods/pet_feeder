// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'device_status.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

DeviceStatusModel _$DeviceStatusModelFromJson(Map<String, dynamic> json) {
  return _DeviceStatusModel.fromJson(json);
}

/// @nodoc
mixin _$DeviceStatusModel {
  @JsonKey(name: '_id')
  String? get id => throw _privateConstructorUsedError;
  DateTime get time => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DeviceStatusModelCopyWith<DeviceStatusModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DeviceStatusModelCopyWith<$Res> {
  factory $DeviceStatusModelCopyWith(
          DeviceStatusModel value, $Res Function(DeviceStatusModel) then) =
      _$DeviceStatusModelCopyWithImpl<$Res, DeviceStatusModel>;
  @useResult
  $Res call({@JsonKey(name: '_id') String? id, DateTime time});
}

/// @nodoc
class _$DeviceStatusModelCopyWithImpl<$Res, $Val extends DeviceStatusModel>
    implements $DeviceStatusModelCopyWith<$Res> {
  _$DeviceStatusModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? time = null,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      time: null == time
          ? _value.time
          : time // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$DeviceStatusModelImplCopyWith<$Res>
    implements $DeviceStatusModelCopyWith<$Res> {
  factory _$$DeviceStatusModelImplCopyWith(_$DeviceStatusModelImpl value,
          $Res Function(_$DeviceStatusModelImpl) then) =
      __$$DeviceStatusModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({@JsonKey(name: '_id') String? id, DateTime time});
}

/// @nodoc
class __$$DeviceStatusModelImplCopyWithImpl<$Res>
    extends _$DeviceStatusModelCopyWithImpl<$Res, _$DeviceStatusModelImpl>
    implements _$$DeviceStatusModelImplCopyWith<$Res> {
  __$$DeviceStatusModelImplCopyWithImpl(_$DeviceStatusModelImpl _value,
      $Res Function(_$DeviceStatusModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? time = null,
  }) {
    return _then(_$DeviceStatusModelImpl(
      freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      null == time
          ? _value.time
          : time // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$DeviceStatusModelImpl implements _DeviceStatusModel {
  const _$DeviceStatusModelImpl(@JsonKey(name: '_id') this.id, this.time);

  factory _$DeviceStatusModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$DeviceStatusModelImplFromJson(json);

  @override
  @JsonKey(name: '_id')
  final String? id;
  @override
  final DateTime time;

  @override
  String toString() {
    return 'DeviceStatusModel(id: $id, time: $time)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DeviceStatusModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.time, time) || other.time == time));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, time);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DeviceStatusModelImplCopyWith<_$DeviceStatusModelImpl> get copyWith =>
      __$$DeviceStatusModelImplCopyWithImpl<_$DeviceStatusModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$DeviceStatusModelImplToJson(
      this,
    );
  }
}

abstract class _DeviceStatusModel implements DeviceStatusModel {
  const factory _DeviceStatusModel(
          @JsonKey(name: '_id') final String? id, final DateTime time) =
      _$DeviceStatusModelImpl;

  factory _DeviceStatusModel.fromJson(Map<String, dynamic> json) =
      _$DeviceStatusModelImpl.fromJson;

  @override
  @JsonKey(name: '_id')
  String? get id;
  @override
  DateTime get time;
  @override
  @JsonKey(ignore: true)
  _$$DeviceStatusModelImplCopyWith<_$DeviceStatusModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
