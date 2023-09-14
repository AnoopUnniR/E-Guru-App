// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'admin_chapters_list_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$AdminChaptersListEvent {
  int get courseId => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int courseId) started,
    required TResult Function(int chapterId, int courseId) deleted,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int courseId)? started,
    TResult? Function(int chapterId, int courseId)? deleted,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int courseId)? started,
    TResult Function(int chapterId, int courseId)? deleted,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(Deleted value) deleted,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(Deleted value)? deleted,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(Deleted value)? deleted,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $AdminChaptersListEventCopyWith<AdminChaptersListEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AdminChaptersListEventCopyWith<$Res> {
  factory $AdminChaptersListEventCopyWith(AdminChaptersListEvent value,
          $Res Function(AdminChaptersListEvent) then) =
      _$AdminChaptersListEventCopyWithImpl<$Res, AdminChaptersListEvent>;
  @useResult
  $Res call({int courseId});
}

/// @nodoc
class _$AdminChaptersListEventCopyWithImpl<$Res,
        $Val extends AdminChaptersListEvent>
    implements $AdminChaptersListEventCopyWith<$Res> {
  _$AdminChaptersListEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? courseId = null,
  }) {
    return _then(_value.copyWith(
      courseId: null == courseId
          ? _value.courseId
          : courseId // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_StartedCopyWith<$Res>
    implements $AdminChaptersListEventCopyWith<$Res> {
  factory _$$_StartedCopyWith(
          _$_Started value, $Res Function(_$_Started) then) =
      __$$_StartedCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int courseId});
}

/// @nodoc
class __$$_StartedCopyWithImpl<$Res>
    extends _$AdminChaptersListEventCopyWithImpl<$Res, _$_Started>
    implements _$$_StartedCopyWith<$Res> {
  __$$_StartedCopyWithImpl(_$_Started _value, $Res Function(_$_Started) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? courseId = null,
  }) {
    return _then(_$_Started(
      courseId: null == courseId
          ? _value.courseId
          : courseId // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$_Started implements _Started {
  const _$_Started({required this.courseId});

  @override
  final int courseId;

  @override
  String toString() {
    return 'AdminChaptersListEvent.started(courseId: $courseId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Started &&
            (identical(other.courseId, courseId) ||
                other.courseId == courseId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, courseId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_StartedCopyWith<_$_Started> get copyWith =>
      __$$_StartedCopyWithImpl<_$_Started>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int courseId) started,
    required TResult Function(int chapterId, int courseId) deleted,
  }) {
    return started(courseId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int courseId)? started,
    TResult? Function(int chapterId, int courseId)? deleted,
  }) {
    return started?.call(courseId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int courseId)? started,
    TResult Function(int chapterId, int courseId)? deleted,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started(courseId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(Deleted value) deleted,
  }) {
    return started(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(Deleted value)? deleted,
  }) {
    return started?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(Deleted value)? deleted,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started(this);
    }
    return orElse();
  }
}

abstract class _Started implements AdminChaptersListEvent {
  const factory _Started({required final int courseId}) = _$_Started;

  @override
  int get courseId;
  @override
  @JsonKey(ignore: true)
  _$$_StartedCopyWith<_$_Started> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$DeletedCopyWith<$Res>
    implements $AdminChaptersListEventCopyWith<$Res> {
  factory _$$DeletedCopyWith(_$Deleted value, $Res Function(_$Deleted) then) =
      __$$DeletedCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int chapterId, int courseId});
}

/// @nodoc
class __$$DeletedCopyWithImpl<$Res>
    extends _$AdminChaptersListEventCopyWithImpl<$Res, _$Deleted>
    implements _$$DeletedCopyWith<$Res> {
  __$$DeletedCopyWithImpl(_$Deleted _value, $Res Function(_$Deleted) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? chapterId = null,
    Object? courseId = null,
  }) {
    return _then(_$Deleted(
      chapterId: null == chapterId
          ? _value.chapterId
          : chapterId // ignore: cast_nullable_to_non_nullable
              as int,
      courseId: null == courseId
          ? _value.courseId
          : courseId // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$Deleted implements Deleted {
  const _$Deleted({required this.chapterId, required this.courseId});

  @override
  final int chapterId;
  @override
  final int courseId;

  @override
  String toString() {
    return 'AdminChaptersListEvent.deleted(chapterId: $chapterId, courseId: $courseId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$Deleted &&
            (identical(other.chapterId, chapterId) ||
                other.chapterId == chapterId) &&
            (identical(other.courseId, courseId) ||
                other.courseId == courseId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, chapterId, courseId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DeletedCopyWith<_$Deleted> get copyWith =>
      __$$DeletedCopyWithImpl<_$Deleted>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int courseId) started,
    required TResult Function(int chapterId, int courseId) deleted,
  }) {
    return deleted(chapterId, courseId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int courseId)? started,
    TResult? Function(int chapterId, int courseId)? deleted,
  }) {
    return deleted?.call(chapterId, courseId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int courseId)? started,
    TResult Function(int chapterId, int courseId)? deleted,
    required TResult orElse(),
  }) {
    if (deleted != null) {
      return deleted(chapterId, courseId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(Deleted value) deleted,
  }) {
    return deleted(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(Deleted value)? deleted,
  }) {
    return deleted?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(Deleted value)? deleted,
    required TResult orElse(),
  }) {
    if (deleted != null) {
      return deleted(this);
    }
    return orElse();
  }
}

