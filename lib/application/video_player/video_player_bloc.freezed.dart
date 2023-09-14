// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'video_player_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$VideoPlayerEvent {
  String get videoUrl => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String videoUrl) started,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String videoUrl)? started,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String videoUrl)? started,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Started value) started,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Started value)? started,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Started value)? started,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $VideoPlayerEventCopyWith<VideoPlayerEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $VideoPlayerEventCopyWith<$Res> {
  factory $VideoPlayerEventCopyWith(
          VideoPlayerEvent value, $Res Function(VideoPlayerEvent) then) =
      _$VideoPlayerEventCopyWithImpl<$Res, VideoPlayerEvent>;
  @useResult
  $Res call({String videoUrl});
}

/// @nodoc
class _$VideoPlayerEventCopyWithImpl<$Res, $Val extends VideoPlayerEvent>
    implements $VideoPlayerEventCopyWith<$Res> {
  _$VideoPlayerEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? videoUrl = null,
  }) {
    return _then(_value.copyWith(
      videoUrl: null == videoUrl
          ? _value.videoUrl
          : videoUrl // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$StartedCopyWith<$Res>
    implements $VideoPlayerEventCopyWith<$Res> {
  factory _$$StartedCopyWith(_$Started value, $Res Function(_$Started) then) =
      __$$StartedCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String videoUrl});
}

/// @nodoc
class __$$StartedCopyWithImpl<$Res>
    extends _$VideoPlayerEventCopyWithImpl<$Res, _$Started>
    implements _$$StartedCopyWith<$Res> {
  __$$StartedCopyWithImpl(_$Started _value, $Res Function(_$Started) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? videoUrl = null,
  }) {
    return _then(_$Started(
      null == videoUrl
          ? _value.videoUrl
          : videoUrl // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$Started implements Started {
  const _$Started(this.videoUrl);

  @override
  final String videoUrl;

  @override
  String toString() {
    return 'VideoPlayerEvent.started(videoUrl: $videoUrl)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$Started &&
            (identical(other.videoUrl, videoUrl) ||
                other.videoUrl == videoUrl));
  }

  @override
  int get hashCode => Object.hash(runtimeType, videoUrl);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$StartedCopyWith<_$Started> get copyWith =>
      __$$StartedCopyWithImpl<_$Started>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String videoUrl) started,
  }) {
    return started(videoUrl);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String videoUrl)? started,
  }) {
    return started?.call(videoUrl);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String videoUrl)? started,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started(videoUrl);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Started value) started,
  }) {
    return started(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Started value)? started,
  }) {
    return started?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Started value)? started,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started(this);
    }
    return orElse();
  }
}

abstract class Started implements VideoPlayerEvent {
  const factory Started(final String videoUrl) = _$Started;

