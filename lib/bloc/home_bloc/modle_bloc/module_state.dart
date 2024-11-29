import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:learning_app/models/module.dart';
part 'module_state.freezed.dart'; // Add this 

@freezed
class ModuleState with _$ModuleState {
  const factory ModuleState.initial() = _Module_Initial;
  const factory ModuleState.loading() = _Module_Loading;
  const factory ModuleState.loaded(List<Module> modules) = _Module_Loaded;
  const factory ModuleState.error(String message) = _Module_Error;
}
