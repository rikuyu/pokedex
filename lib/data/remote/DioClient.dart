import 'package:dio/dio.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

final dioProvider = Provider((_) => DioClient().dio);

class DioClient {
  final Dio _dio = Dio();

  DioClient() {
    //_dio.interceptors.add(LogInterceptor(responseBody: true));
  }

  Dio get dio => _dio;
}
