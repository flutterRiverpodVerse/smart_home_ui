import 'package:freezed_annotation/freezed_annotation.dart';

part 'device_model.freezed.dart';
part 'device_model.g.dart';

@freezed
class DeviceModel with _$DeviceModel {
  const factory DeviceModel({
    required String name,
    required String icon,
    required bool powerStatus,
  }) = _DeviceModel;

  factory DeviceModel.fromJson(Map<String, dynamic> json) =>
      _$DeviceModelFromJson(json);
}
