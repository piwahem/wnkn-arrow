import 'package:wnkn_arrow/base/base_result.dart';
import 'package:wnkn_arrow/base/base_usecase.dart';
import 'package:wnkn_arrow/feature/level/domain/level_contract.dart';
import 'package:wnkn_arrow/feature/level/domain/level_entity.dart';

class GetAllLevelProgression extends BaseUseCase<LevelEntity> {

  LevelContract _repository;

  GetAllLevelProgression(this._repository);

  @override
  Result<LevelEntity, Error> create(Map<String, dynamic> params) {
    return _repository.getAllLevelProgression();
  }
}