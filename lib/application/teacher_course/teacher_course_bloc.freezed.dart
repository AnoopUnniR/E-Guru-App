// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'teacher_course_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$TeacherCourseEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(int id) teacherCoursesLoaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(int id)? teacherCoursesLoaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(int id)? teacherCoursesLoaded,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Loading value) loading,
    required TResult Function(TeacherCoursesLoaded value) teacherCoursesLoaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Loading value)? loading,
    TResult? Function(TeacherCoursesLoaded value)? teacherCoursesLoaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Loading value)? loading,
    TResult Function(TeacherCoursesLoaded value)? teacherCoursesLoaded,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TeacherCourseEventCopyWith<$Res> {
  factory $TeacherCourseEventCopyWith(
          TeacherCourseEvent value, $Res Function(TeacherCourseEvent) then) =
      _$TeacherCourseEventCopyWithImpl<$Res, TeacherCourseEvent>;
}

/// @nodoc
class _$TeacherCourseEventCopyWithImpl<$Res, $Val extends TeacherCourseEvent>
    implements $TeacherCourseEventCopyWith<$Res> {
  _$TeacherCourseEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$LoadingCopyWith<$Res> {
  factory _$$LoadingCopyWith(_$Loading value, $Res Function(_$Loading) then) =
      __$$LoadingCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LoadingCopyWithImpl<$Res>
    extends _$TeacherCourseEventCopyWithImpl<$Res, _$Loading>
    implements _$$LoadingCopyWith<$Res> {
  __$$LoadingCopyWithImpl(_$Loading _value, $Res Function(_$Loading) _then)
      : super(_value, _then);
}

/// @nodoc

class _$Loading implements Loading {
  const _$Loading();

  @override
  String toString() {
    return 'TeacherCourseEvent.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$Loading);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(int id) teacherCoursesLoaded,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(int id)? teacherCoursesLoaded,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(int id)? teacherCoursesLoaded,
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
    required TResult Function(Loading value) loading,
    required TResult Function(TeacherCoursesLoaded value) teacherCoursesLoaded,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Loading value)? loading,
    TResult? Function(TeacherCoursesLoaded value)? teacherCoursesLoaded,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Loading value)? loading,
    TResult Function(TeacherCoursesLoaded value)? teacherCoursesLoaded,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class Loading implements TeacherCourseEvent {
  const factory Loading() = _$Loading;
}

/// @nodoc
abstract class _$$TeacherCoursesLoadedCopyWith<$Res> {
  factory _$$TeacherCoursesLoadedCopyWith(_$TeacherCoursesLoaded value,
          $Res Function(_$TeacherCoursesLoaded) then) =
      __$$TeacherCoursesLoadedCopyWithImpl<$Res>;
  @useResult
  $Res call({int id});
}

/// @nodoc
class __$$TeacherCoursesLoadedCopyWithImpl<$Res>
    extends _$TeacherCourseEventCopyWithImpl<$Res, _$TeacherCoursesLoaded>
    implements _$$TeacherCoursesLoadedCopyWith<$Res> {
  __$$TeacherCoursesLoadedCopyWithImpl(_$TeacherCoursesLoaded _value,
      $Res Function(_$TeacherCoursesLoaded) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
  }) {
    return _then(_$TeacherCoursesLoaded(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$TeacherCoursesLoaded implements TeacherCoursesLoaded {
  const _$TeacherCoursesLoaded({required this.id});

  @override
  final int id;

  @override
  String toString() {
    return 'TeacherCourseEvent.teacherCoursesLoaded(id: $id)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TeacherCoursesLoaded &&
            (identical(other.id, id) || other.id == id));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$TeacherCoursesLoadedCopyWith<_$TeacherCoursesLoaded> get copyWith =>
      __$$TeacherCoursesLoadedCopyWithImpl<_$TeacherCoursesLoaded>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(int id) teacherCoursesLoaded,
  }) {
    return teacherCoursesLoaded(id);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(int id)? teacherCoursesLoaded,
  }) {
    return teacherCoursesLoaded?.call(id);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(int id)? teacherCoursesLoaded,
    required TResult orElse(),
  }) {
    if (teacherCoursesLoaded != null) {
      return teacherCoursesLoaded(id);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Loading value) loading,
    required TResult Function(TeacherCoursesLoaded value) teacherCoursesLoaded,
  }) {
    return teacherCoursesLoaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Loading value)? loading,
    TResult? Function(TeacherCoursesLoaded value)? teacherCoursesLoaded,
  }) {
    return teacherCoursesLoaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Loading value)? loading,
    TResult Function(TeacherCoursesLoaded value)? teacherCoursesLoaded,
    required TResult orElse(),
  }) {
    if (teacherCoursesLoaded != null) {
      return teacherCoursesLoaded(this);
    }
    return orElse();
  }
}

