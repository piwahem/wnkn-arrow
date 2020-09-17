import 'package:wnkn_arrow/base/base_result.dart';
import 'package:wnkn_arrow/feature/user/data/remote/user_remote_contract.dart';
import 'package:wnkn_arrow/feature/user/domain/user_entity.dart';

class UserRemoteRepository implements UserRemoteContract{

  @override
  Result<UserEntity, Error> getUserInformation() {
    // TODO: implement getUserInformation
    throw UnimplementedError();
  }

  @override
  Result<UserEntity, Error> updateUserInformation(UserEntity entity) {
    // TODO: implement updateUserInformation
    throw UnimplementedError();
  }
  
}