  @override
  String get videoUrl;
  @override
  @JsonKey(ignore: true)
  _$$StartedCopyWith<_$Started> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$VideoPlayerState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(Widget controller) playing,
    required TResult Function() paused,
    required TResult Function(String message) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(Widget controller)? playing,
    TResult? Function()? paused,
    TResult? Function(String message)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(Widget controller)? playing,
    TResult Function()? paused,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(VideoPlayerInitial value) initial,
    required TResult Function(VideoPlayerLoading value) loading,
    required TResult Function(VideoPlayerPlaying value) playing,
    required TResult Function(VideoPlayerPaused value) paused,
    required TResult Function(VideoPlayerError value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(VideoPlayerInitial value)? initial,
    TResult? Function(VideoPlayerLoading value)? loading,
    TResult? Function(VideoPlayerPlaying value)? playing,
    TResult? Function(VideoPlayerPaused value)? paused,
    TResult? Function(VideoPlayerError value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(VideoPlayerInitial value)? initial,
    TResult Function(VideoPlayerLoading value)? loading,
    TResult Function(VideoPlayerPlaying value)? playing,
    TResult Function(VideoPlayerPaused value)? paused,
    TResult Function(VideoPlayerError value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $VideoPlayerStateCopyWith<$Res> {
  factory $VideoPlayerStateCopyWith(
          VideoPlayerState value, $Res Function(VideoPlayerState) then) =
      _$VideoPlayerStateCopyWithImpl<$Res, VideoPlayerState>;
}

/// @nodoc
class _$VideoPlayerStateCopyWithImpl<$Res, $Val extends VideoPlayerState>
    implements $VideoPlayerStateCopyWith<$Res> {
  _$VideoPlayerStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$VideoPlayerInitialCopyWith<$Res> {
  factory _$$VideoPlayerInitialCopyWith(_$VideoPlayerInitial value,
          $Res Function(_$VideoPlayerInitial) then) =
      __$$VideoPlayerInitialCopyWithImpl<$Res>;
}

/// @nodoc
class __$$VideoPlayerInitialCopyWithImpl<$Res>
    extends _$VideoPlayerStateCopyWithImpl<$Res, _$VideoPlayerInitial>
    implements _$$VideoPlayerInitialCopyWith<$Res> {
  __$$VideoPlayerInitialCopyWithImpl(
      _$VideoPlayerInitial _value, $Res Function(_$VideoPlayerInitial) _then)
      : super(_value, _then);
}

/// @nodoc

class _$VideoPlayerInitial implements VideoPlayerInitial {
  const _$VideoPlayerInitial();

  @override
  String toString() {
    return 'VideoPlayerState.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$VideoPlayerInitial);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(Widget controller) playing,
    required TResult Function() paused,
    required TResult Function(String message) error,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(Widget controller)? playing,
    TResult? Function()? paused,
    TResult? Function(String message)? error,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(Widget controller)? playing,
    TResult Function()? paused,
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
    required TResult Function(VideoPlayerInitial value) initial,
    required TResult Function(VideoPlayerLoading value) loading,
    required TResult Function(VideoPlayerPlaying value) playing,
    required TResult Function(VideoPlayerPaused value) paused,
    required TResult Function(VideoPlayerError value) error,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(VideoPlayerInitial value)? initial,
    TResult? Function(VideoPlayerLoading value)? loading,
    TResult? Function(VideoPlayerPlaying value)? playing,
    TResult? Function(VideoPlayerPaused value)? paused,
    TResult? Function(VideoPlayerError value)? error,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(VideoPlayerInitial value)? initial,
    TResult Function(VideoPlayerLoading value)? loading,
    TResult Function(VideoPlayerPlaying value)? playing,
    TResult Function(VideoPlayerPaused value)? paused,
    TResult Function(VideoPlayerError value)? error,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class VideoPlayerInitial implements VideoPlayerState {
  const factory VideoPlayerInitial() = _$VideoPlayerInitial;
}

/// @nodoc
abstract class _$$VideoPlayerLoadingCopyWith<$Res> {
  factory _$$VideoPlayerLoadingCopyWith(_$VideoPlayerLoading value,
          $Res Function(_$VideoPlayerLoading) then) =
      __$$VideoPlayerLoadingCopyWithImpl<$Res>;
}

/// @nodoc
class __$$VideoPlayerLoadingCopyWithImpl<$Res>
    extends _$VideoPlayerStateCopyWithImpl<$Res, _$VideoPlayerLoading>
    implements _$$VideoPlayerLoadingCopyWith<$Res> {
  __$$VideoPlayerLoadingCopyWithImpl(
      _$VideoPlayerLoading _value, $Res Function(_$VideoPlayerLoading) _then)
      : super(_value, _then);
}

/// @nodoc

class _$VideoPlayerLoading implements VideoPlayerLoading {
  const _$VideoPlayerLoading();

  @override
  String toString() {
    return 'VideoPlayerState.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$VideoPlayerLoading);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(Widget controller) playing,
    required TResult Function() paused,
    required TResult Function(String message) error,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(Widget controller)? playing,
    TResult? Function()? paused,
    TResult? Function(String message)? error,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(Widget controller)? playing,
    TResult Function()? paused,
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
    required TResult Function(VideoPlayerInitial value) initial,
    required TResult Function(VideoPlayerLoading value) loading,
    required TResult Function(VideoPlayerPlaying value) playing,
    required TResult Function(VideoPlayerPaused value) paused,
    required TResult Function(VideoPlayerError value) error,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(VideoPlayerInitial value)? initial,
    TResult? Function(VideoPlayerLoading value)? loading,
    TResult? Function(VideoPlayerPlaying value)? playing,
    TResult? Function(VideoPlayerPaused value)? paused,
    TResult? Function(VideoPlayerError value)? error,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(VideoPlayerInitial value)? initial,
    TResult Function(VideoPlayerLoading value)? loading,
    TResult Function(VideoPlayerPlaying value)? playing,
    TResult Function(VideoPlayerPaused value)? paused,
    TResult Function(VideoPlayerError value)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class VideoPlayerLoading implements VideoPlayerState {
  const factory VideoPlayerLoading() = _$VideoPlayerLoading;
}

/// @nodoc
abstract class _$$VideoPlayerPlayingCopyWith<$Res> {
  factory _$$VideoPlayerPlayingCopyWith(_$VideoPlayerPlaying value,
          $Res Function(_$VideoPlayerPlaying) then) =
      __$$VideoPlayerPlayingCopyWithImpl<$Res>;
  @useResult
  $Res call({Widget controller});
}

/// @nodoc
class __$$VideoPlayerPlayingCopyWithImpl<$Res>
    extends _$VideoPlayerStateCopyWithImpl<$Res, _$VideoPlayerPlaying>
    implements _$$VideoPlayerPlayingCopyWith<$Res> {
  __$$VideoPlayerPlayingCopyWithImpl(
      _$VideoPlayerPlaying _value, $Res Function(_$VideoPlayerPlaying) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? controller = null,
  }) {
    return _then(_$VideoPlayerPlaying(
      null == controller
          ? _value.controller
          : controller // ignore: cast_nullable_to_non_nullable
              as Widget,
    ));
  }
}

/// @nodoc

class _$VideoPlayerPlaying implements VideoPlayerPlaying {
  const _$VideoPlayerPlaying(this.controller);

  @override
  final Widget controller;

  @override
  String toString() {
    return 'VideoPlayerState.playing(controller: $controller)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$VideoPlayerPlaying &&
            (identical(other.controller, controller) ||
                other.controller == controller));
  }

  @override
  int get hashCode => Object.hash(runtimeType, controller);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$VideoPlayerPlayingCopyWith<_$VideoPlayerPlaying> get copyWith =>
      __$$VideoPlayerPlayingCopyWithImpl<_$VideoPlayerPlaying>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(Widget controller) playing,
    required TResult Function() paused,
    required TResult Function(String message) error,
  }) {
    return playing(controller);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(Widget controller)? playing,
    TResult? Function()? paused,
    TResult? Function(String message)? error,
  }) {
    return playing?.call(controller);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(Widget controller)? playing,
    TResult Function()? paused,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) {
    if (playing != null) {
      return playing(controller);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(VideoPlayerInitial value) initial,
    required TResult Function(VideoPlayerLoading value) loading,
    required TResult Function(VideoPlayerPlaying value) playing,
    required TResult Function(VideoPlayerPaused value) paused,
    required TResult Function(VideoPlayerError value) error,
  }) {
    return playing(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(VideoPlayerInitial value)? initial,
    TResult? Function(VideoPlayerLoading value)? loading,
    TResult? Function(VideoPlayerPlaying value)? playing,
    TResult? Function(VideoPlayerPaused value)? paused,
    TResult? Function(VideoPlayerError value)? error,
  }) {
    return playing?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(VideoPlayerInitial value)? initial,
    TResult Function(VideoPlayerLoading value)? loading,
    TResult Function(VideoPlayerPlaying value)? playing,
    TResult Function(VideoPlayerPaused value)? paused,
    TResult Function(VideoPlayerError value)? error,
    required TResult orElse(),
  }) {
    if (playing != null) {
      return playing(this);
    }
    return orElse();
  }
}

abstract class VideoPlayerPlaying implements VideoPlayerState {
  const factory VideoPlayerPlaying(final Widget controller) =
      _$VideoPlayerPlaying;

  Widget get controller;
  @JsonKey(ignore: true)
  _$$VideoPlayerPlayingCopyWith<_$VideoPlayerPlaying> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$VideoPlayerPausedCopyWith<$Res> {
  factory _$$VideoPlayerPausedCopyWith(
          _$VideoPlayerPaused value, $Res Function(_$VideoPlayerPaused) then) =
      __$$VideoPlayerPausedCopyWithImpl<$Res>;
}

/// @nodoc
class __$$VideoPlayerPausedCopyWithImpl<$Res>
    extends _$VideoPlayerStateCopyWithImpl<$Res, _$VideoPlayerPaused>
    implements _$$VideoPlayerPausedCopyWith<$Res> {
  __$$VideoPlayerPausedCopyWithImpl(
      _$VideoPlayerPaused _value, $Res Function(_$VideoPlayerPaused) _then)
      : super(_value, _then);
}

/// @nodoc

class _$VideoPlayerPaused implements VideoPlayerPaused {
  const _$VideoPlayerPaused();

  @override
  String toString() {
    return 'VideoPlayerState.paused()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$VideoPlayerPaused);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(Widget controller) playing,
    required TResult Function() paused,
    required TResult Function(String message) error,
  }) {
    return paused();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(Widget controller)? playing,
    TResult? Function()? paused,
    TResult? Function(String message)? error,
  }) {
    return paused?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(Widget controller)? playing,
    TResult Function()? paused,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) {
    if (paused != null) {
      return paused();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(VideoPlayerInitial value) initial,
    required TResult Function(VideoPlayerLoading value) loading,
    required TResult Function(VideoPlayerPlaying value) playing,
    required TResult Function(VideoPlayerPaused value) paused,
    required TResult Function(VideoPlayerError value) error,
  }) {
    return paused(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(VideoPlayerInitial value)? initial,
    TResult? Function(VideoPlayerLoading value)? loading,
    TResult? Function(VideoPlayerPlaying value)? playing,
    TResult? Function(VideoPlayerPaused value)? paused,
    TResult? Function(VideoPlayerError value)? error,
  }) {
    return paused?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(VideoPlayerInitial value)? initial,
    TResult Function(VideoPlayerLoading value)? loading,
    TResult Function(VideoPlayerPlaying value)? playing,
    TResult Function(VideoPlayerPaused value)? paused,
    TResult Function(VideoPlayerError value)? error,
    required TResult orElse(),
  }) {
    if (paused != null) {
      return paused(this);
    }
    return orElse();
  }
}

abstract class VideoPlayerPaused implements VideoPlayerState {
  const factory VideoPlayerPaused() = _$VideoPlayerPaused;
}

/// @nodoc
abstract class _$$VideoPlayerErrorCopyWith<$Res> {
  factory _$$VideoPlayerErrorCopyWith(
          _$VideoPlayerError value, $Res Function(_$VideoPlayerError) then) =
      __$$VideoPlayerErrorCopyWithImpl<$Res>;
  @useResult
  $Res call({String message});
}

/// @nodoc
class __$$VideoPlayerErrorCopyWithImpl<$Res>
    extends _$VideoPlayerStateCopyWithImpl<$Res, _$VideoPlayerError>
    implements _$$VideoPlayerErrorCopyWith<$Res> {
  __$$VideoPlayerErrorCopyWithImpl(
      _$VideoPlayerError _value, $Res Function(_$VideoPlayerError) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
  }) {
    return _then(_$VideoPlayerError(
      null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$VideoPlayerError implements VideoPlayerError {
  const _$VideoPlayerError(this.message);

  @override
  final String message;

  @override
  String toString() {
    return 'VideoPlayerState.error(message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$VideoPlayerError &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$VideoPlayerErrorCopyWith<_$VideoPlayerError> get copyWith =>
      __$$VideoPlayerErrorCopyWithImpl<_$VideoPlayerError>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(Widget controller) playing,
    required TResult Function() paused,
    required TResult Function(String message) error,
  }) {
    return error(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(Widget controller)? playing,
    TResult? Function()? paused,
    TResult? Function(String message)? error,
  }) {
    return error?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(Widget controller)? playing,
    TResult Function()? paused,
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
    required TResult Function(VideoPlayerInitial value) initial,
    required TResult Function(VideoPlayerLoading value) loading,
    required TResult Function(VideoPlayerPlaying value) playing,
    required TResult Function(VideoPlayerPaused value) paused,
    required TResult Function(VideoPlayerError value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(VideoPlayerInitial value)? initial,
    TResult? Function(VideoPlayerLoading value)? loading,
    TResult? Function(VideoPlayerPlaying value)? playing,
    TResult? Function(VideoPlayerPaused value)? paused,
    TResult? Function(VideoPlayerError value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(VideoPlayerInitial value)? initial,
    TResult Function(VideoPlayerLoading value)? loading,
    TResult Function(VideoPlayerPlaying value)? playing,
    TResult Function(VideoPlayerPaused value)? paused,
    TResult Function(VideoPlayerError value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class VideoPlayerError implements VideoPlayerState {
  const factory VideoPlayerError(final String message) = _$VideoPlayerError;

  String get message;
  @JsonKey(ignore: true)
  _$$VideoPlayerErrorCopyWith<_$VideoPlayerError> get copyWith =>
      throw _privateConstructorUsedError;
}
