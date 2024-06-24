import 'dart:convert';

import 'package:dio/dio.dart';


import '../../../service/enc_service.dart';
import '../../db/app_db.dart';
import '../../locator/locator.dart';

class CustomInterceptors extends Interceptor {
  @override
  Future onRequest(
    RequestOptions options,
    RequestInterceptorHandler handler,
  ) async {
    options.headers['content-type'] = 'text/plain';
    options.headers['contentType'] = 'text/plain';
    options.headers['responseType'] = 'text/plain';
    options.responseType = ResponseType.plain;

    options.headers.putIfAbsent("api-key", () => appDB.apiKey);
    options.headers.putIfAbsent("accept-language", () => enc.decrypt(appDB.appLanguage.toString()));
    print(enc.decrypt(appDB.appLanguage.toString()));
    if (appDB.token.isNotEmpty) {
      options.headers['token'] = enc.encrypt(appDB.token);
    }
    if (options.data != null) {
      options.data = enc.encrypt(jsonEncode(options.data));
      print(options.data);
    }
    print(options.headers);
    print(options.data);

    return handler.next(options);
  }

  @override
  Future onResponse(
    Response response,
    ResponseInterceptorHandler handler,
  ) async {
    final enc = locator.get<EncService>();
    print(response.data);
    response.data = jsonDecode(enc.decrypt(response.data.toString()));
    return handler.next(response);
  }

  @override
  Future onError(DioException err, ErrorInterceptorHandler handler) async {
    return handler.next(err);
  }
}
