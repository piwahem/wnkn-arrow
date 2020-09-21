import 'package:wnkn_arrow/base/base_result.dart';
import 'package:wnkn_arrow/base/base_usecase.dart';
import 'package:wnkn_arrow/feature/subjects/domain/subject_contract.dart';
import 'package:wnkn_arrow/feature/subjects/domain/subject_entity.dart';

class GetAllSubject extends BaseUseCase<SubjectEntity> {

  SubjectContract _repository;

  GetAllSubject(this._repository);

  @override
  Result<SubjectEntity, Error> create(Map<String, dynamic> params) {
    return _repository.getAllSubject();
  }
}
