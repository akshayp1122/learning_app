// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'module_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$ModuleState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<Module> modules) loaded,
    required TResult Function(String message) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<Module> modules)? loaded,
    TResult? Function(String message)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<Module> modules)? loaded,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Module_Initial value) initial,
    required TResult Function(_Module_Loading value) loading,
    required TResult Function(_Module_Loaded value) loaded,
    required TResult Function(_Module_Error value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Module_Initial value)? initial,
    TResult? Function(_Module_Loading value)? loading,
    TResult? Function(_Module_Loaded value)? loaded,
    TResult? Function(_Module_Error value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Module_Initial value)? initial,
    TResult Function(_Module_Loading value)? loading,
    TResult Function(_Module_Loaded value)? loaded,
    TResult Function(_Module_Error value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ModuleStateCopyWith<$Res> {
  factory $ModuleStateCopyWith(
          ModuleState value, $Res Function(ModuleState) then) =
      _$ModuleStateCopyWithImpl<$Res, ModuleState>;
}

/// @nodoc
class _$ModuleStateCopyWithImpl<$Res, $Val extends ModuleState>
    implements $ModuleStateCopyWith<$Res> {
  _$ModuleStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ModuleState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$Module_InitialImplCopyWith<$Res> {
  factory _$$Module_InitialImplCopyWith(_$Module_InitialImpl value,
          $Res Function(_$Module_InitialImpl) then) =
      __$$Module_InitialImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$Module_InitialImplCopyWithImpl<$Res>
    extends _$ModuleStateCopyWithImpl<$Res, _$Module_InitialImpl>
    implements _$$Module_InitialImplCopyWith<$Res> {
  __$$Module_InitialImplCopyWithImpl(
      _$Module_InitialImpl _value, $Res Function(_$Module_InitialImpl) _then)
      : super(_value, _then);

  /// Create a copy of ModuleState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$Module_InitialImpl implements _Module_Initial {
  const _$Module_InitialImpl();

  @override
  String toString() {
    return 'ModuleState.initial()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$Module_InitialImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<Module> modules) loaded,
    required TResult Function(String message) error,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<Module> modules)? loaded,
    TResult? Function(String message)? error,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<Module> modules)? loaded,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Module_Initial value) initial,
    required TResult Function(_Module_Loading value) loading,
    required TResult Function(_Module_Loaded value) loaded,
    required TResult Function(_Module_Error value) error,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Module_Initial value)? initial,
    TResult? Function(_Module_Loading value)? loading,
    TResult? Function(_Module_Loaded value)? loaded,
    TResult? Function(_Module_Error value)? error,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Module_Initial value)? initial,
    TResult Function(_Module_Loading value)? loading,
    TResult Function(_Module_Loaded value)? loaded,
    TResult Function(_Module_Error value)? error,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Module_Initial implements ModuleState {
  const factory _Module_Initial() = _$Module_InitialImpl;
}

/// @nodoc
abstract class _$$Module_LoadingImplCopyWith<$Res> {
  factory _$$Module_LoadingImplCopyWith(_$Module_LoadingImpl value,
          $Res Function(_$Module_LoadingImpl) then) =
      __$$Module_LoadingImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$Module_LoadingImplCopyWithImpl<$Res>
    extends _$ModuleStateCopyWithImpl<$Res, _$Module_LoadingImpl>
    implements _$$Module_LoadingImplCopyWith<$Res> {
  __$$Module_LoadingImplCopyWithImpl(
      _$Module_LoadingImpl _value, $Res Function(_$Module_LoadingImpl) _then)
      : super(_value, _then);

  /// Create a copy of ModuleState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$Module_LoadingImpl implements _Module_Loading {
  const _$Module_LoadingImpl();

  @override
  String toString() {
    return 'ModuleState.loading()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$Module_LoadingImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<Module> modules) loaded,
    required TResult Function(String message) error,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<Module> modules)? loaded,
    TResult? Function(String message)? error,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<Module> modules)? loaded,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Module_Initial value) initial,
    required TResult Function(_Module_Loading value) loading,
    required TResult Function(_Module_Loaded value) loaded,
    required TResult Function(_Module_Error value) error,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Module_Initial value)? initial,
    TResult? Function(_Module_Loading value)? loading,
    TResult? Function(_Module_Loaded value)? loaded,
    TResult? Function(_Module_Error value)? error,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Module_Initial value)? initial,
    TResult Function(_Module_Loading value)? loading,
    TResult Function(_Module_Loaded value)? loaded,
    TResult Function(_Module_Error value)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _Module_Loading implements ModuleState {
  const factory _Module_Loading() = _$Module_LoadingImpl;
}

/// @nodoc
abstract class _$$Module_LoadedImplCopyWith<$Res> {
  factory _$$Module_LoadedImplCopyWith(
          _$Module_LoadedImpl value, $Res Function(_$Module_LoadedImpl) then) =
      __$$Module_LoadedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({List<Module> modules});
}

