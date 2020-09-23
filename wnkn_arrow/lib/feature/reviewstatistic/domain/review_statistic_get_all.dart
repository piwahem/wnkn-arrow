import 'package:wnkn_arrow/base/base_result.dart';
import 'package:wnkn_arrow/base/base_usecase.dart';
import 'package:wnkn_arrow/feature/level/domain/level_contract.dart';
import 'package:wnkn_arrow/feature/level/domain/level_entity.dart';
import 'package:wnkn_arrow/feature/review/domain/review_contract.dart';
import 'package:wnkn_arrow/feature/review/domain/review_entity.dart';
import 'package:wnkn_arrow/feature/reviewstatistic/domain/review_statistic_contract.dart';
import 'package:wnkn_arrow/feature/reviewstatistic/domain/review_statistic_entity.dart';

class GetAllReviewStatistic extends BaseUseCase<ReviewStatisticEntity> {

  ReviewStatisticContract _repository;

  GetAllReviewStatistic(this._repository);

  @override
  Result<ReviewStatisticEntity, Error> create(Map<String, dynamic> params) {
    return _repository.getAllReview();
  }
}