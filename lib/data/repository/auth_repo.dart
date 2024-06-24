
import '../../core/api/base_response/base_response.dart';
import '../model/request/login_request_model.dart';
import '../model/response/category_response.dart';
import '../model/response/home_request_model.dart';
import '../model/response/sub_category.dart';
import '../model/response/user_profile_response.dart';

abstract class AuthRepository {
  Future<BaseResponse<UserData>> signIn(Map<String,dynamic> data);

  Future<BaseResponse<HomeRequestModel>> home(Map<String,dynamic> data);

  Future<CategoryResponse> category(Map<String,dynamic> data);

  Future<BaseResponse> logout();
}
