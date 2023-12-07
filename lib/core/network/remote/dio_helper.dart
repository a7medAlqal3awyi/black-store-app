import 'package:dio/dio.dart';

class DioHelper {
  static late Dio dio;

  static void init() {
    dio = Dio(BaseOptions(
      receiveDataWhenStatusError: true,
      baseUrl: 'https://voipsys.space/api/',
    ));
  }

 static  Future<Response> getData({
    required String url,
    required Map<String, dynamic> query,
  }) async {
    return await dio.get(
      url,
      queryParameters: query,
    );
  }
  static  Future<Response>pastData({
    required String url,
     Map<String, dynamic>? query,
    required Map<String, dynamic> data,
  }) async {

    return await dio.post(
      url,
      queryParameters: query,
      data: data
    );
  }
}
