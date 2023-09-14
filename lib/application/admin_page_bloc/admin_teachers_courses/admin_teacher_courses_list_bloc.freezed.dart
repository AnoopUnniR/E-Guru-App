// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'admin_teacher_courses_list_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$AdminTeacherCoursesListEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<CourseResponseModel> courses) started,
    required TResult Function(int teacherId) reload,
    required TResult Function(int courseId, int teacherId) delete,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<CourseResponseModel> courses)? started,
    TResult? Function(int teacherId)? reload,
    TResult? Function(int courseId, int teacherId)? delete,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<CourseResponseModel> courses)? started,
    TResult Function(int teacherId)? reload,
    TResult Function(int courseId, int teacherId)? delete,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_Reload value) reload,
    required TResult Function(Delete value) delete,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_Reload value)? reload,
    TResult? Function(Delete value)? delete,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_Reload value)? reload,
    TResult Function(Delete value)? delete,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AdminTeacherCoursesListEventCopyWith<$Res> {
  factory $AdminTeacherCoursesListEventCopyWith(
          AdminTeacherCoursesListEvent value,
          $Res Function(AdminTeacherCoursesListEvent) then) =
      _$AdminTeacherCoursesListEventCopyWithImpl<$Res,
          AdminTeacherCoursesListEvent>;
}

/// @nodoc
class _$AdminTeacherCoursesListEventCopyWithImpl<$Res,
        $Val extends AdminTeacherCoursesListEvent>
    implements $AdminTeacherCoursesListEventCopyWith<$Res> {
  _$AdminTeacherCoursesListEventCopyWithImpl(this._value, this._then);

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
  $Res call({List<CourseResponseModel> courses});
}

/// @nodoc
class __$$_StartedCopyWithImpl<$Res>
    extends _$AdminTeacherCoursesListEventCopyWithImpl<$Res, _$_Started>
    implements _$$_StartedCopyWith<$Res> {
  __$$_StartedCopyWithImpl(_$_Started _value, $Res Function(_$_Started) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? courses = null,
  }) {
    return _then(_$_Started(
      courses: null == courses
          ? _value._courses
          : courses // ignore: cast_nullable_to_non_nullable
              as List<CourseResponseModel>,
    ));
  }
}

/// @nodoc

class _$_Started implements _Started {
  const _$_Started({required final List<CourseResponseModel> courses})
      : _courses = courses;

  final List<CourseResponseModel> _courses;
  @override
  List<CourseResponseModel> get courses {
    if (_courses is EqualUnmodifiableListView) return _courses;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_courses);
  }

  @override
  String toString() {
    return 'AdminTeacherCoursesListEvent.started(courses: $courses)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Started &&
            const DeepCollectionEquality().equals(other._courses, _courses));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_courses));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_StartedCopyWith<_$_Started> get copyWith =>
      __$$_StartedCopyWithImpl<_$_Started>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<CourseResponseModel> courses) started,
    required TResult Function(int teacherId) reload,
    required TResult Function(int courseId, int teacherId) delete,
  }) {
    return started(courses);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<CourseResponseModel> courses)? started,
    TResult? Function(int teacherId)? reload,
    TResult? Function(int courseId, int teacherId)? delete,
  }) {
    return started?.call(courses);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<CourseResponseModel> courses)? started,
    TResult Function(int teacherId)? reload,
    TResult Function(int courseId, int teacherId)? delete,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started(courses);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_Reload value) reload,
    required TResult Function(Delete value) delete,
  }) {
    return started(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_Reload value)? reload,
    TResult? Function(Delete value)? delete,
  }) {
    return started?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_Reload value)? reload,
    TResult Function(Delete value)? delete,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started(this);
    }
    return orElse();
  }
}

abstract class _Started implements AdminTeacherCoursesListEvent {
  const factory _Started({required final List<CourseResponseModel> courses}) =
      _$_Started;

