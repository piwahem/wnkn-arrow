import 'package:wnkn_arrow/base/base_result.dart';
import 'package:wnkn_arrow/base/base_usecase.dart';
import 'package:wnkn_arrow/feature/level/domain/level_entity.dart';

import 'level_contract.dart';

class GetSpecificLevelProgression extends BaseUseCase<LevelEntity> {

  LevelContract _repository;

  GetSpecificLevelProgression(this._repository);

  @override
  Result<LevelEntity, Error> create(Map<String, dynamic> params) {
    int id = params['id'];
    return _repository.getSpecificLevelProgression(id);
  }
}