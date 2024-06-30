// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'device_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

DeviceModel _$DeviceModelFromJson(Map<String, dynamic> json) {
  return _DeviceModel.fromJson(json);
}

/// @nodoc
mixin _$DeviceModel {
  String get name => throw _privateConstructorUsedError;
  String get icon => throw _privateConstructorUsedError;
  bool get powerStatus => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DeviceModelCopyWith<DeviceModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DeviceModelCopyWith<$Res> {
  factory $DeviceModelCopyWith(
          DeviceModel value, $Res Function(DeviceModel) then) =
      _$DeviceModelCopyWithImpl<$Res, DeviceModel>;
  @useResult
  $Res call({String name, String icon, bool powerStatus});
}

/// @nodoc
class _$DeviceModelCopyWithImpl<$Res, $Val extends DeviceModel>
    implements $DeviceModelCopyWith<$Res> {
  _$DeviceModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? icon = null,
    Object? powerStatus = null,
  }) {
    return _then(_value.copyWith(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      icon: null == icon
          ? _value.icon
          : icon // ignore: cast_nullable_to_non_nullable
              as String,
      powerStatus: null == powerStatus
          ? _value.powerStatus
          : powerStatus // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$DeviceModelImplCopyWith<$Res>
    implements $DeviceModelCopyWith<$Res> {
  factory _$$DeviceModelImplCopyWith(
          _$DeviceModelImpl value, $Res Function(_$DeviceModelImpl) then) =
      __$$DeviceModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String name, String icon, bool powerStatus});
}

/// @nodoc
class __$$DeviceModelImplCopyWithImpl<$Res>
    extends _$DeviceModelCopyWithImpl<$Res, _$DeviceModelImpl>
    implements _$$DeviceModelImplCopyWith<$Res> {
  __$$DeviceModelImplCopyWithImpl(
      _$DeviceModelImpl _value, $Res Function(_$DeviceModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? icon = null,
    Object? powerStatus = null,
  }) {
    return _then(_$DeviceModelImpl(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      icon: null == icon
          ? _value.icon
          : icon // ignore: cast_nullable_to_non_nullable
              as String,
      powerStatus: null == powerStatus
          ? _value.powerStatus
          : powerStatus // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$DeviceModelImpl implements _DeviceModel {
  const _$DeviceModelImpl(
      {required this.name, required this.icon, required this.powerStatus});

  factory _$DeviceModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$DeviceModelImplFromJson(json);

  @override
  final String name;
  @override
  final String icon;
  @override
  final bool powerStatus;

  @override
  String toString() {
    return 'DeviceModel(name: $name, icon: $icon, powerStatus: $powerStatus)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DeviceModelImpl &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.icon, icon) || other.icon == icon) &&
            (identical(other.powerStatus, powerStatus) ||
                other.powerStatus == powerStatus));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, name, icon, powerStatus);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DeviceModelImplCopyWith<_$DeviceModelImpl> get copyWith =>
      __$$DeviceModelImplCopyWithImpl<_$DeviceModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$DeviceModelImplToJson(
      this,
    );
  }
}

abstract class _DeviceModel implements DeviceModel {
  const factory _DeviceModel(
      {required final String name,
      required final String icon,
      required final bool powerStatus}) = _$DeviceModelImpl;

  factory _DeviceModel.fromJson(Map<String, dynamic> json) =
      _$DeviceModelImpl.fromJson;

  @override
  String get name;
  @override
  String get icon;
  @override
  bool get powerStatus;
  @override
  @JsonKey(ignore: true)
  _$$DeviceModelImplCopyWith<_$DeviceModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
