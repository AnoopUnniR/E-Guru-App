// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'chat_bloc_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$ChatBlocEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String courseName, int chatId) started,
    required TResult Function(Chat message) send,
    required TResult Function() update,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String courseName, int chatId)? started,
    TResult? Function(Chat message)? send,
    TResult? Function()? update,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String courseName, int chatId)? started,
    TResult Function(Chat message)? send,
    TResult Function()? update,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(Send value) send,
    required TResult Function(Update value) update,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(Send value)? send,
    TResult? Function(Update value)? update,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(Send value)? send,
    TResult Function(Update value)? update,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ChatBlocEventCopyWith<$Res> {
  factory $ChatBlocEventCopyWith(
          ChatBlocEvent value, $Res Function(ChatBlocEvent) then) =
      _$ChatBlocEventCopyWithImpl<$Res, ChatBlocEvent>;
}

/// @nodoc
class _$ChatBlocEventCopyWithImpl<$Res, $Val extends ChatBlocEvent>
    implements $ChatBlocEventCopyWith<$Res> {
  _$ChatBlocEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_StartedCopyWith<$Res> {
  factory _$$_StartedCopyWith(
          _$_Started value, $Res Function(_$_Started) then) =
      __$$_StartedCopyWithImpl<$Res>;
  @useResult
  $Res call({String courseName, int chatId});
}

/// @nodoc
class __$$_StartedCopyWithImpl<$Res>
    extends _$ChatBlocEventCopyWithImpl<$Res, _$_Started>
    implements _$$_StartedCopyWith<$Res> {
  __$$_StartedCopyWithImpl(_$_Started _value, $Res Function(_$_Started) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? courseName = null,
    Object? chatId = null,
  }) {
    return _then(_$_Started(
      courseName: null == courseName
          ? _value.courseName
          : courseName // ignore: cast_nullable_to_non_nullable
              as String,
      chatId: null == chatId
          ? _value.chatId
          : chatId // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$_Started with DiagnosticableTreeMixin implements _Started {
  const _$_Started({required this.courseName, required this.chatId});

  @override
  final String courseName;
  @override
  final int chatId;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ChatBlocEvent.started(courseName: $courseName, chatId: $chatId)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'ChatBlocEvent.started'))
      ..add(DiagnosticsProperty('courseName', courseName))
      ..add(DiagnosticsProperty('chatId', chatId));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Started &&
            (identical(other.courseName, courseName) ||
                other.courseName == courseName) &&
            (identical(other.chatId, chatId) || other.chatId == chatId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, courseName, chatId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_StartedCopyWith<_$_Started> get copyWith =>
      __$$_StartedCopyWithImpl<_$_Started>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String courseName, int chatId) started,
    required TResult Function(Chat message) send,
    required TResult Function() update,
  }) {
    return started(courseName, chatId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String courseName, int chatId)? started,
    TResult? Function(Chat message)? send,
    TResult? Function()? update,
  }) {
    return started?.call(courseName, chatId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String courseName, int chatId)? started,
    TResult Function(Chat message)? send,
    TResult Function()? update,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started(courseName, chatId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(Send value) send,
    required TResult Function(Update value) update,
  }) {
    return started(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(Send value)? send,
    TResult? Function(Update value)? update,
  }) {
    return started?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(Send value)? send,
    TResult Function(Update value)? update,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started(this);
    }
    return orElse();
  }
}

abstract class _Started implements ChatBlocEvent {
  const factory _Started(
      {required final String courseName,
      required final int chatId}) = _$_Started;

