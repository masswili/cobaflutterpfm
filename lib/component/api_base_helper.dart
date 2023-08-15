//import 'dart:convert';

import 'package:cobaflutterpfm/component/utils.dart';
import 'package:dio/dio.dart';
import 'package:shared_preferences/shared_preferences.dart';

class ApiBaseHelper {
  static const String url = 'https://pfm-api.rodd-it.my.id/api/';
  static BaseOptions opts = BaseOptions(
    baseUrl: url,
    responseType: ResponseType.json,
    connectTimeout: const Duration(milliseconds: 30000),
    receiveTimeout: const Duration(milliseconds: 30000),
  );

  static Dio createDio() {
    return Dio(opts);
  }

  static Dio addInterceptors(Dio dio) {
    return dio
      ..interceptors.add(
        InterceptorsWrapper(
          onRequest:
              (RequestOptions options, RequestInterceptorHandler handler) =>
                  requestInterceptor(options, handler),
          onError: (DioException e, ErrorInterceptorHandler handler) {
            print('DioError occurred: ${e.message}');

            // Lepaskan error ke interceptor berikutnya atau biarkan melewatinya
            handler.next(e);
          },
        ),
      );
  }

  static dynamic requestInterceptor(
      RequestOptions options, RequestInterceptorHandler handler) async {
    // Get your JWT token
    SharedPreferences prefs = await SharedPreferences.getInstance();
    String? token = prefs.getString("token");
    if (token != null) {
      print("TOKEN requestinterceptor:$token");
      options.headers.addAll({
        "Authorization": "Bearer $token",
        "Accept": "application/json",
        "headerApiKey": "PFM~API/"
      });
    }
    return handler.next(options);
  }

  static final dio = createDio();
  static final baseAPI = addInterceptors(dio);

  Future<Response?> getHTTP(String url) async {
    try {
      Response response = await baseAPI.get(url);
      return response;
    } on DioException catch (e) {
      // Handle error
      print(e);
      _errorHandler(e.error);
      return null;
    }
  }

  Future<Response?> postHTTP(String url, dynamic data) async {
    try {
      Response response = await baseAPI.post(url, data: data);
      return response;
    } on DioException catch (e) {
      // Handle error
      print("request header: $e");
      print("request data: $e");
      print("response : $e");
      _errorHandler(e.error);
      return null;
    }
  }

  Future<Response?> putHTTP(String url, dynamic data) async {
    try {
      Response response = await baseAPI.put(url, data: data);
      return response;
    } on DioException catch (e) {
      // Handle error
      print(e);
      _errorHandler(e.error);
      return null;
    }
  }

  Future<Response?> deleteHTTP(String url) async {
    try {
      Response response = await baseAPI.delete(url);
      return response;
    } on DioException catch (e) {
      // Handle error
      print(e);
      _errorHandler(e.error);
      return null;
    }
  }

  _errorHandler(dynamic e) {
    if (e["message"] is String) {
      if (e["message"] != null) {
        Utils.displayToast("filed! ${e['message']}", "warning");
      }
    } else {
      if (e["message"] != null) {
        Utils.displayToast(e['message'].toString(), "warning");
      } else {
        Utils.displayToast("Server sedang bermasalah", "warning");
      }
    }
  }
}
