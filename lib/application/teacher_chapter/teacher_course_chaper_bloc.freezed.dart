// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'teacher_course_chaper_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$TeacherCourseChaperEvent {
  int get courseId => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int courseId) started,
    required TResult Function(int chapterId, int courseId) delete,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int courseId)? started,
    TResult? Function(int chapterId, int courseId)? delete,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int courseId)? started,
    TResult Function(int chapterId, int courseId)? delete,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Started value) started,
    required TResult Function(Delete value) delete,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Started value)? started,
    TResult? Function(Delete value)? delete,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Started value)? started,
    TResult Function(Delete value)? delete,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $TeacherCourseChaperEventCopyWith<TeacherCourseChaperEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TeacherCourseChaperEventCopyWith<$Res> {
  factory $TeacherCourseChaperEventCopyWith(TeacherCourseChaperEvent value,
          $Res Function(TeacherCourseChaperEvent) then) =
      _$TeacherCourseChaperEventCopyWithImpl<$Res, TeacherCourseChaperEvent>;
  @useResult
  $Res call({int courseId});
}

/// @nodoc
class _$TeacherCourseChaperEventCopyWithImpl<$Res,
        $Val extends TeacherCourseChaperEvent>
    implements $TeacherCourseChaperEventCopyWith<$Res> {
  _$TeacherCourseChaperEventCopyWithImpl(this._value, this._then);

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
abstract class _$$StartedCopyWith<$Res>
    implements $TeacherCourseChaperEventCopyWith<$Res> {
  factory _$$StartedCopyWith(_$Started value, $Res Function(_$Started) then) =
      __$$StartedCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int courseId});
}

/// @nodoc
class __$$StartedCopyWithImpl<$Res>
    extends _$TeacherCourseChaperEventCopyWithImpl<$Res, _$Started>
    implements _$$StartedCopyWith<$Res> {
  __$$StartedCopyWithImpl(_$Started _value, $Res Function(_$Started) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? courseId = null,
  }) {
    return _then(_$Started(
      null == courseId
          ? _value.courseId
          : courseId // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$Started implements Started {
  const _$Started(this.courseId);

  @override
  final int courseId;

  @override
  String toString() {
    return 'TeacherCourseChaperEvent.started(courseId: $courseId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$Started &&
            (identical(other.courseId, courseId) ||
                other.courseId == courseId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, courseId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$StartedCopyWith<_$Started> get copyWith =>
      __$$StartedCopyWithImpl<_$Started>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int courseId) started,
    required TResult Function(int chapterId, int courseId) delete,
  }) {
    return started(courseId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int courseId)? started,
    TResult? Function(int chapterId, int courseId)? delete,
  }) {
    return started?.call(courseId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int courseId)? started,
    TResult Function(int chapterId, int courseId)? delete,
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
    required TResult Function(Started value) started,
    required TResult Function(Delete value) delete,
  }) {
    return started(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Started value)? started,
    TResult? Function(Delete value)? delete,
  }) {
    return started?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Started value)? started,
    TResult Function(Delete value)? delete,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started(this);
    }
    return orElse();
  }
}

abstract class Started implements TeacherCourseChaperEvent {
  const factory Started(final int courseId) = _$Started;

  @override
  int get courseId;
  @override
  @JsonKey(ignore: true)
  _$$StartedCopyWith<_$Started> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$DeleteCopyWith<$Res>
    implements $TeacherCourseChaperEventCopyWith<$Res> {
  factory _$$DeleteCopyWith(_$Delete value, $Res Function(_$Delete) then) =
      __$$DeleteCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int chapterId, int courseId});
}

