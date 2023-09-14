// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'course_page_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$CoursePageEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() courseEventStarted,
    required TResult Function(int userId) courseEventEnrolled,
    required TResult Function(int catagoryId) courseEventcatagory,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? courseEventStarted,
    TResult? Function(int userId)? courseEventEnrolled,
    TResult? Function(int catagoryId)? courseEventcatagory,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? courseEventStarted,
    TResult Function(int userId)? courseEventEnrolled,
    TResult Function(int catagoryId)? courseEventcatagory,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(CourseEventStarted value) courseEventStarted,
    required TResult Function(CourseEventEnrolled value) courseEventEnrolled,
    required TResult Function(CourseEventCatagory value) courseEventcatagory,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(CourseEventStarted value)? courseEventStarted,
    TResult? Function(CourseEventEnrolled value)? courseEventEnrolled,
    TResult? Function(CourseEventCatagory value)? courseEventcatagory,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CourseEventStarted value)? courseEventStarted,
    TResult Function(CourseEventEnrolled value)? courseEventEnrolled,
    TResult Function(CourseEventCatagory value)? courseEventcatagory,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CoursePageEventCopyWith<$Res> {
  factory $CoursePageEventCopyWith(
          CoursePageEvent value, $Res Function(CoursePageEvent) then) =
      _$CoursePageEventCopyWithImpl<$Res, CoursePageEvent>;
}

/// @nodoc
class _$CoursePageEventCopyWithImpl<$Res, $Val extends CoursePageEvent>
    implements $CoursePageEventCopyWith<$Res> {
  _$CoursePageEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$CourseEventStartedCopyWith<$Res> {
  factory _$$CourseEventStartedCopyWith(_$CourseEventStarted value,
          $Res Function(_$CourseEventStarted) then) =
      __$$CourseEventStartedCopyWithImpl<$Res>;
}

/// @nodoc
class __$$CourseEventStartedCopyWithImpl<$Res>
    extends _$CoursePageEventCopyWithImpl<$Res, _$CourseEventStarted>
    implements _$$CourseEventStartedCopyWith<$Res> {
  __$$CourseEventStartedCopyWithImpl(
      _$CourseEventStarted _value, $Res Function(_$CourseEventStarted) _then)
      : super(_value, _then);
}

/// @nodoc

class _$CourseEventStarted implements CourseEventStarted {
  const _$CourseEventStarted();

  @override
  String toString() {
    return 'CoursePageEvent.courseEventStarted()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$CourseEventStarted);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() courseEventStarted,
    required TResult Function(int userId) courseEventEnrolled,
    required TResult Function(int catagoryId) courseEventcatagory,
  }) {
    return courseEventStarted();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? courseEventStarted,
    TResult? Function(int userId)? courseEventEnrolled,
    TResult? Function(int catagoryId)? courseEventcatagory,
  }) {
    return courseEventStarted?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? courseEventStarted,
    TResult Function(int userId)? courseEventEnrolled,
    TResult Function(int catagoryId)? courseEventcatagory,
    required TResult orElse(),
  }) {
    if (courseEventStarted != null) {
      return courseEventStarted();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(CourseEventStarted value) courseEventStarted,
    required TResult Function(CourseEventEnrolled value) courseEventEnrolled,
    required TResult Function(CourseEventCatagory value) courseEventcatagory,
  }) {
    return courseEventStarted(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(CourseEventStarted value)? courseEventStarted,
    TResult? Function(CourseEventEnrolled value)? courseEventEnrolled,
    TResult? Function(CourseEventCatagory value)? courseEventcatagory,
  }) {
    return courseEventStarted?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CourseEventStarted value)? courseEventStarted,
    TResult Function(CourseEventEnrolled value)? courseEventEnrolled,
    TResult Function(CourseEventCatagory value)? courseEventcatagory,
    required TResult orElse(),
  }) {
    if (courseEventStarted != null) {
      return courseEventStarted(this);
    }
    return orElse();
  }
}

abstract class CourseEventStarted implements CoursePageEvent {
  const factory CourseEventStarted() = _$CourseEventStarted;
}

/// @nodoc
abstract class _$$CourseEventEnrolledCopyWith<$Res> {
  factory _$$CourseEventEnrolledCopyWith(_$CourseEventEnrolled value,
          $Res Function(_$CourseEventEnrolled) then) =
      __$$CourseEventEnrolledCopyWithImpl<$Res>;
  @useResult
  $Res call({int userId});
}

