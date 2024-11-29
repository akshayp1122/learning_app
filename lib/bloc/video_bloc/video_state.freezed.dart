// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'video_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$VideoState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<Video> videos) loaded,
    required TResult Function(String message) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<Video> videos)? loaded,
    TResult? Function(String message)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<Video> videos)? loaded,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Video_Initial value) initial,
    required TResult Function(_Video_Loading value) loading,
    required TResult Function(_Video_Loaded value) loaded,
    required TResult Function(_Video_Error value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Video_Initial value)? initial,
    TResult? Function(_Video_Loading value)? loading,
    TResult? Function(_Video_Loaded value)? loaded,
    TResult? Function(_Video_Error value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Video_Initial value)? initial,
    TResult Function(_Video_Loading value)? loading,
    TResult Function(_Video_Loaded value)? loaded,
    TResult Function(_Video_Error value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $VideoStateCopyWith<$Res> {
  factory $VideoStateCopyWith(
          VideoState value, $Res Function(VideoState) then) =
      _$VideoStateCopyWithImpl<$Res, VideoState>;
}

/// @nodoc
class _$VideoStateCopyWithImpl<$Res, $Val extends VideoState>
    implements $VideoStateCopyWith<$Res> {
  _$VideoStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of VideoState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$Video_InitialImplCopyWith<$Res> {
  factory _$$Video_InitialImplCopyWith(
          _$Video_InitialImpl value, $Res Function(_$Video_InitialImpl) then) =
      __$$Video_InitialImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$Video_InitialImplCopyWithImpl<$Res>
    extends _$VideoStateCopyWithImpl<$Res, _$Video_InitialImpl>
    implements _$$Video_InitialImplCopyWith<$Res> {
  __$$Video_InitialImplCopyWithImpl(
      _$Video_InitialImpl _value, $Res Function(_$Video_InitialImpl) _then)
      : super(_value, _then);

  /// Create a copy of VideoState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$Video_InitialImpl implements _Video_Initial {
  const _$Video_InitialImpl();

  @override
  String toString() {
    return 'VideoState.initial()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$Video_InitialImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<Video> videos) loaded,
    required TResult Function(String message) error,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<Video> videos)? loaded,
    TResult? Function(String message)? error,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<Video> videos)? loaded,
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
    required TResult Function(_Video_Initial value) initial,
    required TResult Function(_Video_Loading value) loading,
    required TResult Function(_Video_Loaded value) loaded,
    required TResult Function(_Video_Error value) error,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Video_Initial value)? initial,
    TResult? Function(_Video_Loading value)? loading,
    TResult? Function(_Video_Loaded value)? loaded,
    TResult? Function(_Video_Error value)? error,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Video_Initial value)? initial,
    TResult Function(_Video_Loading value)? loading,
    TResult Function(_Video_Loaded value)? loaded,
    TResult Function(_Video_Error value)? error,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Video_Initial implements VideoState {
  const factory _Video_Initial() = _$Video_InitialImpl;
}

/// @nodoc
abstract class _$$Video_LoadingImplCopyWith<$Res> {
  factory _$$Video_LoadingImplCopyWith(
          _$Video_LoadingImpl value, $Res Function(_$Video_LoadingImpl) then) =
      __$$Video_LoadingImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$Video_LoadingImplCopyWithImpl<$Res>
    extends _$VideoStateCopyWithImpl<$Res, _$Video_LoadingImpl>
    implements _$$Video_LoadingImplCopyWith<$Res> {
  __$$Video_LoadingImplCopyWithImpl(
      _$Video_LoadingImpl _value, $Res Function(_$Video_LoadingImpl) _then)
      : super(_value, _then);

  /// Create a copy of VideoState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$Video_LoadingImpl implements _Video_Loading {
  const _$Video_LoadingImpl();

  @override
  String toString() {
    return 'VideoState.loading()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$Video_LoadingImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<Video> videos) loaded,
    required TResult Function(String message) error,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<Video> videos)? loaded,
    TResult? Function(String message)? error,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<Video> videos)? loaded,
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
    required TResult Function(_Video_Initial value) initial,
    required TResult Function(_Video_Loading value) loading,
    required TResult Function(_Video_Loaded value) loaded,
    required TResult Function(_Video_Error value) error,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Video_Initial value)? initial,
    TResult? Function(_Video_Loading value)? loading,
    TResult? Function(_Video_Loaded value)? loaded,
    TResult? Function(_Video_Error value)? error,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Video_Initial value)? initial,
    TResult Function(_Video_Loading value)? loading,
    TResult Function(_Video_Loaded value)? loaded,
    TResult Function(_Video_Error value)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _Video_Loading implements VideoState {
  const factory _Video_Loading() = _$Video_LoadingImpl;
}

/// @nodoc
abstract class _$$Video_LoadedImplCopyWith<$Res> {
  factory _$$Video_LoadedImplCopyWith(
          _$Video_LoadedImpl value, $Res Function(_$Video_LoadedImpl) then) =
      __$$Video_LoadedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({List<Video> videos});
}

