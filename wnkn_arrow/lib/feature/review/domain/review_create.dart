import 'package:wnkn_arrow/base/base_result.dart';
import 'package:wnkn_arrow/base/base_usecase.dart';
import 'package:wnkn_arrow/feature/review/domain/review_contract.dart';
import 'package:wnkn_arrow/feature/review/domain/review_entity.dart';

class CreateReview extends BaseUseCase<ReviewEntity> {

  ReviewContract _repository;

  CreateReview(this._repository);

  @override
  Result<ReviewEntity, Error> create(Map<String, dynamic> params) {
    ReviewEntity item = ReviewEntity();
    return _repository.createReview(item);
  }
}