/// @nodoc
class __$$CourseEventEnrolledCopyWithImpl<$Res>
    extends _$CoursePageEventCopyWithImpl<$Res, _$CourseEventEnrolled>
    implements _$$CourseEventEnrolledCopyWith<$Res> {
  __$$CourseEventEnrolledCopyWithImpl(
      _$CourseEventEnrolled _value, $Res Function(_$CourseEventEnrolled) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userId = null,
  }) {
    return _then(_$CourseEventEnrolled(
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$CourseEventEnrolled implements CourseEventEnrolled {
  const _$CourseEventEnrolled({required this.userId});

  @override
  final int userId;

  @override
  String toString() {
    return 'CoursePageEvent.courseEventEnrolled(userId: $userId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CourseEventEnrolled &&
            (identical(other.userId, userId) || other.userId == userId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, userId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CourseEventEnrolledCopyWith<_$CourseEventEnrolled> get copyWith =>
      __$$CourseEventEnrolledCopyWithImpl<_$CourseEventEnrolled>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() courseEventStarted,
    required TResult Function(int userId) courseEventEnrolled,
    required TResult Function(int catagoryId) courseEventcatagory,
  }) {
    return courseEventEnrolled(userId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? courseEventStarted,
    TResult? Function(int userId)? courseEventEnrolled,
    TResult? Function(int catagoryId)? courseEventcatagory,
  }) {
    return courseEventEnrolled?.call(userId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? courseEventStarted,
    TResult Function(int userId)? courseEventEnrolled,
    TResult Function(int catagoryId)? courseEventcatagory,
    required TResult orElse(),
  }) {
    if (courseEventEnrolled != null) {
      return courseEventEnrolled(userId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(CourseEventStarted value) courseEventStarted,
    required TResult Function(CourseEventEnrolled value) courseEventEnrolled,
    required TResult Function(CourseEventCatagory value) courseEventcatagory,
  }) {
    return courseEventEnrolled(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(CourseEventStarted value)? courseEventStarted,
    TResult? Function(CourseEventEnrolled value)? courseEventEnrolled,
    TResult? Function(CourseEventCatagory value)? courseEventcatagory,
  }) {
    return courseEventEnrolled?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CourseEventStarted value)? courseEventStarted,
    TResult Function(CourseEventEnrolled value)? courseEventEnrolled,
    TResult Function(CourseEventCatagory value)? courseEventcatagory,
    required TResult orElse(),
  }) {
    if (courseEventEnrolled != null) {
      return courseEventEnrolled(this);
    }
    return orElse();
  }
}

abstract class CourseEventEnrolled implements CoursePageEvent {
  const factory CourseEventEnrolled({required final int userId}) =
      _$CourseEventEnrolled;

  int get userId;
  @JsonKey(ignore: true)
  _$$CourseEventEnrolledCopyWith<_$CourseEventEnrolled> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$CourseEventCatagoryCopyWith<$Res> {
  factory _$$CourseEventCatagoryCopyWith(_$CourseEventCatagory value,
          $Res Function(_$CourseEventCatagory) then) =
      __$$CourseEventCatagoryCopyWithImpl<$Res>;
  @useResult
  $Res call({int catagoryId});
}

/// @nodoc
class __$$CourseEventCatagoryCopyWithImpl<$Res>
    extends _$CoursePageEventCopyWithImpl<$Res, _$CourseEventCatagory>
    implements _$$CourseEventCatagoryCopyWith<$Res> {
  __$$CourseEventCatagoryCopyWithImpl(
      _$CourseEventCatagory _value, $Res Function(_$CourseEventCatagory) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? catagoryId = null,
  }) {
    return _then(_$CourseEventCatagory(
      catagoryId: null == catagoryId
          ? _value.catagoryId
          : catagoryId // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$CourseEventCatagory implements CourseEventCatagory {
  const _$CourseEventCatagory({required this.catagoryId});

  @override
  final int catagoryId;

  @override
  String toString() {
    return 'CoursePageEvent.courseEventcatagory(catagoryId: $catagoryId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CourseEventCatagory &&
            (identical(other.catagoryId, catagoryId) ||
                other.catagoryId == catagoryId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, catagoryId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CourseEventCatagoryCopyWith<_$CourseEventCatagory> get copyWith =>
      __$$CourseEventCatagoryCopyWithImpl<_$CourseEventCatagory>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() courseEventStarted,
    required TResult Function(int userId) courseEventEnrolled,
    required TResult Function(int catagoryId) courseEventcatagory,
  }) {
    return courseEventcatagory(catagoryId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? courseEventStarted,
    TResult? Function(int userId)? courseEventEnrolled,
    TResult? Function(int catagoryId)? courseEventcatagory,
  }) {
    return courseEventcatagory?.call(catagoryId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? courseEventStarted,
    TResult Function(int userId)? courseEventEnrolled,
    TResult Function(int catagoryId)? courseEventcatagory,
    required TResult orElse(),
  }) {
    if (courseEventcatagory != null) {
      return courseEventcatagory(catagoryId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(CourseEventStarted value) courseEventStarted,
    required TResult Function(CourseEventEnrolled value) courseEventEnrolled,
    required TResult Function(CourseEventCatagory value) courseEventcatagory,
  }) {
    return courseEventcatagory(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(CourseEventStarted value)? courseEventStarted,
    TResult? Function(CourseEventEnrolled value)? courseEventEnrolled,
    TResult? Function(CourseEventCatagory value)? courseEventcatagory,
  }) {
    return courseEventcatagory?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CourseEventStarted value)? courseEventStarted,
    TResult Function(CourseEventEnrolled value)? courseEventEnrolled,
    TResult Function(CourseEventCatagory value)? courseEventcatagory,
    required TResult orElse(),
  }) {
    if (courseEventcatagory != null) {
      return courseEventcatagory(this);
    }
    return orElse();
  }
}

abstract class CourseEventCatagory implements CoursePageEvent {
  const factory CourseEventCatagory({required final int catagoryId}) =
      _$CourseEventCatagory;

  int get catagoryId;
  @JsonKey(ignore: true)
  _$$CourseEventCatagoryCopyWith<_$CourseEventCatagory> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$CoursePageState {
  List<CourseModel> get courses => throw _privateConstructorUsedError;
  bool get isLoading => throw _privateConstructorUsedError;
  bool get isError => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            List<CourseModel> courses, bool isLoading, bool isError)
        started,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<CourseModel> courses, bool isLoading, bool isError)?
        started,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<CourseModel> courses, bool isLoading, bool isError)?
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
  $CoursePageStateCopyWith<CoursePageState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CoursePageStateCopyWith<$Res> {
  factory $CoursePageStateCopyWith(
          CoursePageState value, $Res Function(CoursePageState) then) =
      _$CoursePageStateCopyWithImpl<$Res, CoursePageState>;
  @useResult
  $Res call({List<CourseModel> courses, bool isLoading, bool isError});
}

/// @nodoc
class _$CoursePageStateCopyWithImpl<$Res, $Val extends CoursePageState>
    implements $CoursePageStateCopyWith<$Res> {
  _$CoursePageStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? courses = null,
    Object? isLoading = null,
    Object? isError = null,
  }) {
    return _then(_value.copyWith(
      courses: null == courses
          ? _value.courses
          : courses // ignore: cast_nullable_to_non_nullable
              as List<CourseModel>,
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      isError: null == isError
          ? _value.isError
          : isError // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$StartedCopyWith<$Res>
    implements $CoursePageStateCopyWith<$Res> {
  factory _$$StartedCopyWith(_$Started value, $Res Function(_$Started) then) =
      __$$StartedCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<CourseModel> courses, bool isLoading, bool isError});
}

/// @nodoc
class __$$StartedCopyWithImpl<$Res>
    extends _$CoursePageStateCopyWithImpl<$Res, _$Started>
    implements _$$StartedCopyWith<$Res> {
  __$$StartedCopyWithImpl(_$Started _value, $Res Function(_$Started) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? courses = null,
    Object? isLoading = null,
    Object? isError = null,
  }) {
    return _then(_$Started(
      courses: null == courses
          ? _value._courses
          : courses // ignore: cast_nullable_to_non_nullable
              as List<CourseModel>,
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

class _$Started implements Started {
  const _$Started(
      {required final List<CourseModel> courses,
      required this.isLoading,
      required this.isError})
      : _courses = courses;

  final List<CourseModel> _courses;
  @override
  List<CourseModel> get courses {
    if (_courses is EqualUnmodifiableListView) return _courses;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_courses);
  }

  @override
  final bool isLoading;
  @override
  final bool isError;

  @override
  String toString() {
    return 'CoursePageState.started(courses: $courses, isLoading: $isLoading, isError: $isError)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$Started &&
            const DeepCollectionEquality().equals(other._courses, _courses) &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            (identical(other.isError, isError) || other.isError == isError));
  }

  @override
  int get hashCode => Object.hash(runtimeType,
      const DeepCollectionEquality().hash(_courses), isLoading, isError);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$StartedCopyWith<_$Started> get copyWith =>
      __$$StartedCopyWithImpl<_$Started>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            List<CourseModel> courses, bool isLoading, bool isError)
        started,
  }) {
    return started(courses, isLoading, isError);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<CourseModel> courses, bool isLoading, bool isError)?
        started,
  }) {
    return started?.call(courses, isLoading, isError);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<CourseModel> courses, bool isLoading, bool isError)?
        started,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started(courses, isLoading, isError);
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

abstract class Started implements CoursePageState {
  const factory Started(
      {required final List<CourseModel> courses,
      required final bool isLoading,
      required final bool isError}) = _$Started;

  @override
  List<CourseModel> get courses;
  @override
  bool get isLoading;
  @override
  bool get isError;
  @override
  @JsonKey(ignore: true)
  _$$StartedCopyWith<_$Started> get copyWith =>
      throw _privateConstructorUsedError;
}
