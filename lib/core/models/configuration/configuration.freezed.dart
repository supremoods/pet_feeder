// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'configuration.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ConfigurationModel _$ConfigurationModelFromJson(Map<String, dynamic> json) {
  return _ConfigurationModel.fromJson(json);
}

/// @nodoc
mixin _$ConfigurationModel {
  @JsonKey(name: '_id')
  String? get id => throw _privateConstructorUsedError;
  int get duration => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ConfigurationModelCopyWith<ConfigurationModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ConfigurationModelCopyWith<$Res> {
  factory $ConfigurationModelCopyWith(
          ConfigurationModel value, $Res Function(ConfigurationModel) then) =
      _$ConfigurationModelCopyWithImpl<$Res, ConfigurationModel>;
  @useResult
  $Res call({@JsonKey(name: '_id') String? id, int duration});
}

/// @nodoc
class _$ConfigurationModelCopyWithImpl<$Res, $Val extends ConfigurationModel>
    implements $ConfigurationModelCopyWith<$Res> {
  _$ConfigurationModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? duration = null,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      duration: null == duration
          ? _value.duration
          : duration // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ConfigurationModelImplCopyWith<$Res>
    implements $ConfigurationModelCopyWith<$Res> {
  factory _$$ConfigurationModelImplCopyWith(_$ConfigurationModelImpl value,
          $Res Function(_$ConfigurationModelImpl) then) =
      __$$ConfigurationModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({@JsonKey(name: '_id') String? id, int duration});
}

/// @nodoc
class __$$ConfigurationModelImplCopyWithImpl<$Res>
    extends _$ConfigurationModelCopyWithImpl<$Res, _$ConfigurationModelImpl>
    implements _$$ConfigurationModelImplCopyWith<$Res> {
  __$$ConfigurationModelImplCopyWithImpl(_$ConfigurationModelImpl _value,
      $Res Function(_$ConfigurationModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? duration = null,
  }) {
    return _then(_$ConfigurationModelImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      duration: null == duration
          ? _value.duration
          : duration // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ConfigurationModelImpl implements _ConfigurationModel {
  const _$ConfigurationModelImpl(
      {@JsonKey(name: '_id') this.id, required this.duration});

  factory _$ConfigurationModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$ConfigurationModelImplFromJson(json);

  @override
  @JsonKey(name: '_id')
  final String? id;
  @override
  final int duration;

  @override
  String toString() {
    return 'ConfigurationModel(id: $id, duration: $duration)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ConfigurationModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.duration, duration) ||
                other.duration == duration));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, duration);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ConfigurationModelImplCopyWith<_$ConfigurationModelImpl> get copyWith =>
      __$$ConfigurationModelImplCopyWithImpl<_$ConfigurationModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ConfigurationModelImplToJson(
      this,
    );
  }
}

abstract class _ConfigurationModel implements ConfigurationModel {
  const factory _ConfigurationModel(
      {@JsonKey(name: '_id') final String? id,
      required final int duration}) = _$ConfigurationModelImpl;

  factory _ConfigurationModel.fromJson(Map<String, dynamic> json) =
      _$ConfigurationModelImpl.fromJson;

  @override
  @JsonKey(name: '_id')
  String? get id;
  @override
  int get duration;
  @override
  @JsonKey(ignore: true)
  _$$ConfigurationModelImplCopyWith<_$ConfigurationModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
