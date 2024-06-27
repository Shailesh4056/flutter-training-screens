import 'package:json_annotation/json_annotation.dart'; 

part 'login_request_model.g.dart';

@JsonSerializable(
  ignoreUnannotated: false,
  includeIfNull: false,
)
class LoginRequestModel {
  @JsonKey(name: 'app_version')
  String? appVersion;
  @JsonKey(name: 'country_code')
  String? countryCode;
  @JsonKey(name: 'device_token')
  String? deviceToken;
  @JsonKey(name: 'device_name')
  String? deviceName;
  @JsonKey(name: 'device_type')
  String? deviceType;
  @JsonKey(name: 'mailto:email')
  String? email;
  @JsonKey(name: 'model_name')
  String? modelName;
  @JsonKey(name: 'os_version')
  String? osVersion;
  @JsonKey(name: 'phone')
  String? phone;

  LoginRequestModel({this.appVersion, this.countryCode, this.deviceToken, this.deviceName, this.deviceType, this.email, this.modelName, this.osVersion, this.phone});

   factory LoginRequestModel.fromJson(Map<String, dynamic> json) => _$LoginRequestModelFromJson(json);

   Map<String, dynamic> toJson() => _$LoginRequestModelToJson(this);
}

