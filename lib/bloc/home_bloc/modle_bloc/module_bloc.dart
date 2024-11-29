import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:learning_app/bloc/home_bloc/modle_bloc/module_event.dart';
import 'package:learning_app/bloc/home_bloc/modle_bloc/module_state.dart';
import 'package:learning_app/repository/module_repository.dart';
class ModuleBloc extends Bloc<ModuleEvent, ModuleState> {
  final ModuleRepository repository;

  ModuleBloc(this.repository) : super(const ModuleState.initial()) {
    on<FetchModules>((event, emit) async {
      emit(const ModuleState.loading());
      try {
        final modules = await repository.fetchModules();
        emit(ModuleState.loaded(modules));
      } catch (e) {
        emit(ModuleState.error(e.toString()));
      }
    });
  }
}