/// @nodoc
class __$$Module_LoadedImplCopyWithImpl<$Res>
    extends _$ModuleStateCopyWithImpl<$Res, _$Module_LoadedImpl>
    implements _$$Module_LoadedImplCopyWith<$Res> {
  __$$Module_LoadedImplCopyWithImpl(
      _$Module_LoadedImpl _value, $Res Function(_$Module_LoadedImpl) _then)
      : super(_value, _then);

  /// Create a copy of ModuleState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? modules = null,
  }) {
    return _then(_$Module_LoadedImpl(
      null == modules
          ? _value._modules
          : modules // ignore: cast_nullable_to_non_nullable
              as List<Module>,
    ));
  }
}

/// @nodoc

class _$Module_LoadedImpl implements _Module_Loaded {
  const _$Module_LoadedImpl(final List<Module> modules) : _modules = modules;

  final List<Module> _modules;
  @override
  List<Module> get modules {
    if (_modules is EqualUnmodifiableListView) return _modules;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_modules);
  }

  @override
  String toString() {
    return 'ModuleState.loaded(modules: $modules)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$Module_LoadedImpl &&
            const DeepCollectionEquality().equals(other._modules, _modules));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_modules));

  /// Create a copy of ModuleState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$Module_LoadedImplCopyWith<_$Module_LoadedImpl> get copyWith =>
      __$$Module_LoadedImplCopyWithImpl<_$Module_LoadedImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<Module> modules) loaded,
    required TResult Function(String message) error,
  }) {
    return loaded(modules);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<Module> modules)? loaded,
    TResult? Function(String message)? error,
  }) {
    return loaded?.call(modules);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<Module> modules)? loaded,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(modules);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Module_Initial value) initial,
    required TResult Function(_Module_Loading value) loading,
    required TResult Function(_Module_Loaded value) loaded,
    required TResult Function(_Module_Error value) error,
  }) {
    return loaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Module_Initial value)? initial,
    TResult? Function(_Module_Loading value)? loading,
    TResult? Function(_Module_Loaded value)? loaded,
    TResult? Function(_Module_Error value)? error,
  }) {
    return loaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Module_Initial value)? initial,
    TResult Function(_Module_Loading value)? loading,
    TResult Function(_Module_Loaded value)? loaded,
    TResult Function(_Module_Error value)? error,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(this);
    }
    return orElse();
  }
}

abstract class _Module_Loaded implements ModuleState {
  const factory _Module_Loaded(final List<Module> modules) =
      _$Module_LoadedImpl;

  List<Module> get modules;

  /// Create a copy of ModuleState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$Module_LoadedImplCopyWith<_$Module_LoadedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$Module_ErrorImplCopyWith<$Res> {
  factory _$$Module_ErrorImplCopyWith(
          _$Module_ErrorImpl value, $Res Function(_$Module_ErrorImpl) then) =
      __$$Module_ErrorImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String message});
}

/// @nodoc
class __$$Module_ErrorImplCopyWithImpl<$Res>
    extends _$ModuleStateCopyWithImpl<$Res, _$Module_ErrorImpl>
    implements _$$Module_ErrorImplCopyWith<$Res> {
  __$$Module_ErrorImplCopyWithImpl(
      _$Module_ErrorImpl _value, $Res Function(_$Module_ErrorImpl) _then)
      : super(_value, _then);

  /// Create a copy of ModuleState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
  }) {
    return _then(_$Module_ErrorImpl(
      null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$Module_ErrorImpl implements _Module_Error {
  const _$Module_ErrorImpl(this.message);

  @override
  final String message;

  @override
  String toString() {
    return 'ModuleState.error(message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$Module_ErrorImpl &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  /// Create a copy of ModuleState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$Module_ErrorImplCopyWith<_$Module_ErrorImpl> get copyWith =>
      __$$Module_ErrorImplCopyWithImpl<_$Module_ErrorImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<Module> modules) loaded,
    required TResult Function(String message) error,
  }) {
    return error(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<Module> modules)? loaded,
    TResult? Function(String message)? error,
  }) {
    return error?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<Module> modules)? loaded,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Module_Initial value) initial,
    required TResult Function(_Module_Loading value) loading,
    required TResult Function(_Module_Loaded value) loaded,
    required TResult Function(_Module_Error value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Module_Initial value)? initial,
    TResult? Function(_Module_Loading value)? loading,
    TResult? Function(_Module_Loaded value)? loaded,
    TResult? Function(_Module_Error value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Module_Initial value)? initial,
    TResult Function(_Module_Loading value)? loading,
    TResult Function(_Module_Loaded value)? loaded,
    TResult Function(_Module_Error value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class _Module_Error implements ModuleState {
  const factory _Module_Error(final String message) = _$Module_ErrorImpl;

  String get message;

  /// Create a copy of ModuleState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$Module_ErrorImplCopyWith<_$Module_ErrorImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
