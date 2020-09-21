import 'package:wnkn_arrow/base/base_result.dart';
import 'package:wnkn_arrow/base/base_usecase.dart';
import 'package:wnkn_arrow/feature/subjects/domain/subject_contract.dart';
import 'package:wnkn_arrow/feature/subjects/domain/subject_entity.dart';

class GetSpecificSubject extends BaseUseCase<SubjectEntity> {

  SubjectContract _repository;

  GetSpecificSubject(this._repository);

  @override
  Result<SubjectEntity, Error> create(Map<String, dynamic> params) {
    int id = params['id'];
    return _repository.getSpecificSubject(id);
  }
}
