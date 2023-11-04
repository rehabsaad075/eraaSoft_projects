
import 'package:dio/dio.dart';

import 'endPoints.dart';

class DioHelper {
  static Dio? dio;

  static void init() {
    dio = Dio(
        BaseOptions(
      baseUrl: EndPoints.fakeStoreBasUrl,
      receiveDataWhenStatusError: true,
      headers: {
        "Content-Type": "application/json",
      },
    ));
  }

  static Future<Response> get({
    required String endPoint,
    String ?token,
    Map<String, dynamic>? body,
    Map<String, dynamic>? parameters,
  }) async {
    try {
      dio?.options.headers={
        "Authorization":"Token token=\"$token\""
      };
      Response? response =await dio?.get(
        endPoint,
        data: body,
        queryParameters: parameters,
      );
      return response!;
    } catch (e) {
      rethrow;
    }
  }

 static Future<Response>put({
   required String endPoints,
   String?token,
   Map<String, dynamic>? body,
 })async{
    try {
      dio?.options.headers={
        "Authorization":"Token token=\"$token\""
      };
      Response ?response =await dio?.put(endPoints,data:body );
      return response!;
    } catch (e) {
      rethrow;
    }
  }

  static Future<Response> post({
    required String endPoint,
    String ?token,
    Map<String, dynamic>? body,
    Map<String, dynamic>? parameters,
  }) async {
    try {
      dio?.options.headers={
        "Authorization":"Token token=\"$token\""
      };
      Response? response =await dio?.post(
        endPoint,
        data: body,
        queryParameters: parameters,
      );
      return response!;
    } catch (e) {
      rethrow;
    }
  }

}