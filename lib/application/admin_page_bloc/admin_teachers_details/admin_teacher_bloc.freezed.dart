// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'admin_teacher_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$AdminTeacherEvent {
  UserTeacherModel get teacher => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(UserTeacherModel teacher) started,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(UserTeacherModel teacher)? started,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(UserTeacherModel teacher)? started,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $AdminTeacherEventCopyWith<AdminTeacherEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AdminTeacherEventCopyWith<$Res> {
  factory $AdminTeacherEventCopyWith(
          AdminTeacherEvent value, $Res Function(AdminTeacherEvent) then) =
      _$AdminTeacherEventCopyWithImpl<$Res, AdminTeacherEvent>;
  @useResult
  $Res call({UserTeacherModel teacher});
}

/// @nodoc
class _$AdminTeacherEventCopyWithImpl<$Res, $Val extends AdminTeacherEvent>
    implements $AdminTeacherEventCopyWith<$Res> {
  _$AdminTeacherEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? teacher = null,
  }) {
    return _then(_value.copyWith(
      teacher: null == teacher
          ? _value.teacher
          : teacher // ignore: cast_nullable_to_non_nullable
              as UserTeacherModel,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_StartedCopyWith<$Res>
    implements $AdminTeacherEventCopyWith<$Res> {
  factory _$$_StartedCopyWith(
          _$_Started value, $Res Function(_$_Started) then) =
      __$$_StartedCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({UserTeacherModel teacher});
}

/// @nodoc
class __$$_StartedCopyWithImpl<$Res>
    extends _$AdminTeacherEventCopyWithImpl<$Res, _$_Started>
    implements _$$_StartedCopyWith<$Res> {
  __$$_StartedCopyWithImpl(_$_Started _value, $Res Function(_$_Started) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? teacher = null,
  }) {
    return _then(_$_Started(
      teacher: null == teacher
          ? _value.teacher
          : teacher // ignore: cast_nullable_to_non_nullable
              as UserTeacherModel,
    ));
  }
}

/// @nodoc

class _$_Started implements _Started {
  const _$_Started({required this.teacher});

  @override
  final UserTeacherModel teacher;

  @override
  String toString() {
    return 'AdminTeacherEvent.started(teacher: $teacher)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Started &&
            (identical(other.teacher, teacher) || other.teacher == teacher));
  }

  @override
  int get hashCode => Object.hash(runtimeType, teacher);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_StartedCopyWith<_$_Started> get copyWith =>
      __$$_StartedCopyWithImpl<_$_Started>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(UserTeacherModel teacher) started,
  }) {
    return started(teacher);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(UserTeacherModel teacher)? started,
  }) {
    return started?.call(teacher);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(UserTeacherModel teacher)? started,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started(teacher);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
  }) {
    return started(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
  }) {
    return started?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started(this);
    }
    return orElse();
  }
}

abstract class _Started implements AdminTeacherEvent {
  const factory _Started({required final UserTeacherModel teacher}) =
      _$_Started;

  @override
  UserTeacherModel get teacher;
  @override
  @JsonKey(ignore: true)
  _$$_StartedCopyWith<_$_Started> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$AdminTeacherState {
  UserTeacherModel? get teacher => throw _privateConstructorUsedError;
  List<CourseResponseModel> get course => throw _privateConstructorUsedError;
  bool get isLoading => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(UserTeacherModel? teacher,
            List<CourseResponseModel> course, bool isLoading)
        loaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(UserTeacherModel? teacher,
            List<CourseResponseModel> course, bool isLoading)?
        loaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(UserTeacherModel? teacher,
            List<CourseResponseModel> course, bool isLoading)?
        loaded,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Loaded value) loaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Loaded value)? loaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Loaded value)? loaded,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $AdminTeacherStateCopyWith<AdminTeacherState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AdminTeacherStateCopyWith<$Res> {
  factory $AdminTeacherStateCopyWith(
          AdminTeacherState value, $Res Function(AdminTeacherState) then) =
      _$AdminTeacherStateCopyWithImpl<$Res, AdminTeacherState>;
  @useResult
  $Res call(
      {UserTeacherModel? teacher,
      List<CourseResponseModel> course,
      bool isLoading});
}

