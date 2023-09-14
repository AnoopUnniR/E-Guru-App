// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'admin_courses_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$AdminCoursesEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<CourseModel> courses) started,
    required TResult Function(int coursesID) deleted,
    required TResult Function(int coursesID) reload,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<CourseModel> courses)? started,
    TResult? Function(int coursesID)? deleted,
    TResult? Function(int coursesID)? reload,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<CourseModel> courses)? started,
    TResult Function(int coursesID)? deleted,
    TResult Function(int coursesID)? reload,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(Deleted value) deleted,
    required TResult Function(Reload value) reload,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(Deleted value)? deleted,
    TResult? Function(Reload value)? reload,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(Deleted value)? deleted,
    TResult Function(Reload value)? reload,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AdminCoursesEventCopyWith<$Res> {
  factory $AdminCoursesEventCopyWith(
          AdminCoursesEvent value, $Res Function(AdminCoursesEvent) then) =
      _$AdminCoursesEventCopyWithImpl<$Res, AdminCoursesEvent>;
}

/// @nodoc
class _$AdminCoursesEventCopyWithImpl<$Res, $Val extends AdminCoursesEvent>
    implements $AdminCoursesEventCopyWith<$Res> {
  _$AdminCoursesEventCopyWithImpl(this._value, this._then);

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
  $Res call({List<CourseModel> courses});
}

/// @nodoc
class __$$_StartedCopyWithImpl<$Res>
    extends _$AdminCoursesEventCopyWithImpl<$Res, _$_Started>
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
              as List<CourseModel>,
    ));
  }
}

/// @nodoc

class _$_Started implements _Started {
  const _$_Started({required final List<CourseModel> courses})
      : _courses = courses;

  final List<CourseModel> _courses;
  @override
  List<CourseModel> get courses {
    if (_courses is EqualUnmodifiableListView) return _courses;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_courses);
  }

  @override
  String toString() {
    return 'AdminCoursesEvent.started(courses: $courses)';
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
    required TResult Function(List<CourseModel> courses) started,
    required TResult Function(int coursesID) deleted,
    required TResult Function(int coursesID) reload,
  }) {
    return started(courses);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<CourseModel> courses)? started,
    TResult? Function(int coursesID)? deleted,
    TResult? Function(int coursesID)? reload,
  }) {
    return started?.call(courses);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<CourseModel> courses)? started,
    TResult Function(int coursesID)? deleted,
    TResult Function(int coursesID)? reload,
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
    required TResult Function(Deleted value) deleted,
    required TResult Function(Reload value) reload,
  }) {
    return started(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(Deleted value)? deleted,
    TResult? Function(Reload value)? reload,
  }) {
    return started?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(Deleted value)? deleted,
    TResult Function(Reload value)? reload,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started(this);
    }
    return orElse();
  }
}

abstract class _Started implements AdminCoursesEvent {
  const factory _Started({required final List<CourseModel> courses}) =
      _$_Started;

  List<CourseModel> get courses;
  @JsonKey(ignore: true)
  _$$_StartedCopyWith<_$_Started> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$DeletedCopyWith<$Res> {
  factory _$$DeletedCopyWith(_$Deleted value, $Res Function(_$Deleted) then) =
      __$$DeletedCopyWithImpl<$Res>;
  @useResult
  $Res call({int coursesID});
}

/// @nodoc
class __$$DeletedCopyWithImpl<$Res>
    extends _$AdminCoursesEventCopyWithImpl<$Res, _$Deleted>
    implements _$$DeletedCopyWith<$Res> {
  __$$DeletedCopyWithImpl(_$Deleted _value, $Res Function(_$Deleted) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? coursesID = null,
  }) {
    return _then(_$Deleted(
      coursesID: null == coursesID
          ? _value.coursesID
          : coursesID // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$Deleted implements Deleted {
  const _$Deleted({required this.coursesID});

  @override
  final int coursesID;

  @override
  String toString() {
    return 'AdminCoursesEvent.deleted(coursesID: $coursesID)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$Deleted &&
            (identical(other.coursesID, coursesID) ||
                other.coursesID == coursesID));
  }

  @override
  int get hashCode => Object.hash(runtimeType, coursesID);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DeletedCopyWith<_$Deleted> get copyWith =>
      __$$DeletedCopyWithImpl<_$Deleted>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<CourseModel> courses) started,
    required TResult Function(int coursesID) deleted,
    required TResult Function(int coursesID) reload,
  }) {
    return deleted(coursesID);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<CourseModel> courses)? started,
    TResult? Function(int coursesID)? deleted,
    TResult? Function(int coursesID)? reload,
  }) {
    return deleted?.call(coursesID);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<CourseModel> courses)? started,
    TResult Function(int coursesID)? deleted,
    TResult Function(int coursesID)? reload,
    required TResult orElse(),
  }) {
    if (deleted != null) {
      return deleted(coursesID);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(Deleted value) deleted,
    required TResult Function(Reload value) reload,
  }) {
    return deleted(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(Deleted value)? deleted,
    TResult? Function(Reload value)? reload,
  }) {
    return deleted?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(Deleted value)? deleted,
    TResult Function(Reload value)? reload,
    required TResult orElse(),
  }) {
    if (deleted != null) {
      return deleted(this);
    }
    return orElse();
  }
}