abstract class Deleted implements AdminChaptersListEvent {
  const factory Deleted(
      {required final int chapterId, required final int courseId}) = _$Deleted;

  int get chapterId;
  @override
  int get courseId;
  @override
  @JsonKey(ignore: true)
  _$$DeletedCopyWith<_$Deleted> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$AdminChaptersListState {
  List<ChapterResponseModel> get chapters => throw _privateConstructorUsedError;
  bool get isLoading => throw _privateConstructorUsedError;
  bool get isDeleted => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            List<ChapterResponseModel> chapters, bool isLoading, bool isDeleted)
        started,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<ChapterResponseModel> chapters, bool isLoading,
            bool isDeleted)?
        started,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<ChapterResponseModel> chapters, bool isLoading,
            bool isDeleted)?
        started,
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
  $AdminChaptersListStateCopyWith<AdminChaptersListState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AdminChaptersListStateCopyWith<$Res> {
  factory $AdminChaptersListStateCopyWith(AdminChaptersListState value,
          $Res Function(AdminChaptersListState) then) =
      _$AdminChaptersListStateCopyWithImpl<$Res, AdminChaptersListState>;
  @useResult
  $Res call(
      {List<ChapterResponseModel> chapters, bool isLoading, bool isDeleted});
}

/// @nodoc
class _$AdminChaptersListStateCopyWithImpl<$Res,
        $Val extends AdminChaptersListState>
    implements $AdminChaptersListStateCopyWith<$Res> {
  _$AdminChaptersListStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? chapters = null,
    Object? isLoading = null,
    Object? isDeleted = null,
  }) {
    return _then(_value.copyWith(
      chapters: null == chapters
          ? _value.chapters
          : chapters // ignore: cast_nullable_to_non_nullable
              as List<ChapterResponseModel>,
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      isDeleted: null == isDeleted
          ? _value.isDeleted
          : isDeleted // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$StartedCopyWith<$Res>
    implements $AdminChaptersListStateCopyWith<$Res> {
  factory _$$StartedCopyWith(_$Started value, $Res Function(_$Started) then) =
      __$$StartedCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {List<ChapterResponseModel> chapters, bool isLoading, bool isDeleted});
}

/// @nodoc
class __$$StartedCopyWithImpl<$Res>
    extends _$AdminChaptersListStateCopyWithImpl<$Res, _$Started>
    implements _$$StartedCopyWith<$Res> {
  __$$StartedCopyWithImpl(_$Started _value, $Res Function(_$Started) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? chapters = null,
    Object? isLoading = null,
    Object? isDeleted = null,
  }) {
    return _then(_$Started(
      chapters: null == chapters
          ? _value._chapters
          : chapters // ignore: cast_nullable_to_non_nullable
              as List<ChapterResponseModel>,
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      isDeleted: null == isDeleted
          ? _value.isDeleted
          : isDeleted // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$Started implements Started {
  _$Started(
      {required final List<ChapterResponseModel> chapters,
      required this.isLoading,
      required this.isDeleted})
      : _chapters = chapters;

  final List<ChapterResponseModel> _chapters;
  @override
  List<ChapterResponseModel> get chapters {
    if (_chapters is EqualUnmodifiableListView) return _chapters;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_chapters);
  }

  @override
  final bool isLoading;
  @override
  final bool isDeleted;

  @override
  String toString() {
    return 'AdminChaptersListState.started(chapters: $chapters, isLoading: $isLoading, isDeleted: $isDeleted)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$Started &&
            const DeepCollectionEquality().equals(other._chapters, _chapters) &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            (identical(other.isDeleted, isDeleted) ||
                other.isDeleted == isDeleted));
  }

  @override
  int get hashCode => Object.hash(runtimeType,
      const DeepCollectionEquality().hash(_chapters), isLoading, isDeleted);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$StartedCopyWith<_$Started> get copyWith =>
      __$$StartedCopyWithImpl<_$Started>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            List<ChapterResponseModel> chapters, bool isLoading, bool isDeleted)
        started,
  }) {
    return started(chapters, isLoading, isDeleted);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<ChapterResponseModel> chapters, bool isLoading,
            bool isDeleted)?
        started,
  }) {
    return started?.call(chapters, isLoading, isDeleted);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<ChapterResponseModel> chapters, bool isLoading,
            bool isDeleted)?
        started,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started(chapters, isLoading, isDeleted);
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

abstract class Started implements AdminChaptersListState {
  factory Started(
      {required final List<ChapterResponseModel> chapters,
      required final bool isLoading,
      required final bool isDeleted}) = _$Started;

  @override
  List<ChapterResponseModel> get chapters;
  @override
  bool get isLoading;
  @override
  bool get isDeleted;
  @override
  @JsonKey(ignore: true)
  _$$StartedCopyWith<_$Started> get copyWith =>
      throw _privateConstructorUsedError;
}
