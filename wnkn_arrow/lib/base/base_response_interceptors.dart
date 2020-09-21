import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:wnkn_arrow/base/base_result.dart';

import 'base_network_status_code.dart';

/**
 * 响应拦截器
 */
class ResponseInterceptors extends InterceptorsWrapper {

  @override
  Future onResponse(Response response) async {
    print("[dio] data:" + response.data.toString());
    RequestOptions option = response.request;
    try {
      if (response.statusCode == StatusCode.SUCCESS || response.statusCode == 201) {
        if(response.data == null) {
          return Result.failure(AppError.emptyError(Exception('Empty error')));
        }
        var body = response.data['body'];
        var code = response.data['code'];
        var msg  = response.data['msg'];
        print("[dio] body:" + body.toString());
        print("[dio] code:" + code.toString());
        print("[dio] msg: " + msg.toString());
        if(code == StatusCode.SUCCESS){
          return Result.success(json.encode(body));
        }else{
          return Result.failure(AppError.randomError(Exception('Error stg')));
        }
      }
    } catch (e) {
      print(e.toString() + option.path);
      return  Result.failure(AppError.randomError(e));
    }
  }
}