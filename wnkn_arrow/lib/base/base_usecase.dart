import 'package:wnkn_arrow/base/base_result.dart';

abstract class BaseUseCase<T>{
  Result<T, Error> create(Map<String, dynamic> params);
}