/// @nodoc
class __$$Video_LoadedImplCopyWithImpl<$Res>
    extends _$VideoStateCopyWithImpl<$Res, _$Video_LoadedImpl>
    implements _$$Video_LoadedImplCopyWith<$Res> {
  __$$Video_LoadedImplCopyWithImpl(
      _$Video_LoadedImpl _value, $Res Function(_$Video_LoadedImpl) _then)
      : super(_value, _then);

  /// Create a copy of VideoState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? videos = null,
  }) {
    return _then(_$Video_LoadedImpl(
      null == videos
          ? _value._videos
          : videos // ignore: cast_nullable_to_non_nullable
              as List<Video>,
    ));
  }
}

/// @nodoc

class _$Video_LoadedImpl implements _Video_Loaded {
  const _$Video_LoadedImpl(final List<Video> videos) : _videos = videos;

  final List<Video> _videos;
  @override
  List<Video> get videos {
    if (_videos is EqualUnmodifiableListView) return _videos;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_videos);
  }

  @override
  String toString() {
    return 'VideoState.loaded(videos: $videos)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$Video_LoadedImpl &&
            const DeepCollectionEquality().equals(other._videos, _videos));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_videos));

  /// Create a copy of VideoState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$Video_LoadedImplCopyWith<_$Video_LoadedImpl> get copyWith =>
      __$$Video_LoadedImplCopyWithImpl<_$Video_LoadedImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<Video> videos) loaded,
    required TResult Function(String message) error,
  }) {
    return loaded(videos);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<Video> videos)? loaded,
    TResult? Function(String message)? error,
  }) {
    return loaded?.call(videos);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<Video> videos)? loaded,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(videos);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Video_Initial value) initial,
    required TResult Function(_Video_Loading value) loading,
    required TResult Function(_Video_Loaded value) loaded,
    required TResult Function(_Video_Error value) error,
  }) {
    return loaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Video_Initial value)? initial,
    TResult? Function(_Video_Loading value)? loading,
    TResult? Function(_Video_Loaded value)? loaded,
    TResult? Function(_Video_Error value)? error,
  }) {
    return loaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Video_Initial value)? initial,
    TResult Function(_Video_Loading value)? loading,
    TResult Function(_Video_Loaded value)? loaded,
    TResult Function(_Video_Error value)? error,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(this);
    }
    return orElse();
  }
}

abstract class _Video_Loaded implements VideoState {
  const factory _Video_Loaded(final List<Video> videos) = _$Video_LoadedImpl;

  List<Video> get videos;

  /// Create a copy of VideoState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$Video_LoadedImplCopyWith<_$Video_LoadedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$Video_ErrorImplCopyWith<$Res> {
  factory _$$Video_ErrorImplCopyWith(
          _$Video_ErrorImpl value, $Res Function(_$Video_ErrorImpl) then) =
      __$$Video_ErrorImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String message});
}

/// @nodoc
class __$$Video_ErrorImplCopyWithImpl<$Res>
    extends _$VideoStateCopyWithImpl<$Res, _$Video_ErrorImpl>
    implements _$$Video_ErrorImplCopyWith<$Res> {
  __$$Video_ErrorImplCopyWithImpl(
      _$Video_ErrorImpl _value, $Res Function(_$Video_ErrorImpl) _then)
      : super(_value, _then);

  /// Create a copy of VideoState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
  }) {
    return _then(_$Video_ErrorImpl(
      null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$Video_ErrorImpl implements _Video_Error {
  const _$Video_ErrorImpl(this.message);

  @override
  final String message;

  @override
  String toString() {
    return 'VideoState.error(message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$Video_ErrorImpl &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  /// Create a copy of VideoState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$Video_ErrorImplCopyWith<_$Video_ErrorImpl> get copyWith =>
      __$$Video_ErrorImplCopyWithImpl<_$Video_ErrorImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<Video> videos) loaded,
    required TResult Function(String message) error,
  }) {
    return error(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<Video> videos)? loaded,
    TResult? Function(String message)? error,
  }) {
    return error?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<Video> videos)? loaded,
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
    required TResult Function(_Video_Initial value) initial,
    required TResult Function(_Video_Loading value) loading,
    required TResult Function(_Video_Loaded value) loaded,
    required TResult Function(_Video_Error value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Video_Initial value)? initial,
    TResult? Function(_Video_Loading value)? loading,
    TResult? Function(_Video_Loaded value)? loaded,
    TResult? Function(_Video_Error value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Video_Initial value)? initial,
    TResult Function(_Video_Loading value)? loading,
    TResult Function(_Video_Loaded value)? loaded,
    TResult Function(_Video_Error value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class _Video_Error implements VideoState {
  const factory _Video_Error(final String message) = _$Video_ErrorImpl;

  String get message;

  /// Create a copy of VideoState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$Video_ErrorImplCopyWith<_$Video_ErrorImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