/// @nodoc
class __$$DeleteCopyWithImpl<$Res>
    extends _$TeacherCourseChaperEventCopyWithImpl<$Res, _$Delete>
    implements _$$DeleteCopyWith<$Res> {
  __$$DeleteCopyWithImpl(_$Delete _value, $Res Function(_$Delete) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? chapterId = null,
    Object? courseId = null,
  }) {
    return _then(_$Delete(
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

class _$Delete implements Delete {
  const _$Delete({required this.chapterId, required this.courseId});

  @override
  final int chapterId;
  @override
  final int courseId;

  @override
  String toString() {
    return 'TeacherCourseChaperEvent.delete(chapterId: $chapterId, courseId: $courseId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$Delete &&
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
  _$$DeleteCopyWith<_$Delete> get copyWith =>
      __$$DeleteCopyWithImpl<_$Delete>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int courseId) started,
    required TResult Function(int chapterId, int courseId) delete,
  }) {
    return delete(chapterId, courseId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int courseId)? started,
    TResult? Function(int chapterId, int courseId)? delete,
  }) {
    return delete?.call(chapterId, courseId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int courseId)? started,
    TResult Function(int chapterId, int courseId)? delete,
    required TResult orElse(),
  }) {
    if (delete != null) {
      return delete(chapterId, courseId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Started value) started,
    required TResult Function(Delete value) delete,
  }) {
    return delete(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Started value)? started,
    TResult? Function(Delete value)? delete,
  }) {
    return delete?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Started value)? started,
    TResult Function(Delete value)? delete,
    required TResult orElse(),
  }) {
    if (delete != null) {
      return delete(this);
    }
    return orElse();
  }
}

abstract class Delete implements TeacherCourseChaperEvent {
  const factory Delete(
      {required final int chapterId, required final int courseId}) = _$Delete;

  int get chapterId;
  @override
  int get courseId;
  @override
  @JsonKey(ignore: true)
  _$$DeleteCopyWith<_$Delete> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$TeacherCourseChaperState {
  bool get isLoading => throw _privateConstructorUsedError;
  bool get isLoaded => throw _privateConstructorUsedError;
  List<ChapterResponseModel> get chapters => throw _privateConstructorUsedError;
  bool get isError => throw _privateConstructorUsedError;
  bool get isDeleted => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(bool isLoading, bool isLoaded,
            List<ChapterResponseModel> chapters, bool isError, bool isDeleted)
        loading,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(bool isLoading, bool isLoaded,
            List<ChapterResponseModel> chapters, bool isError, bool isDeleted)?
        loading,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(bool isLoading, bool isLoaded,
            List<ChapterResponseModel> chapters, bool isError, bool isDeleted)?
        loading,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Loading value) loading,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Loading value)? loading,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Loading value)? loading,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $TeacherCourseChaperStateCopyWith<TeacherCourseChaperState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TeacherCourseChaperStateCopyWith<$Res> {
  factory $TeacherCourseChaperStateCopyWith(TeacherCourseChaperState value,
          $Res Function(TeacherCourseChaperState) then) =
      _$TeacherCourseChaperStateCopyWithImpl<$Res, TeacherCourseChaperState>;
  @useResult
  $Res call(
      {bool isLoading,
      bool isLoaded,
      List<ChapterResponseModel> chapters,
      bool isError,
      bool isDeleted});
}