/// @nodoc
class _$AdminTeacherStateCopyWithImpl<$Res, $Val extends AdminTeacherState>
    implements $AdminTeacherStateCopyWith<$Res> {
  _$AdminTeacherStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? teacher = freezed,
    Object? course = null,
    Object? isLoading = null,
  }) {
    return _then(_value.copyWith(
      teacher: freezed == teacher
          ? _value.teacher
          : teacher // ignore: cast_nullable_to_non_nullable
              as UserTeacherModel?,
      course: null == course
          ? _value.course
          : course // ignore: cast_nullable_to_non_nullable
              as List<CourseResponseModel>,
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$LoadedCopyWith<$Res>
    implements $AdminTeacherStateCopyWith<$Res> {
  factory _$$LoadedCopyWith(_$Loaded value, $Res Function(_$Loaded) then) =
      __$$LoadedCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {UserTeacherModel? teacher,
      List<CourseResponseModel> course,
      bool isLoading});
}

/// @nodoc
class __$$LoadedCopyWithImpl<$Res>
    extends _$AdminTeacherStateCopyWithImpl<$Res, _$Loaded>
    implements _$$LoadedCopyWith<$Res> {
  __$$LoadedCopyWithImpl(_$Loaded _value, $Res Function(_$Loaded) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? teacher = freezed,
    Object? course = null,
    Object? isLoading = null,
  }) {
    return _then(_$Loaded(
      teacher: freezed == teacher
          ? _value.teacher
          : teacher // ignore: cast_nullable_to_non_nullable
              as UserTeacherModel?,
      course: null == course
          ? _value._course
          : course // ignore: cast_nullable_to_non_nullable
              as List<CourseResponseModel>,
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$Loaded implements Loaded {
  const _$Loaded(
      {required this.teacher,
      required final List<CourseResponseModel> course,
      required this.isLoading})
      : _course = course;

  @override
  final UserTeacherModel? teacher;
  final List<CourseResponseModel> _course;
  @override
  List<CourseResponseModel> get course {
    if (_course is EqualUnmodifiableListView) return _course;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_course);
  }

  @override
  final bool isLoading;

  @override
  String toString() {
    return 'AdminTeacherState.loaded(teacher: $teacher, course: $course, isLoading: $isLoading)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$Loaded &&
            (identical(other.teacher, teacher) || other.teacher == teacher) &&
            const DeepCollectionEquality().equals(other._course, _course) &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading));
  }

  @override
  int get hashCode => Object.hash(runtimeType, teacher,
      const DeepCollectionEquality().hash(_course), isLoading);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$LoadedCopyWith<_$Loaded> get copyWith =>
      __$$LoadedCopyWithImpl<_$Loaded>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(UserTeacherModel? teacher,
            List<CourseResponseModel> course, bool isLoading)
        loaded,
  }) {
    return loaded(teacher, course, isLoading);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(UserTeacherModel? teacher,
            List<CourseResponseModel> course, bool isLoading)?
        loaded,
  }) {
    return loaded?.call(teacher, course, isLoading);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(UserTeacherModel? teacher,
            List<CourseResponseModel> course, bool isLoading)?
        loaded,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(teacher, course, isLoading);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Loaded value) loaded,
  }) {
    return loaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Loaded value)? loaded,
  }) {
    return loaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Loaded value)? loaded,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(this);
    }
    return orElse();
  }
}

abstract class Loaded implements AdminTeacherState {
  const factory Loaded(
      {required final UserTeacherModel? teacher,
      required final List<CourseResponseModel> course,
      required final bool isLoading}) = _$Loaded;

  @override
  UserTeacherModel? get teacher;
  @override
  List<CourseResponseModel> get course;
  @override
  bool get isLoading;
  @override
  @JsonKey(ignore: true)
  _$$LoadedCopyWith<_$Loaded> get copyWith =>
      throw _privateConstructorUsedError;
}
