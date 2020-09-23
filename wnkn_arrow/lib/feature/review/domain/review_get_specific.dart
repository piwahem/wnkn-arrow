import 'package:wnkn_arrow/base/base_result.dart';
import 'package:wnkn_arrow/base/base_usecase.dart';
import 'package:wnkn_arrow/feature/review/domain/review_contract.dart';
import 'package:wnkn_arrow/feature/review/domain/review_entity.dart';

class GetSpecificReview extends BaseUseCase<ReviewEntity> {

  ReviewContract _repository;

  GetSpecificReview(this._repository);

  @override
  Result<ReviewEntity, Error> create(Map<String, dynamic> params) {
    int id = params['id'];
    return _repository.getSpecificReview(id);
  }
}