import 'package:wnkn_arrow/base/base_result.dart';
import 'package:wnkn_arrow/feature/studymaterial/domain/study_material_entity.dart';
import 'package:wnkn_arrow/feature/subjects/domain/subject_entity.dart';

mixin SubjectContract{
  Result<SubjectEntity,Error> getAllSubject();
  Result<SubjectEntity,Error> getSpecificSubject(int id);
}