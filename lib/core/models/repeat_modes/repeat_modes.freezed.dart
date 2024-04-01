// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'repeat_modes.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

RepeatModesModel _$RepeatModesModelFromJson(Map<String, dynamic> json) {
  return _RepeatModesModel.fromJson(json);
}

/// @nodoc
mixin _$RepeatModesModel {
  String? get mode => throw _privateConstructorUsedError;
  bool? get isActive => throw _privateConstructorUsedError;
  String? get code => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $RepeatModesModelCopyWith<RepeatModesModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RepeatModesModelCopyWith<$Res> {
  factory $RepeatModesModelCopyWith(
          RepeatModesModel value, $Res Function(RepeatModesModel) then) =
      _$RepeatModesModelCopyWithImpl<$Res, RepeatModesModel>;
  @useResult
  $Res call({String? mode, bool? isActive, String? code});
}

/// @nodoc
class _$RepeatModesModelCopyWithImpl<$Res, $Val extends RepeatModesModel>
    implements $RepeatModesModelCopyWith<$Res> {
  _$RepeatModesModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? mode = freezed,
    Object? isActive = freezed,
    Object? code = freezed,
  }) {
    return _then(_value.copyWith(
      mode: freezed == mode
          ? _value.mode
          : mode // ignore: cast_nullable_to_non_nullable
              as String?,
      isActive: freezed == isActive
          ? _value.isActive
          : isActive // ignore: cast_nullable_to_non_nullable
              as bool?,
      code: freezed == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$RepeatModesModelImplCopyWith<$Res>
    implements $RepeatModesModelCopyWith<$Res> {
  factory _$$RepeatModesModelImplCopyWith(_$RepeatModesModelImpl value,
          $Res Function(_$RepeatModesModelImpl) then) =
      __$$RepeatModesModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? mode, bool? isActive, String? code});
}

/// @nodoc
class __$$RepeatModesModelImplCopyWithImpl<$Res>
    extends _$RepeatModesModelCopyWithImpl<$Res, _$RepeatModesModelImpl>
    implements _$$RepeatModesModelImplCopyWith<$Res> {
  __$$RepeatModesModelImplCopyWithImpl(_$RepeatModesModelImpl _value,
      $Res Function(_$RepeatModesModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? mode = freezed,
    Object? isActive = freezed,
    Object? code = freezed,
  }) {
    return _then(_$RepeatModesModelImpl(
      mode: freezed == mode
          ? _value.mode
          : mode // ignore: cast_nullable_to_non_nullable
              as String?,
      isActive: freezed == isActive
          ? _value.isActive
          : isActive // ignore: cast_nullable_to_non_nullable
              as bool?,
      code: freezed == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$RepeatModesModelImpl implements _RepeatModesModel {
  const _$RepeatModesModelImpl({this.mode, this.isActive, this.code});

  factory _$RepeatModesModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$RepeatModesModelImplFromJson(json);

  @override
  final String? mode;
  @override
  final bool? isActive;
  @override
  final String? code;

  @override
  String toString() {
    return 'RepeatModesModel(mode: $mode, isActive: $isActive, code: $code)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RepeatModesModelImpl &&
            (identical(other.mode, mode) || other.mode == mode) &&
            (identical(other.isActive, isActive) ||
                other.isActive == isActive) &&
            (identical(other.code, code) || other.code == code));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, mode, isActive, code);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$RepeatModesModelImplCopyWith<_$RepeatModesModelImpl> get copyWith =>
      __$$RepeatModesModelImplCopyWithImpl<_$RepeatModesModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$RepeatModesModelImplToJson(
      this,
    );
  }
}

abstract class _RepeatModesModel implements RepeatModesModel {
  const factory _RepeatModesModel(
      {final String? mode,
      final bool? isActive,
      final String? code}) = _$RepeatModesModelImpl;

  factory _RepeatModesModel.fromJson(Map<String, dynamic> json) =
      _$RepeatModesModelImpl.fromJson;

  @override
  String? get mode;
  @override
  bool? get isActive;
  @override
  String? get code;
  @override
  @JsonKey(ignore: true)
  _$$RepeatModesModelImplCopyWith<_$RepeatModesModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