  String get courseName;
  int get chatId;
  @JsonKey(ignore: true)
  _$$_StartedCopyWith<_$_Started> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SendCopyWith<$Res> {
  factory _$$SendCopyWith(_$Send value, $Res Function(_$Send) then) =
      __$$SendCopyWithImpl<$Res>;
  @useResult
  $Res call({Chat message});
}

/// @nodoc
class __$$SendCopyWithImpl<$Res>
    extends _$ChatBlocEventCopyWithImpl<$Res, _$Send>
    implements _$$SendCopyWith<$Res> {
  __$$SendCopyWithImpl(_$Send _value, $Res Function(_$Send) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
  }) {
    return _then(_$Send(
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as Chat,
    ));
  }
}

/// @nodoc

class _$Send with DiagnosticableTreeMixin implements Send {
  const _$Send({required this.message});

  @override
  final Chat message;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ChatBlocEvent.send(message: $message)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'ChatBlocEvent.send'))
      ..add(DiagnosticsProperty('message', message));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$Send &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SendCopyWith<_$Send> get copyWith =>
      __$$SendCopyWithImpl<_$Send>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String courseName, int chatId) started,
    required TResult Function(Chat message) send,
    required TResult Function() update,
  }) {
    return send(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String courseName, int chatId)? started,
    TResult? Function(Chat message)? send,
    TResult? Function()? update,
  }) {
    return send?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String courseName, int chatId)? started,
    TResult Function(Chat message)? send,
    TResult Function()? update,
    required TResult orElse(),
  }) {
    if (send != null) {
      return send(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(Send value) send,
    required TResult Function(Update value) update,
  }) {
    return send(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(Send value)? send,
    TResult? Function(Update value)? update,
  }) {
    return send?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(Send value)? send,
    TResult Function(Update value)? update,
    required TResult orElse(),
  }) {
    if (send != null) {
      return send(this);
    }
    return orElse();
  }
}

abstract class Send implements ChatBlocEvent {
  const factory Send({required final Chat message}) = _$Send;

  Chat get message;
  @JsonKey(ignore: true)
  _$$SendCopyWith<_$Send> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$UpdateCopyWith<$Res> {
  factory _$$UpdateCopyWith(_$Update value, $Res Function(_$Update) then) =
      __$$UpdateCopyWithImpl<$Res>;
}

/// @nodoc
class __$$UpdateCopyWithImpl<$Res>
    extends _$ChatBlocEventCopyWithImpl<$Res, _$Update>
    implements _$$UpdateCopyWith<$Res> {
  __$$UpdateCopyWithImpl(_$Update _value, $Res Function(_$Update) _then)
      : super(_value, _then);
}

/// @nodoc

class _$Update with DiagnosticableTreeMixin implements Update {
  const _$Update();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ChatBlocEvent.update()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(DiagnosticsProperty('type', 'ChatBlocEvent.update'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$Update);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String courseName, int chatId) started,
    required TResult Function(Chat message) send,
    required TResult Function() update,
  }) {
    return update();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String courseName, int chatId)? started,
    TResult? Function(Chat message)? send,
    TResult? Function()? update,
  }) {
    return update?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String courseName, int chatId)? started,
    TResult Function(Chat message)? send,
    TResult Function()? update,
    required TResult orElse(),
  }) {
    if (update != null) {
      return update();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(Send value) send,
    required TResult Function(Update value) update,
  }) {
    return update(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(Send value)? send,
    TResult? Function(Update value)? update,
  }) {
    return update?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(Send value)? send,
    TResult Function(Update value)? update,
    required TResult orElse(),
  }) {
    if (update != null) {
      return update(this);
    }
    return orElse();
  }
}

abstract class Update implements ChatBlocEvent {
  const factory Update() = _$Update;
}

