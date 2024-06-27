// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'login_request_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

LoginRequestModel _$LoginRequestModelFromJson(Map<String, dynamic> json) =>
    LoginRequestModel(
      appVersion: json['app_version'] as String?,
      countryCode: json['country_code'] as String?,
      deviceToken: json['device_token'] as String?,
      deviceName: json['device_name'] as String?,
      deviceType: json['device_type'] as String?,
      email: json['mailto:email'] as String?,
      modelName: json['model_name'] as String?,
      osVersion: json['os_version'] as String?,
      phone: json['phone'] as String?,
    );

Map<String, dynamic> _$LoginRequestModelToJson(LoginRequestModel instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('app_version', instance.appVersion);
  writeNotNull('country_code', instance.countryCode);
  writeNotNull('device_token', instance.deviceToken);
  writeNotNull('device_name', instance.deviceName);
  writeNotNull('device_type', instance.deviceType);
  writeNotNull('mailto:email', instance.email);
  writeNotNull('model_name', instance.modelName);
  writeNotNull('os_version', instance.osVersion);
  writeNotNull('phone', instance.phone);
  return val;
}
