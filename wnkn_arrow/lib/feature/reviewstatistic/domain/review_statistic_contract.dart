import 'package:wnkn_arrow/base/base_result.dart';
import 'package:wnkn_arrow/feature/reviewstatistic/domain/review_statistic_entity.dart';

mixin ReviewStatisticContract{
  Result<ReviewStatisticEntity, Error> getAllReview();
  Result<ReviewStatisticEntity, Error> getSpecificReview(int id);
}