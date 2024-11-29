import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:learning_app/repository/home_repository.dart';
import 'subject_event.dart';
import 'subject_state.dart';

class SubjectBloc extends Bloc<SubjectEvent, SubjectState> {
  final SubjectRepository repository;

  SubjectBloc(this.repository) : super(const SubjectState.initial()) {
    on<FetchSubjects>((event, emit) async {
      emit(const SubjectState.loading());
      try {
        final subjects = await repository.fetchSubjects();
        emit(SubjectState.loaded(subjects));
      } catch (e) {
        emit(SubjectState.error(e.toString()));
      }
    });
  }
}
