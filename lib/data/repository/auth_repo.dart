
import 'package:surprise_test_3/data/model/response/home_data.dart';

import '../../core/api/base_response/base_response.dart';
import '../model/request/login_request_model.dart';
import '../model/response/user_profile_response.dart';

abstract class AuthRepository {
  Future<BaseResponse<UserData>?> signIn(LoginRequestModel request);

  Future<HomeData?> homeData(Map<String,dynamic> request);

  Future<BaseResponse> logout();
}
