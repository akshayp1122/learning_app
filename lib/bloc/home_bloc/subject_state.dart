import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:learning_app/models/subject.dart';
part 'subject_state.freezed.dart'; // Add this 

@freezed
class SubjectState with _$SubjectState {
  const factory SubjectState.initial() = _Initial;
  const factory SubjectState.loading() = _Loading;
  const factory SubjectState.loaded(List<Subject> subjects) = _Loaded;
  const factory SubjectState.error(String message) = _Error;
}
