import 'package:wnkn_arrow/base/base_result.dart';
import 'package:wnkn_arrow/base/base_usecase.dart';
import 'package:wnkn_arrow/feature/level/domain/level_contract.dart';
import 'package:wnkn_arrow/feature/level/domain/level_entity.dart';
import 'package:wnkn_arrow/feature/review/domain/review_contract.dart';
import 'package:wnkn_arrow/feature/review/domain/review_entity.dart';

class GetAllReview extends BaseUseCase<ReviewEntity> {

  ReviewContract _repository;

  GetAllReview(this._repository);

  @override
  Result<ReviewEntity, Error> create(Map<String, dynamic> params) {
    return _repository.getAllReview();
  }
}