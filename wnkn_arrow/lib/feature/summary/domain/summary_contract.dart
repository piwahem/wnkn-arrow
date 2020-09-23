import 'package:wnkn_arrow/base/base_result.dart';
import 'package:wnkn_arrow/feature/summary/domain/summary_entity.dart';

mixin SummaryContract{
  Result<SummaryEntity,Error> getSummary();
}