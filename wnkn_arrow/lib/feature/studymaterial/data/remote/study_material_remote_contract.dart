import 'package:wnkn_arrow/base/base_result.dart';
import 'package:wnkn_arrow/feature/studymaterial/domain/study_material_entity.dart';

mixin StudyMaterialRemoteContract{
  Result<StudyMaterialEntity,Error> getAllStudyMaterial();
  Result<StudyMaterialEntity,Error> getSpecificStudyMaterial(int id);
  Result<StudyMaterialEntity,Error> createStudyMaterial(StudyMaterialEntity entity);
  Result<StudyMaterialEntity,Error> updateStudyMaterial(StudyMaterialEntity entity);
}