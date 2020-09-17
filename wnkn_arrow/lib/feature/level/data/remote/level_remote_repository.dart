import 'package:wnkn_arrow/base/base_result.dart';
import 'package:wnkn_arrow/feature/level/data/remote/level_remote_contract.dart';
import 'package:wnkn_arrow/feature/level/domain/level_entity.dart';

class LevelRemoteRepository implements LevelRemoteContract{

  @override
  Result<LevelEntity, Error> getAllLevelProgression() {
    // TODO: implement getAllLevelProgression
    throw UnimplementedError();
  }

  @override
  Result<LevelEntity, Error> getSpecificLevelProgression(int id) {
    // TODO: implement getSpecificLevelProgression
    throw UnimplementedError();
  }
}