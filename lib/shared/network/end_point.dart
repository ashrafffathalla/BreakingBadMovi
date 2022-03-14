import 'package:dio/dio.dart';

class DioHelper {
  static late Dio dio;

  static int() {
    dio = Dio(
      BaseOptions(
        baseUrl: 'https://www.breakingbadapi.com/api/',
        receiveDataWhenStatusError: true,
        receiveTimeout: 15 * 1000,
        connectTimeout: 15 * 1000,
      ),
    );
  }

  static Future<Response> getData({
    required String url,
    Map<String, dynamic>? query,
  }) async {
    return await dio.get(url, queryParameters: query);
  }
}
