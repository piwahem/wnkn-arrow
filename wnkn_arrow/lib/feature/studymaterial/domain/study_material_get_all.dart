import 'package:wnkn_arrow/base/base_result.dart';
import 'package:wnkn_arrow/base/base_usecase.dart';
import 'package:wnkn_arrow/feature/studymaterial/domain/study_material_contract.dart';
import 'package:wnkn_arrow/feature/studymaterial/domain/study_material_entity.dart';

class GetAllMaterialStudy extends BaseUseCase<StudyMaterialEntity> {

  StudyMaterialContract _repository;

  GetAllMaterialStudy(this._repository);

  @override
  Result<StudyMaterialEntity, Error> create(Map<String, dynamic> params) {
    return _repository.getAllStudyMaterial();
  }
}