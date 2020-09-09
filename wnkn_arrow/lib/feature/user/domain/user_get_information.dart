import 'package:wnkn_arrow/base/base_result.dart';
import 'package:wnkn_arrow/base/base_usecase.dart';
import 'package:wnkn_arrow/feature/user/domain/user_contract.dart';
import 'package:wnkn_arrow/feature/user/domain/user_entity.dart';

class GetUserInformation extends BaseUseCase<UserEntity> {

  UserContract _repository;

  GetUserInformation(this._repository);

  @override
  Result<UserEntity, Error> create(Map<String, dynamic> params) {
    return _repository.getUserInformation();
  }
}