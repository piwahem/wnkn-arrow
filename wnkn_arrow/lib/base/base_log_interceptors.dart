import 'package:dio/dio.dart';

/**
 * 日志拦截器
 */
class LogsInterceptors extends InterceptorsWrapper{

  @override
  onRequest(RequestOptions options) async {
    print("[dio] url:${options.path}");
    print('[dio] 请求头: ' + options.headers.toString());
    if (options.data != null) {
      print('[dio] 请求参数: ' + options.data.toString());
    }
    return options;
  }

  @override
  onResponse(Response response) async {
    if(response != null){
      print("[dio] 请求返回参数：${response.toString()}");
    }
    return response;
  }

  @override
  onError(DioError err) async {
    print("[dio] 请求异常：${err.toString()}");
    print("[dio] 请求异常信息：${err.response?.toString() ?? ""}");
    return err;
  }
}