  List<CourseResponseModel> get courses;
  @JsonKey(ignore: true)
  _$$_StartedCopyWith<_$_Started> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_ReloadCopyWith<$Res> {
  factory _$$_ReloadCopyWith(_$_Reload value, $Res Function(_$_Reload) then) =
      __$$_ReloadCopyWithImpl<$Res>;
  @useResult
  $Res call({int teacherId});
}

/// @nodoc
class __$$_ReloadCopyWithImpl<$Res>
    extends _$AdminTeacherCoursesListEventCopyWithImpl<$Res, _$_Reload>
    implements _$$_ReloadCopyWith<$Res> {
  __$$_ReloadCopyWithImpl(_$_Reload _value, $Res Function(_$_Reload) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? teacherId = null,
  }) {
    return _then(_$_Reload(
      teacherId: null == teacherId
          ? _value.teacherId
          : teacherId // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$_Reload implements _Reload {
  const _$_Reload({required this.teacherId});

  @override
  final int teacherId;

  @override
  String toString() {
    return 'AdminTeacherCoursesListEvent.reload(teacherId: $teacherId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Reload &&
            (identical(other.teacherId, teacherId) ||
                other.teacherId == teacherId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, teacherId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ReloadCopyWith<_$_Reload> get copyWith =>
      __$$_ReloadCopyWithImpl<_$_Reload>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<CourseResponseModel> courses) started,
    required TResult Function(int teacherId) reload,
    required TResult Function(int courseId, int teacherId) delete,
  }) {
    return reload(teacherId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<CourseResponseModel> courses)? started,
    TResult? Function(int teacherId)? reload,
    TResult? Function(int courseId, int teacherId)? delete,
  }) {
    return reload?.call(teacherId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<CourseResponseModel> courses)? started,
    TResult Function(int teacherId)? reload,
    TResult Function(int courseId, int teacherId)? delete,
    required TResult orElse(),
  }) {
    if (reload != null) {
      return reload(teacherId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_Reload value) reload,
    required TResult Function(Delete value) delete,
  }) {
    return reload(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_Reload value)? reload,
    TResult? Function(Delete value)? delete,
  }) {
    return reload?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_Reload value)? reload,
    TResult Function(Delete value)? delete,
    required TResult orElse(),
  }) {
    if (reload != null) {
      return reload(this);
    }
    return orElse();
  }
}

abstract class _Reload implements AdminTeacherCoursesListEvent {
  const factory _Reload({required final int teacherId}) = _$_Reload;

  int get teacherId;
  @JsonKey(ignore: true)
  _$$_ReloadCopyWith<_$_Reload> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$DeleteCopyWith<$Res> {
  factory _$$DeleteCopyWith(_$Delete value, $Res Function(_$Delete) then) =
      __$$DeleteCopyWithImpl<$Res>;
  @useResult
  $Res call({int courseId, int teacherId});
}

/// @nodoc
class __$$DeleteCopyWithImpl<$Res>
    extends _$AdminTeacherCoursesListEventCopyWithImpl<$Res, _$Delete>
    implements _$$DeleteCopyWith<$Res> {
  __$$DeleteCopyWithImpl(_$Delete _value, $Res Function(_$Delete) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? courseId = null,
    Object? teacherId = null,
  }) {
    return _then(_$Delete(
      courseId: null == courseId
          ? _value.courseId
          : courseId // ignore: cast_nullable_to_non_nullable
              as int,
      teacherId: null == teacherId
          ? _value.teacherId
          : teacherId // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$Delete implements Delete {
  const _$Delete({required this.courseId, required this.teacherId});

  @override
  final int courseId;
  @override
  final int teacherId;

  @override
  String toString() {
    return 'AdminTeacherCoursesListEvent.delete(courseId: $courseId, teacherId: $teacherId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$Delete &&
            (identical(other.courseId, courseId) ||
                other.courseId == courseId) &&
            (identical(other.teacherId, teacherId) ||
                other.teacherId == teacherId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, courseId, teacherId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DeleteCopyWith<_$Delete> get copyWith =>
      __$$DeleteCopyWithImpl<_$Delete>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<CourseResponseModel> courses) started,
    required TResult Function(int teacherId) reload,
    required TResult Function(int courseId, int teacherId) delete,
  }) {
    return delete(courseId, teacherId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<CourseResponseModel> courses)? started,
    TResult? Function(int teacherId)? reload,
    TResult? Function(int courseId, int teacherId)? delete,
  }) {
    return delete?.call(courseId, teacherId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<CourseResponseModel> courses)? started,
    TResult Function(int teacherId)? reload,
    TResult Function(int courseId, int teacherId)? delete,
    required TResult orElse(),
  }) {
    if (delete != null) {
      return delete(courseId, teacherId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_Reload value) reload,
    required TResult Function(Delete value) delete,
  }) {
    return delete(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_Reload value)? reload,
    TResult? Function(Delete value)? delete,
  }) {
    return delete?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_Reload value)? reload,
    TResult Function(Delete value)? delete,
    required TResult orElse(),
  }) {
    if (delete != null) {
      return delete(this);
    }
    return orElse();
  }
}

abstract class Delete implements AdminTeacherCoursesListEvent {
  const factory Delete(
      {required final int courseId, required final int teacherId}) = _$Delete;

