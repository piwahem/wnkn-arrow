class StatusCode {
  //网络错误
  static const NETWORK_ERROR = -1;

  //网络超时
  static const NETWORK_TIME_OUT = -2;

  ///网络返回数据格式化一次
  static const NETWORK_JSON_EXCEPTION = -3;

  //参数错误
  static const PARAM_ERROR = 20001;

  //请求错误
  static const REQUEST_ERROR = 20002;

  //请求成功状态码
  static const SUCCESS = 200;
  static const UNAUTHORIZED_CODE = 401;
  static const FORBIDDEN = 403;
  static const NOT_FOUND = 404;
  static const UNPROCESSABLE = 422;
  static const TOO_MANY_REQUEST = 429;
  static const SERVER_ERROR = 500;
  static const SERVICE_UNAVAILABLE = 503;

  //返回数据为空
  static const RESPONSE_DATA_IS_NULL = -4;

  static errorHandleFunction(code, message, noTip) {
    if (noTip) {
      return message;
    }
    return message;
  }
}