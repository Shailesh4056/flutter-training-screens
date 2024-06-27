import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';
import 'package:surprise_test_3/core/api/api_end_points.dart';

import '../../core/api/base_response/base_response.dart';
import '../model/request/login_request_model.dart';
import '../model/response/home_data.dart';
import '../model/response/user_profile_response.dart';

part 'auth_api.g.dart';

@RestApi()
abstract class AuthApi {
  factory AuthApi(Dio dio) = _AuthApi;

  @POST(APIEndPoints.login)
  Future<BaseResponse<UserData>> signIn(@Body() LoginRequestModel request);


  @POST(APIEndPoints.home)
  Future<HomeData?> homeData(@Body() Map<String,dynamic> request);

  @POST('/user_authentication/logout')
  Future<BaseResponse> logout();
}