  int get courseId;
  int get teacherId;
  @JsonKey(ignore: true)
  _$$DeleteCopyWith<_$Delete> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$AdminTeacherCoursesListState {
  List<CourseResponseModel> get courses => throw _privateConstructorUsedError;
  bool get isLoading => throw _privateConstructorUsedError;
  bool get isDeleted => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            List<CourseResponseModel> courses, bool isLoading, bool isDeleted)
        started,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            List<CourseResponseModel> courses, bool isLoading, bool isDeleted)?
        started,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            List<CourseResponseModel> courses, bool isLoading, bool isDeleted)?
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
  $AdminTeacherCoursesListStateCopyWith<AdminTeacherCoursesListState>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AdminTeacherCoursesListStateCopyWith<$Res> {
  factory $AdminTeacherCoursesListStateCopyWith(
          AdminTeacherCoursesListState value,
          $Res Function(AdminTeacherCoursesListState) then) =
      _$AdminTeacherCoursesListStateCopyWithImpl<$Res,
          AdminTeacherCoursesListState>;
  @useResult
  $Res call(
      {List<CourseResponseModel> courses, bool isLoading, bool isDeleted});
}

/// @nodoc
class _$AdminTeacherCoursesListStateCopyWithImpl<$Res,
        $Val extends AdminTeacherCoursesListState>
    implements $AdminTeacherCoursesListStateCopyWith<$Res> {
  _$AdminTeacherCoursesListStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? courses = null,
    Object? isLoading = null,
    Object? isDeleted = null,
  }) {
    return _then(_value.copyWith(
      courses: null == courses
          ? _value.courses
          : courses // ignore: cast_nullable_to_non_nullable
              as List<CourseResponseModel>,
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
    implements $AdminTeacherCoursesListStateCopyWith<$Res> {
  factory _$$StartedCopyWith(_$Started value, $Res Function(_$Started) then) =
      __$$StartedCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {List<CourseResponseModel> courses, bool isLoading, bool isDeleted});
}

/// @nodoc
class __$$StartedCopyWithImpl<$Res>
    extends _$AdminTeacherCoursesListStateCopyWithImpl<$Res, _$Started>
    implements _$$StartedCopyWith<$Res> {
  __$$StartedCopyWithImpl(_$Started _value, $Res Function(_$Started) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? courses = null,
    Object? isLoading = null,
    Object? isDeleted = null,
  }) {
    return _then(_$Started(
      courses: null == courses
          ? _value._courses
          : courses // ignore: cast_nullable_to_non_nullable
              as List<CourseResponseModel>,
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
  const _$Started(
      {required final List<CourseResponseModel> courses,
      required this.isLoading,
      required this.isDeleted})
      : _courses = courses;

  final List<CourseResponseModel> _courses;
  @override
  List<CourseResponseModel> get courses {
    if (_courses is EqualUnmodifiableListView) return _courses;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_courses);
  }

  @override
  final bool isLoading;
  @override
  final bool isDeleted;

  @override
  String toString() {
    return 'AdminTeacherCoursesListState.started(courses: $courses, isLoading: $isLoading, isDeleted: $isDeleted)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$Started &&
            const DeepCollectionEquality().equals(other._courses, _courses) &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            (identical(other.isDeleted, isDeleted) ||
                other.isDeleted == isDeleted));
  }

  @override
  int get hashCode => Object.hash(runtimeType,
      const DeepCollectionEquality().hash(_courses), isLoading, isDeleted);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$StartedCopyWith<_$Started> get copyWith =>
      __$$StartedCopyWithImpl<_$Started>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            List<CourseResponseModel> courses, bool isLoading, bool isDeleted)
        started,
  }) {
    return started(courses, isLoading, isDeleted);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            List<CourseResponseModel> courses, bool isLoading, bool isDeleted)?
        started,
  }) {
    return started?.call(courses, isLoading, isDeleted);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            List<CourseResponseModel> courses, bool isLoading, bool isDeleted)?
        started,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started(courses, isLoading, isDeleted);
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

abstract class Started implements AdminTeacherCoursesListState {
  const factory Started(
      {required final List<CourseResponseModel> courses,
      required final bool isLoading,
      required final bool isDeleted}) = _$Started;

  @override
  List<CourseResponseModel> get courses;
  @override
  bool get isLoading;
  @override
  bool get isDeleted;
  @override
  @JsonKey(ignore: true)
  _$$StartedCopyWith<_$Started> get copyWith =>
      throw _privateConstructorUsedError;
}