/// @nodoc
class _$TeacherCourseChaperStateCopyWithImpl<$Res,
        $Val extends TeacherCourseChaperState>
    implements $TeacherCourseChaperStateCopyWith<$Res> {
  _$TeacherCourseChaperStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
    Object? isLoaded = null,
    Object? chapters = null,
    Object? isError = null,
    Object? isDeleted = null,
  }) {
    return _then(_value.copyWith(
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      isLoaded: null == isLoaded
          ? _value.isLoaded
          : isLoaded // ignore: cast_nullable_to_non_nullable
              as bool,
      chapters: null == chapters
          ? _value.chapters
          : chapters // ignore: cast_nullable_to_non_nullable
              as List<ChapterResponseModel>,
      isError: null == isError
          ? _value.isError
          : isError // ignore: cast_nullable_to_non_nullable
              as bool,
      isDeleted: null == isDeleted
          ? _value.isDeleted
          : isDeleted // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$LoadingCopyWith<$Res>
    implements $TeacherCourseChaperStateCopyWith<$Res> {
  factory _$$LoadingCopyWith(_$Loading value, $Res Function(_$Loading) then) =
      __$$LoadingCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {bool isLoading,
      bool isLoaded,
      List<ChapterResponseModel> chapters,
      bool isError,
      bool isDeleted});
}

/// @nodoc
class __$$LoadingCopyWithImpl<$Res>
    extends _$TeacherCourseChaperStateCopyWithImpl<$Res, _$Loading>
    implements _$$LoadingCopyWith<$Res> {
  __$$LoadingCopyWithImpl(_$Loading _value, $Res Function(_$Loading) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
    Object? isLoaded = null,
    Object? chapters = null,
    Object? isError = null,
    Object? isDeleted = null,
  }) {
    return _then(_$Loading(
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      isLoaded: null == isLoaded
          ? _value.isLoaded
          : isLoaded // ignore: cast_nullable_to_non_nullable
              as bool,
      chapters: null == chapters
          ? _value._chapters
          : chapters // ignore: cast_nullable_to_non_nullable
              as List<ChapterResponseModel>,
      isError: null == isError
          ? _value.isError
          : isError // ignore: cast_nullable_to_non_nullable
              as bool,
      isDeleted: null == isDeleted
          ? _value.isDeleted
          : isDeleted // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$Loading implements Loading {
  const _$Loading(
      {required this.isLoading,
      required this.isLoaded,
      required final List<ChapterResponseModel> chapters,
      required this.isError,
      required this.isDeleted})
      : _chapters = chapters;

  @override
  final bool isLoading;
  @override
  final bool isLoaded;
  final List<ChapterResponseModel> _chapters;
  @override
  List<ChapterResponseModel> get chapters {
    if (_chapters is EqualUnmodifiableListView) return _chapters;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_chapters);
  }

  @override
  final bool isError;
  @override
  final bool isDeleted;

  @override
  String toString() {
    return 'TeacherCourseChaperState.loading(isLoading: $isLoading, isLoaded: $isLoaded, chapters: $chapters, isError: $isError, isDeleted: $isDeleted)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$Loading &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            (identical(other.isLoaded, isLoaded) ||
                other.isLoaded == isLoaded) &&
            const DeepCollectionEquality().equals(other._chapters, _chapters) &&
            (identical(other.isError, isError) || other.isError == isError) &&
            (identical(other.isDeleted, isDeleted) ||
                other.isDeleted == isDeleted));
  }

  @override
  int get hashCode => Object.hash(runtimeType, isLoading, isLoaded,
      const DeepCollectionEquality().hash(_chapters), isError, isDeleted);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$LoadingCopyWith<_$Loading> get copyWith =>
      __$$LoadingCopyWithImpl<_$Loading>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(bool isLoading, bool isLoaded,
            List<ChapterResponseModel> chapters, bool isError, bool isDeleted)
        loading,
  }) {
    return loading(isLoading, isLoaded, chapters, isError, isDeleted);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(bool isLoading, bool isLoaded,
            List<ChapterResponseModel> chapters, bool isError, bool isDeleted)?
        loading,
  }) {
    return loading?.call(isLoading, isLoaded, chapters, isError, isDeleted);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(bool isLoading, bool isLoaded,
            List<ChapterResponseModel> chapters, bool isError, bool isDeleted)?
        loading,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(isLoading, isLoaded, chapters, isError, isDeleted);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Loading value) loading,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Loading value)? loading,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Loading value)? loading,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class Loading implements TeacherCourseChaperState {
  const factory Loading(
      {required final bool isLoading,
      required final bool isLoaded,
      required final List<ChapterResponseModel> chapters,
      required final bool isError,
      required final bool isDeleted}) = _$Loading;

  @override
  bool get isLoading;
  @override
  bool get isLoaded;
  @override
  List<ChapterResponseModel> get chapters;
  @override
  bool get isError;
  @override
  bool get isDeleted;
  @override
  @JsonKey(ignore: true)
  _$$LoadingCopyWith<_$Loading> get copyWith =>
      throw _privateConstructorUsedError;
}
