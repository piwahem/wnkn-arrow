import 'package:wnkn_arrow/base/base_result.dart';
import 'package:wnkn_arrow/feature/user/domain/user_entity.dart';

mixin UserRemoteContract{
  Result<UserEntity,Error> getUserInformation();
  Result<UserEntity,Error> updateUserInformation(UserEntity entity);
}