abstract class Deleted implements AdminCoursesEvent {
  const factory Deleted({required final int coursesID}) = _$Deleted;

  int get coursesID;
  @JsonKey(ignore: true)
  _$$DeletedCopyWith<_$Deleted> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ReloadCopyWith<$Res> {
  factory _$$ReloadCopyWith(_$Reload value, $Res Function(_$Reload) then) =
      __$$ReloadCopyWithImpl<$Res>;
  @useResult
  $Res call({int coursesID});
}

/// @nodoc
class __$$ReloadCopyWithImpl<$Res>
    extends _$AdminCoursesEventCopyWithImpl<$Res, _$Reload>
    implements _$$ReloadCopyWith<$Res> {
  __$$ReloadCopyWithImpl(_$Reload _value, $Res Function(_$Reload) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? coursesID = null,
  }) {
    return _then(_$Reload(
      coursesID: null == coursesID
          ? _value.coursesID
          : coursesID // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$Reload implements Reload {
  const _$Reload({required this.coursesID});

  @override
  final int coursesID;

  @override
  String toString() {
    return 'AdminCoursesEvent.reload(coursesID: $coursesID)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$Reload &&
            (identical(other.coursesID, coursesID) ||
                other.coursesID == coursesID));
  }

  @override
  int get hashCode => Object.hash(runtimeType, coursesID);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ReloadCopyWith<_$Reload> get copyWith =>
      __$$ReloadCopyWithImpl<_$Reload>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<CourseModel> courses) started,
    required TResult Function(int coursesID) deleted,
    required TResult Function(int coursesID) reload,
  }) {
    return reload(coursesID);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<CourseModel> courses)? started,
    TResult? Function(int coursesID)? deleted,
    TResult? Function(int coursesID)? reload,
  }) {
    return reload?.call(coursesID);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<CourseModel> courses)? started,
    TResult Function(int coursesID)? deleted,
    TResult Function(int coursesID)? reload,
    required TResult orElse(),
  }) {
    if (reload != null) {
      return reload(coursesID);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(Deleted value) deleted,
    required TResult Function(Reload value) reload,
  }) {
    return reload(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(Deleted value)? deleted,
    TResult? Function(Reload value)? reload,
  }) {
    return reload?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(Deleted value)? deleted,
    TResult Function(Reload value)? reload,
    required TResult orElse(),
  }) {
    if (reload != null) {
      return reload(this);
    }
    return orElse();
  }
}

abstract class Reload implements AdminCoursesEvent {
  const factory Reload({required final int coursesID}) = _$Reload;

