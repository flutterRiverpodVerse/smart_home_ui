// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'device_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$DeviceModelImpl _$$DeviceModelImplFromJson(Map<String, dynamic> json) =>
    _$DeviceModelImpl(
      name: json['name'] as String,
      icon: json['icon'] as String,
      powerStatus: json['powerStatus'] as bool,
    );

Map<String, dynamic> _$$DeviceModelImplToJson(_$DeviceModelImpl instance) =>
    <String, dynamic>{
      'name': instance.name,
      'icon': instance.icon,
      'powerStatus': instance.powerStatus,
    };
