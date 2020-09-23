import 'package:wnkn_arrow/base/base_result.dart';
import 'package:wnkn_arrow/feature/review/data/remote/review_remote_contract.dart';
import 'package:wnkn_arrow/feature/review/domain/review_entity.dart';

class ReviewRemoteRepository implements ReviewRemoteContract{
  @override
  Result<ReviewEntity, Error> getAllReview() {
    // TODO: implement getAllReview
    throw UnimplementedError();
  }

  @override
  Result<ReviewEntity, Error> getSpecificReview(int id) {
    // TODO: implement getSpecificReview
    throw UnimplementedError();
  }
}