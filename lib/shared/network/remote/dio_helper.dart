import 'package:dio/dio.dart';
import 'package:qr_scanner/shared/network/remote/end_points.dart';

class DioHelper {
  static late Dio _dio;

  // this class must be initialize before runApp method

  static init() {
    _dio = Dio(
      BaseOptions(
        baseUrl: AppEndPoints.baseUrl,
        // const url for the app
        receiveDataWhenStatusError: true,
      ),
    );
  }

  // get data
  static Future<Response> getData({
    required String endPoint,
    Map<String, dynamic>? query,
    String lang = 'en',
    String token = '',
  }) async {
    // todo set your headers here
    _dio.options.headers = {
      'Content-Type': 'application/json',
      'lang': lang,
      'Authorization': token,
    };
    return await _dio.get(endPoint, queryParameters: query);
  }

  // post data
  static Future<Response> postData({
    required String endPoint,
    required Map<String, dynamic> data,
    Map<String, dynamic>? query,
    String lang = 'en',
    String token = '',
  }) async {
    // todo set your headers here
    _dio.options.headers = {
      'Content-Type': 'application/json',
      'lang': lang,
      'Authorization': token,
    };
    return await _dio.post(endPoint, data: data, queryParameters: query);
  }

  // put data
  static Future<Response> putData({
    required String endPoint,
    required Map<String, dynamic> data,
    Map<String, dynamic>? query,
    String lang = 'en',
    String token = '',
  }) async {
    // todo set your headers here
    _dio.options.headers = {
      'Content-Type': 'application/json',
      'lang': lang,
      'Authorization': token,
    };
    return await _dio.put(endPoint, data: data, queryParameters: query);
  }
}