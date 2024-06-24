import '../../core/api/base_response/base_response.dart';
import '../../core/locator/locator.dart';
import '../model/response/category_response.dart';
import '../model/response/home_request_model.dart';
import '../model/response/sub_category.dart';
import '../model/response/user_profile_response.dart';
import '../remote/auth_api.dart';
import '../repository/auth_repo.dart';

class AuthRepoImpl extends AuthRepository {
  AuthApi authApi;

  AuthRepoImpl({required this.authApi});

  @override
  Future<BaseResponse<UserData>> signIn(Map<String, dynamic> data) async {
    final BaseResponse<UserData> response = await authApi.signIn(data);
    return response;
  }

  @override
  Future<BaseResponse<HomeRequestModel>> home(Map<String, dynamic> data) async {
    final BaseResponse<HomeRequestModel> response = await authApi.home(data);
    return response;
  }

  @override
  Future<BaseResponse> logout() async {
    final BaseResponse response = await authApi.logout();
    return response;
  }

  @override
  Future<CategoryResponse> category(Map<String, dynamic> data) async{
    CategoryResponse response = await authApi.categories(data);
     return response;
  }


}

final authRepo = locator<AuthRepoImpl>();
