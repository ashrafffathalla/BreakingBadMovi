import 'package:breaking_bad/shared/constance/constance.dart';
import 'package:dio/dio.dart';

class DioHelper {
  static late Dio dio;

  static init() {
    dio = Dio(
      BaseOptions(
        baseUrl: BaseUrl,
        receiveDataWhenStatusError: true,
        receiveTimeout: 15 * 1000,
        connectTimeout: 15 * 1000,
      ),
    );
  }
  // static Future<List<dynamic>>getAllCharacters()async
  // {
  //   try{
  //     Response response = await dio.get('characters');
  //     print(response.data.toString());
  //     return response.data;
  //   }catch(e)
  //   {
  //     print(e.toString());
  //     return[];
  //   }
  //
  // }

  static Future<Response> getData({
    required String url,
  }) async
  {
    return await dio.get(url);
  }
}