  int get coursesID;
  @JsonKey(ignore: true)
  _$$ReloadCopyWith<_$Reload> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$AdminCoursesState {
  bool get isLoading => throw _privateConstructorUsedError;
  bool get isError => throw _privateConstructorUsedError;
  List<CourseModel> get courses => throw _privateConstructorUsedError;
  bool get isDeleted => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(bool isLoading, bool isError,
            List<CourseModel> courses, bool isDeleted)
        started,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(bool isLoading, bool isError, List<CourseModel> courses,
            bool isDeleted)?
        started,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(bool isLoading, bool isError, List<CourseModel> courses,
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
  $AdminCoursesStateCopyWith<AdminCoursesState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AdminCoursesStateCopyWith<$Res> {
  factory $AdminCoursesStateCopyWith(
          AdminCoursesState value, $Res Function(AdminCoursesState) then) =
      _$AdminCoursesStateCopyWithImpl<$Res, AdminCoursesState>;
  @useResult
  $Res call(
      {bool isLoading,
      bool isError,
      List<CourseModel> courses,
      bool isDeleted});
}

/// @nodoc
class _$AdminCoursesStateCopyWithImpl<$Res, $Val extends AdminCoursesState>
    implements $AdminCoursesStateCopyWith<$Res> {
  _$AdminCoursesStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
    Object? isError = null,
    Object? courses = null,
    Object? isDeleted = null,
  }) {
    return _then(_value.copyWith(
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      isError: null == isError
          ? _value.isError
          : isError // ignore: cast_nullable_to_non_nullable
              as bool,
      courses: null == courses
          ? _value.courses
          : courses // ignore: cast_nullable_to_non_nullable
              as List<CourseModel>,
      isDeleted: null == isDeleted
          ? _value.isDeleted
          : isDeleted // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$StartedCopyWith<$Res>
    implements $AdminCoursesStateCopyWith<$Res> {
  factory _$$StartedCopyWith(_$Started value, $Res Function(_$Started) then) =
      __$$StartedCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {bool isLoading,
      bool isError,
      List<CourseModel> courses,
      bool isDeleted});
}

/// @nodoc
class __$$StartedCopyWithImpl<$Res>
    extends _$AdminCoursesStateCopyWithImpl<$Res, _$Started>
    implements _$$StartedCopyWith<$Res> {
  __$$StartedCopyWithImpl(_$Started _value, $Res Function(_$Started) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
    Object? isError = null,
    Object? courses = null,
    Object? isDeleted = null,
  }) {
    return _then(_$Started(
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      isError: null == isError
          ? _value.isError
          : isError // ignore: cast_nullable_to_non_nullable
              as bool,
      courses: null == courses
          ? _value._courses
          : courses // ignore: cast_nullable_to_non_nullable
              as List<CourseModel>,
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
      {required this.isLoading,
      required this.isError,
      required final List<CourseModel> courses,
      required this.isDeleted})
      : _courses = courses;

  @override
  final bool isLoading;
  @override
  final bool isError;
  final List<CourseModel> _courses;
  @override
  List<CourseModel> get courses {
    if (_courses is EqualUnmodifiableListView) return _courses;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_courses);
  }

  @override
  final bool isDeleted;

  @override
  String toString() {
    return 'AdminCoursesState.started(isLoading: $isLoading, isError: $isError, courses: $courses, isDeleted: $isDeleted)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$Started &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            (identical(other.isError, isError) || other.isError == isError) &&
            const DeepCollectionEquality().equals(other._courses, _courses) &&
            (identical(other.isDeleted, isDeleted) ||
                other.isDeleted == isDeleted));
  }

  @override
  int get hashCode => Object.hash(runtimeType, isLoading, isError,
      const DeepCollectionEquality().hash(_courses), isDeleted);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$StartedCopyWith<_$Started> get copyWith =>
      __$$StartedCopyWithImpl<_$Started>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(bool isLoading, bool isError,
            List<CourseModel> courses, bool isDeleted)
        started,
  }) {
    return started(isLoading, isError, courses, isDeleted);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(bool isLoading, bool isError, List<CourseModel> courses,
            bool isDeleted)?
        started,
  }) {
    return started?.call(isLoading, isError, courses, isDeleted);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(bool isLoading, bool isError, List<CourseModel> courses,
            bool isDeleted)?
        started,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started(isLoading, isError, courses, isDeleted);
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

abstract class Started implements AdminCoursesState {
  const factory Started(
      {required final bool isLoading,
      required final bool isError,
      required final List<CourseModel> courses,
      required final bool isDeleted}) = _$Started;

  @override
  bool get isLoading;
  @override
  bool get isError;
  @override
  List<CourseModel> get courses;
  @override
  bool get isDeleted;
  @override
  @JsonKey(ignore: true)
  _$$StartedCopyWith<_$Started> get copyWith =>
      throw _privateConstructorUsedError;
}
