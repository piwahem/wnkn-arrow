import 'package:wnkn_arrow/base/base_result.dart';
import 'package:wnkn_arrow/base/base_usecase.dart';
import 'package:wnkn_arrow/feature/summary/domain/summary_contract.dart';
import 'package:wnkn_arrow/feature/summary/domain/summary_entity.dart';

class SummaryGet extends BaseUseCase<SummaryEntity> {

  SummaryContract _repository;

  SummaryGet(this._repository);

  @override
  Result<SummaryEntity, Error> create(Map<String, dynamic> params) {
    return _repository.getSummary();
  }
}
