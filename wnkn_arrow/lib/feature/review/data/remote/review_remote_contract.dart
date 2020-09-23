import 'package:wnkn_arrow/base/base_result.dart';
import 'package:wnkn_arrow/feature/review/domain/review_entity.dart';

mixin ReviewRemoteContract{
  Result<ReviewEntity, Error> getAllReview();
  Result<ReviewEntity, Error> getSpecificReview(int id);
}