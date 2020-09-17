import 'package:wnkn_arrow/base/base_result.dart';
import 'package:wnkn_arrow/feature/studymaterial/data/remote/study_material_remote_contract.dart';
import 'package:wnkn_arrow/feature/studymaterial/domain/study_material_entity.dart';

class StudyMaterialRemoteRepository implements StudyMaterialRemoteContract{
  @override
  Result<StudyMaterialEntity, Error> createStudyMaterial(StudyMaterialEntity entity) {
    // TODO: implement createStudyMaterial
    throw UnimplementedError();
  }

  @override
  Result<StudyMaterialEntity, Error> getAllStudyMaterial() {
    // TODO: implement getAllStudyMaterial
    throw UnimplementedError();
  }

  @override
  Result<StudyMaterialEntity, Error> getSpecificStudyMaterial(int id) {
    // TODO: implement getSpecificStudyMaterial
    throw UnimplementedError();
  }

  @override
  Result<StudyMaterialEntity, Error> updateStudyMaterial(StudyMaterialEntity entity) {
    // TODO: implement updateStudyMaterial
    throw UnimplementedError();
  }
  
}