/// @nodoc
mixin _$ChatBlocState {
// required List<ChatModel> chats,
  List<Chat> get chats => throw _privateConstructorUsedError;
  bool get isLoading => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<Chat> chats, bool isLoading, bool isError)
        started,
    required TResult Function(List<Chat> chats, bool isLoading, int num) reload,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<Chat> chats, bool isLoading, bool isError)? started,
    TResult? Function(List<Chat> chats, bool isLoading, int num)? reload,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<Chat> chats, bool isLoading, bool isError)? started,
    TResult Function(List<Chat> chats, bool isLoading, int num)? reload,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Started value) started,
    required TResult Function(Reload value) reload,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Started value)? started,
    TResult? Function(Reload value)? reload,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Started value)? started,
    TResult Function(Reload value)? reload,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ChatBlocStateCopyWith<ChatBlocState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ChatBlocStateCopyWith<$Res> {
  factory $ChatBlocStateCopyWith(
          ChatBlocState value, $Res Function(ChatBlocState) then) =
      _$ChatBlocStateCopyWithImpl<$Res, ChatBlocState>;
  @useResult
  $Res call({List<Chat> chats, bool isLoading});
}

/// @nodoc
class _$ChatBlocStateCopyWithImpl<$Res, $Val extends ChatBlocState>
    implements $ChatBlocStateCopyWith<$Res> {
  _$ChatBlocStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? chats = null,
    Object? isLoading = null,
  }) {
    return _then(_value.copyWith(
      chats: null == chats
          ? _value.chats
          : chats // ignore: cast_nullable_to_non_nullable
              as List<Chat>,
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$StartedCopyWith<$Res>
    implements $ChatBlocStateCopyWith<$Res> {
  factory _$$StartedCopyWith(_$Started value, $Res Function(_$Started) then) =
      __$$StartedCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<Chat> chats, bool isLoading, bool isError});
}

/// @nodoc
class __$$StartedCopyWithImpl<$Res>
    extends _$ChatBlocStateCopyWithImpl<$Res, _$Started>
    implements _$$StartedCopyWith<$Res> {
  __$$StartedCopyWithImpl(_$Started _value, $Res Function(_$Started) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? chats = null,
    Object? isLoading = null,
    Object? isError = null,
  }) {
    return _then(_$Started(
      chats: null == chats
          ? _value._chats
          : chats // ignore: cast_nullable_to_non_nullable
              as List<Chat>,
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      isError: null == isError
          ? _value.isError
          : isError // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$Started with DiagnosticableTreeMixin implements Started {
  const _$Started(
      {required final List<Chat> chats,
      required this.isLoading,
      required this.isError})
      : _chats = chats;

// required List<ChatModel> chats,
  final List<Chat> _chats;
// required List<ChatModel> chats,
  @override
  List<Chat> get chats {
    if (_chats is EqualUnmodifiableListView) return _chats;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_chats);
  }

  @override
  final bool isLoading;
  @override
  final bool isError;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ChatBlocState.started(chats: $chats, isLoading: $isLoading, isError: $isError)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'ChatBlocState.started'))
      ..add(DiagnosticsProperty('chats', chats))
      ..add(DiagnosticsProperty('isLoading', isLoading))
      ..add(DiagnosticsProperty('isError', isError));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$Started &&
            const DeepCollectionEquality().equals(other._chats, _chats) &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            (identical(other.isError, isError) || other.isError == isError));
  }

  @override
  int get hashCode => Object.hash(runtimeType,
      const DeepCollectionEquality().hash(_chats), isLoading, isError);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$StartedCopyWith<_$Started> get copyWith =>
      __$$StartedCopyWithImpl<_$Started>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<Chat> chats, bool isLoading, bool isError)
        started,
    required TResult Function(List<Chat> chats, bool isLoading, int num) reload,
  }) {
    return started(chats, isLoading, isError);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<Chat> chats, bool isLoading, bool isError)? started,
    TResult? Function(List<Chat> chats, bool isLoading, int num)? reload,
  }) {
    return started?.call(chats, isLoading, isError);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<Chat> chats, bool isLoading, bool isError)? started,
    TResult Function(List<Chat> chats, bool isLoading, int num)? reload,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started(chats, isLoading, isError);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Started value) started,
    required TResult Function(Reload value) reload,
  }) {
    return started(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Started value)? started,
    TResult? Function(Reload value)? reload,
  }) {
    return started?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Started value)? started,
    TResult Function(Reload value)? reload,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started(this);
    }
    return orElse();
  }
}

