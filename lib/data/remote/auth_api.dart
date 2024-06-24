import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';

import '../../core/api/api_end_points.dart';
import '../../core/api/base_response/base_response.dart';

import '../model/response/category_response.dart';
import '../model/response/home_request_model.dart';
import '../model/response/sub_category.dart';
import '../model/response/user_profile_response.dart';

part 'auth_api.g.dart';

@RestApi()
abstract class AuthApi {
  factory AuthApi(Dio dio) = _AuthApi;

  @POST(APIEndPoints.login)
  Future<BaseResponse<UserData>> signIn(@Body() Map<String,dynamic> data);

  @POST(APIEndPoints.login)
  Future<BaseResponse<HomeRequestModel>> home(@Body() Map<String,dynamic> data);


  @POST(APIEndPoints.categories)
  Future<CategoryResponse> categories(@Body() Map<String,dynamic> data);


  @POST('/user_authentication/logout')
  Future<BaseResponse> logout();
}
