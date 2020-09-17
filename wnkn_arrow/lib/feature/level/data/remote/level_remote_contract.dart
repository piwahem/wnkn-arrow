import 'package:wnkn_arrow/base/base_result.dart';
import 'package:wnkn_arrow/feature/level/domain/level_entity.dart';

mixin LevelRemoteContract{
  Result<LevelEntity, Error> getAllLevelProgression();
  Result<LevelEntity, Error> getSpecificLevelProgression(int id);
}