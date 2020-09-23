import 'package:wnkn_arrow/base/base_result.dart';
import 'package:wnkn_arrow/feature/level/domain/level_entity.dart';
import 'package:wnkn_arrow/feature/review/domain/review_entity.dart';

mixin ReviewContract{
  Result<ReviewEntity, Error> getAllReview();
  Result<ReviewEntity, Error> getSpecificReview(int id);
  Result<ReviewEntity, Error> createReview(ReviewEntity item);
}