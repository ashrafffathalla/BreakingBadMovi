import 'package:dio/dio.dart';

class DioHelper
{
  static late Dio dio;
  static int()
  {
    dio = Dio(
      BaseOptions(
        baseUrl: '',
        receiveDataWhenStatusError: true,
        receiveTimeout: 15 * 1000,
        connectTimeout: 15 * 1000,
      )
    ) ;
  }
}