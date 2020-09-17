import 'package:wnkn_arrow/base/base_result.dart';
import 'package:wnkn_arrow/base/base_usecase.dart';
import 'package:wnkn_arrow/feature/studymaterial/domain/study_material_contract.dart';
import 'package:wnkn_arrow/feature/studymaterial/domain/study_material_entity.dart';

class GetSpecificStudyMaterial extends BaseUseCase<StudyMaterialEntity> {

  StudyMaterialContract _repository;

  GetSpecificStudyMaterial(this._repository);

  @override
  Result<StudyMaterialEntity, Error> create(Map<String, dynamic> params) {
    int id = params['id'];
    return _repository.getSpecificStudyMaterial(id);
  }
}