abstract class Started implements ChatBlocState {
  const factory Started(
      {required final List<Chat> chats,
      required final bool isLoading,
      required final bool isError}) = _$Started;

  @override // required List<ChatModel> chats,
  List<Chat> get chats;
  @override
  bool get isLoading;
  bool get isError;
  @override
  @JsonKey(ignore: true)
  _$$StartedCopyWith<_$Started> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ReloadCopyWith<$Res> implements $ChatBlocStateCopyWith<$Res> {
  factory _$$ReloadCopyWith(_$Reload value, $Res Function(_$Reload) then) =
      __$$ReloadCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<Chat> chats, bool isLoading, int num});
}

/// @nodoc
class __$$ReloadCopyWithImpl<$Res>
    extends _$ChatBlocStateCopyWithImpl<$Res, _$Reload>
    implements _$$ReloadCopyWith<$Res> {
  __$$ReloadCopyWithImpl(_$Reload _value, $Res Function(_$Reload) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? chats = null,
    Object? isLoading = null,
    Object? num = null,
  }) {
    return _then(_$Reload(
      chats: null == chats
          ? _value._chats
          : chats // ignore: cast_nullable_to_non_nullable
              as List<Chat>,
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      num: null == num
          ? _value.num
          : num // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$Reload with DiagnosticableTreeMixin implements Reload {
  const _$Reload(
      {required final List<Chat> chats,
      required this.isLoading,
      required this.num})
      : _chats = chats;

  final List<Chat> _chats;
  @override
  List<Chat> get chats {
    if (_chats is EqualUnmodifiableListView) return _chats;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_chats);
  }

  @override
  final bool isLoading;
  @override
  final int num;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ChatBlocState.reload(chats: $chats, isLoading: $isLoading, num: $num)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'ChatBlocState.reload'))
      ..add(DiagnosticsProperty('chats', chats))
      ..add(DiagnosticsProperty('isLoading', isLoading))
      ..add(DiagnosticsProperty('num', num));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$Reload &&
            const DeepCollectionEquality().equals(other._chats, _chats) &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            (identical(other.num, num) || other.num == num));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_chats), isLoading, num);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ReloadCopyWith<_$Reload> get copyWith =>
      __$$ReloadCopyWithImpl<_$Reload>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<Chat> chats, bool isLoading, bool isError)
        started,
    required TResult Function(List<Chat> chats, bool isLoading, int num) reload,
  }) {
    return reload(chats, isLoading, num);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<Chat> chats, bool isLoading, bool isError)? started,
    TResult? Function(List<Chat> chats, bool isLoading, int num)? reload,
  }) {
    return reload?.call(chats, isLoading, num);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<Chat> chats, bool isLoading, bool isError)? started,
    TResult Function(List<Chat> chats, bool isLoading, int num)? reload,
    required TResult orElse(),
  }) {
    if (reload != null) {
      return reload(chats, isLoading, num);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Started value) started,
    required TResult Function(Reload value) reload,
  }) {
    return reload(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Started value)? started,
    TResult? Function(Reload value)? reload,
  }) {
    return reload?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Started value)? started,
    TResult Function(Reload value)? reload,
    required TResult orElse(),
  }) {
    if (reload != null) {
      return reload(this);
    }
    return orElse();
  }
}

abstract class Reload implements ChatBlocState {
  const factory Reload(
      {required final List<Chat> chats,
      required final bool isLoading,
      required final int num}) = _$Reload;

  @override
  List<Chat> get chats;
  @override
  bool get isLoading;
  int get num;
  @override
  @JsonKey(ignore: true)
  _$$ReloadCopyWith<_$Reload> get copyWith =>
      throw _privateConstructorUsedError;
}
