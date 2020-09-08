import 'package:wnkn_arrow/base/base_result.dart';

abstract class BaseUseCase<T>{
  Result create(Map<String, dynamic> params);
}