abstract class TeacherCoursesLoaded implements TeacherCourseEvent {
  const factory TeacherCoursesLoaded({required final int id}) =
      _$TeacherCoursesLoaded;

  int get id;
  @JsonKey(ignore: true)
  _$$TeacherCoursesLoadedCopyWith<_$TeacherCoursesLoaded> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$TeacherCourseState {
  bool get isLoading => throw _privateConstructorUsedError;
  List<CourseResponseModel> get course => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $TeacherCourseStateCopyWith<TeacherCourseState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TeacherCourseStateCopyWith<$Res> {
  factory $TeacherCourseStateCopyWith(
          TeacherCourseState value, $Res Function(TeacherCourseState) then) =
      _$TeacherCourseStateCopyWithImpl<$Res, TeacherCourseState>;
  @useResult
  $Res call({bool isLoading, List<CourseResponseModel> course});
}

/// @nodoc
class _$TeacherCourseStateCopyWithImpl<$Res, $Val extends TeacherCourseState>
    implements $TeacherCourseStateCopyWith<$Res> {
  _$TeacherCourseStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
    Object? course = null,
  }) {
    return _then(_value.copyWith(
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      course: null == course
          ? _value.course
          : course // ignore: cast_nullable_to_non_nullable
              as List<CourseResponseModel>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_TeacherCourseStateCopyWith<$Res>
    implements $TeacherCourseStateCopyWith<$Res> {
  factory _$$_TeacherCourseStateCopyWith(_$_TeacherCourseState value,
          $Res Function(_$_TeacherCourseState) then) =
      __$$_TeacherCourseStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({bool isLoading, List<CourseResponseModel> course});
}

/// @nodoc
class __$$_TeacherCourseStateCopyWithImpl<$Res>
    extends _$TeacherCourseStateCopyWithImpl<$Res, _$_TeacherCourseState>
    implements _$$_TeacherCourseStateCopyWith<$Res> {
  __$$_TeacherCourseStateCopyWithImpl(
      _$_TeacherCourseState _value, $Res Function(_$_TeacherCourseState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
    Object? course = null,
  }) {
    return _then(_$_TeacherCourseState(
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      course: null == course
          ? _value._course
          : course // ignore: cast_nullable_to_non_nullable
              as List<CourseResponseModel>,
    ));
  }
}

/// @nodoc

class _$_TeacherCourseState implements _TeacherCourseState {
  const _$_TeacherCourseState(
      {required this.isLoading,
      required final List<CourseResponseModel> course})
      : _course = course;

  @override
  final bool isLoading;
  final List<CourseResponseModel> _course;
  @override
  List<CourseResponseModel> get course {
    if (_course is EqualUnmodifiableListView) return _course;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_course);
  }

  @override
  String toString() {
    return 'TeacherCourseState(isLoading: $isLoading, course: $course)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_TeacherCourseState &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            const DeepCollectionEquality().equals(other._course, _course));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, isLoading, const DeepCollectionEquality().hash(_course));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_TeacherCourseStateCopyWith<_$_TeacherCourseState> get copyWith =>
      __$$_TeacherCourseStateCopyWithImpl<_$_TeacherCourseState>(
          this, _$identity);
}

abstract class _TeacherCourseState implements TeacherCourseState {
  const factory _TeacherCourseState(
      {required final bool isLoading,
      required final List<CourseResponseModel> course}) = _$_TeacherCourseState;

  @override
  bool get isLoading;
  @override
  List<CourseResponseModel> get course;
  @override
  @JsonKey(ignore: true)
  _$$_TeacherCourseStateCopyWith<_$_TeacherCourseState> get copyWith =>
      throw _privateConstructorUsedError;
}
