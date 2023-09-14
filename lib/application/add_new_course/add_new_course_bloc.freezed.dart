// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'add_new_course_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$AddNewCourseEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(NewCourseModel? newCourseModel) courseAdded,
    required TResult Function(NewCourseModel? newCourseModel, int courseId)
        courseEdited,
    required TResult Function(int courseId) courseDeleted,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(NewCourseModel? newCourseModel)? courseAdded,
    TResult? Function(NewCourseModel? newCourseModel, int courseId)?
        courseEdited,
    TResult? Function(int courseId)? courseDeleted,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(NewCourseModel? newCourseModel)? courseAdded,
    TResult Function(NewCourseModel? newCourseModel, int courseId)?
        courseEdited,
    TResult Function(int courseId)? courseDeleted,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(CourseAdded value) courseAdded,
    required TResult Function(CourseEdited value) courseEdited,
    required TResult Function(CourseDeleted value) courseDeleted,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(CourseAdded value)? courseAdded,
    TResult? Function(CourseEdited value)? courseEdited,
    TResult? Function(CourseDeleted value)? courseDeleted,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CourseAdded value)? courseAdded,
    TResult Function(CourseEdited value)? courseEdited,
    TResult Function(CourseDeleted value)? courseDeleted,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AddNewCourseEventCopyWith<$Res> {
  factory $AddNewCourseEventCopyWith(
          AddNewCourseEvent value, $Res Function(AddNewCourseEvent) then) =
      _$AddNewCourseEventCopyWithImpl<$Res, AddNewCourseEvent>;
}

/// @nodoc
class _$AddNewCourseEventCopyWithImpl<$Res, $Val extends AddNewCourseEvent>
    implements $AddNewCourseEventCopyWith<$Res> {
  _$AddNewCourseEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$CourseAddedCopyWith<$Res> {
  factory _$$CourseAddedCopyWith(
          _$CourseAdded value, $Res Function(_$CourseAdded) then) =
      __$$CourseAddedCopyWithImpl<$Res>;
  @useResult
  $Res call({NewCourseModel? newCourseModel});
}

/// @nodoc
class __$$CourseAddedCopyWithImpl<$Res>
    extends _$AddNewCourseEventCopyWithImpl<$Res, _$CourseAdded>
    implements _$$CourseAddedCopyWith<$Res> {
  __$$CourseAddedCopyWithImpl(
      _$CourseAdded _value, $Res Function(_$CourseAdded) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? newCourseModel = freezed,
  }) {
    return _then(_$CourseAdded(
      freezed == newCourseModel
          ? _value.newCourseModel
          : newCourseModel // ignore: cast_nullable_to_non_nullable
              as NewCourseModel?,
    ));
  }
}

/// @nodoc

class _$CourseAdded with DiagnosticableTreeMixin implements CourseAdded {
  const _$CourseAdded(this.newCourseModel);

  @override
  final NewCourseModel? newCourseModel;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'AddNewCourseEvent.courseAdded(newCourseModel: $newCourseModel)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'AddNewCourseEvent.courseAdded'))
      ..add(DiagnosticsProperty('newCourseModel', newCourseModel));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CourseAdded &&
            (identical(other.newCourseModel, newCourseModel) ||
                other.newCourseModel == newCourseModel));
  }

  @override
  int get hashCode => Object.hash(runtimeType, newCourseModel);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CourseAddedCopyWith<_$CourseAdded> get copyWith =>
      __$$CourseAddedCopyWithImpl<_$CourseAdded>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(NewCourseModel? newCourseModel) courseAdded,
    required TResult Function(NewCourseModel? newCourseModel, int courseId)
        courseEdited,
    required TResult Function(int courseId) courseDeleted,
  }) {
    return courseAdded(newCourseModel);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(NewCourseModel? newCourseModel)? courseAdded,
    TResult? Function(NewCourseModel? newCourseModel, int courseId)?
        courseEdited,
    TResult? Function(int courseId)? courseDeleted,
  }) {
    return courseAdded?.call(newCourseModel);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(NewCourseModel? newCourseModel)? courseAdded,
    TResult Function(NewCourseModel? newCourseModel, int courseId)?
        courseEdited,
    TResult Function(int courseId)? courseDeleted,
    required TResult orElse(),
  }) {
    if (courseAdded != null) {
      return courseAdded(newCourseModel);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(CourseAdded value) courseAdded,
    required TResult Function(CourseEdited value) courseEdited,
    required TResult Function(CourseDeleted value) courseDeleted,
  }) {
    return courseAdded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(CourseAdded value)? courseAdded,
    TResult? Function(CourseEdited value)? courseEdited,
    TResult? Function(CourseDeleted value)? courseDeleted,
  }) {
    return courseAdded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CourseAdded value)? courseAdded,
    TResult Function(CourseEdited value)? courseEdited,
    TResult Function(CourseDeleted value)? courseDeleted,
    required TResult orElse(),
  }) {
    if (courseAdded != null) {
      return courseAdded(this);
    }
    return orElse();
  }
}

abstract class CourseAdded implements AddNewCourseEvent {
  const factory CourseAdded(final NewCourseModel? newCourseModel) =
      _$CourseAdded;

  NewCourseModel? get newCourseModel;
  @JsonKey(ignore: true)
  _$$CourseAddedCopyWith<_$CourseAdded> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$CourseEditedCopyWith<$Res> {
  factory _$$CourseEditedCopyWith(
          _$CourseEdited value, $Res Function(_$CourseEdited) then) =
      __$$CourseEditedCopyWithImpl<$Res>;
  @useResult
  $Res call({NewCourseModel? newCourseModel, int courseId});
}

/// @nodoc
class __$$CourseEditedCopyWithImpl<$Res>
    extends _$AddNewCourseEventCopyWithImpl<$Res, _$CourseEdited>
    implements _$$CourseEditedCopyWith<$Res> {
  __$$CourseEditedCopyWithImpl(
      _$CourseEdited _value, $Res Function(_$CourseEdited) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? newCourseModel = freezed,
    Object? courseId = null,
  }) {
    return _then(_$CourseEdited(
      freezed == newCourseModel
          ? _value.newCourseModel
          : newCourseModel // ignore: cast_nullable_to_non_nullable
              as NewCourseModel?,
      null == courseId
          ? _value.courseId
          : courseId // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$CourseEdited with DiagnosticableTreeMixin implements CourseEdited {
  const _$CourseEdited(this.newCourseModel, this.courseId);

  @override
  final NewCourseModel? newCourseModel;
  @override
  final int courseId;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'AddNewCourseEvent.courseEdited(newCourseModel: $newCourseModel, courseId: $courseId)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'AddNewCourseEvent.courseEdited'))
      ..add(DiagnosticsProperty('newCourseModel', newCourseModel))
      ..add(DiagnosticsProperty('courseId', courseId));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CourseEdited &&
            (identical(other.newCourseModel, newCourseModel) ||
                other.newCourseModel == newCourseModel) &&
            (identical(other.courseId, courseId) ||
                other.courseId == courseId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, newCourseModel, courseId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CourseEditedCopyWith<_$CourseEdited> get copyWith =>
      __$$CourseEditedCopyWithImpl<_$CourseEdited>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(NewCourseModel? newCourseModel) courseAdded,
    required TResult Function(NewCourseModel? newCourseModel, int courseId)
        courseEdited,
    required TResult Function(int courseId) courseDeleted,
  }) {
    return courseEdited(newCourseModel, courseId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(NewCourseModel? newCourseModel)? courseAdded,
    TResult? Function(NewCourseModel? newCourseModel, int courseId)?
        courseEdited,
    TResult? Function(int courseId)? courseDeleted,
  }) {
    return courseEdited?.call(newCourseModel, courseId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(NewCourseModel? newCourseModel)? courseAdded,
    TResult Function(NewCourseModel? newCourseModel, int courseId)?
        courseEdited,
    TResult Function(int courseId)? courseDeleted,
    required TResult orElse(),
  }) {
    if (courseEdited != null) {
      return courseEdited(newCourseModel, courseId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(CourseAdded value) courseAdded,
    required TResult Function(CourseEdited value) courseEdited,
    required TResult Function(CourseDeleted value) courseDeleted,
  }) {
    return courseEdited(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(CourseAdded value)? courseAdded,
    TResult? Function(CourseEdited value)? courseEdited,
    TResult? Function(CourseDeleted value)? courseDeleted,
  }) {
    return courseEdited?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CourseAdded value)? courseAdded,
    TResult Function(CourseEdited value)? courseEdited,
    TResult Function(CourseDeleted value)? courseDeleted,
    required TResult orElse(),
  }) {
    if (courseEdited != null) {
      return courseEdited(this);
    }
    return orElse();
  }
}

abstract class CourseEdited implements AddNewCourseEvent {
  const factory CourseEdited(
          final NewCourseModel? newCourseModel, final int courseId) =
      _$CourseEdited;

  NewCourseModel? get newCourseModel;
  int get courseId;
  @JsonKey(ignore: true)
  _$$CourseEditedCopyWith<_$CourseEdited> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$CourseDeletedCopyWith<$Res> {
  factory _$$CourseDeletedCopyWith(
          _$CourseDeleted value, $Res Function(_$CourseDeleted) then) =
      __$$CourseDeletedCopyWithImpl<$Res>;
  @useResult
  $Res call({int courseId});
}

/// @nodoc
class __$$CourseDeletedCopyWithImpl<$Res>
    extends _$AddNewCourseEventCopyWithImpl<$Res, _$CourseDeleted>
    implements _$$CourseDeletedCopyWith<$Res> {
  __$$CourseDeletedCopyWithImpl(
      _$CourseDeleted _value, $Res Function(_$CourseDeleted) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? courseId = null,
  }) {
    return _then(_$CourseDeleted(
      null == courseId
          ? _value.courseId
          : courseId // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$CourseDeleted with DiagnosticableTreeMixin implements CourseDeleted {
  const _$CourseDeleted(this.courseId);

  @override
  final int courseId;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'AddNewCourseEvent.courseDeleted(courseId: $courseId)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'AddNewCourseEvent.courseDeleted'))
      ..add(DiagnosticsProperty('courseId', courseId));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CourseDeleted &&
            (identical(other.courseId, courseId) ||
                other.courseId == courseId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, courseId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CourseDeletedCopyWith<_$CourseDeleted> get copyWith =>
      __$$CourseDeletedCopyWithImpl<_$CourseDeleted>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(NewCourseModel? newCourseModel) courseAdded,
    required TResult Function(NewCourseModel? newCourseModel, int courseId)
        courseEdited,
    required TResult Function(int courseId) courseDeleted,
  }) {
    return courseDeleted(courseId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(NewCourseModel? newCourseModel)? courseAdded,
    TResult? Function(NewCourseModel? newCourseModel, int courseId)?
        courseEdited,
    TResult? Function(int courseId)? courseDeleted,
  }) {
    return courseDeleted?.call(courseId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(NewCourseModel? newCourseModel)? courseAdded,
    TResult Function(NewCourseModel? newCourseModel, int courseId)?
        courseEdited,
    TResult Function(int courseId)? courseDeleted,
    required TResult orElse(),
  }) {
    if (courseDeleted != null) {
      return courseDeleted(courseId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(CourseAdded value) courseAdded,
    required TResult Function(CourseEdited value) courseEdited,
    required TResult Function(CourseDeleted value) courseDeleted,
  }) {
    return courseDeleted(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(CourseAdded value)? courseAdded,
    TResult? Function(CourseEdited value)? courseEdited,
    TResult? Function(CourseDeleted value)? courseDeleted,
  }) {
    return courseDeleted?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CourseAdded value)? courseAdded,
    TResult Function(CourseEdited value)? courseEdited,
    TResult Function(CourseDeleted value)? courseDeleted,
    required TResult orElse(),
  }) {
    if (courseDeleted != null) {
      return courseDeleted(this);
    }
    return orElse();
  }
}

abstract class CourseDeleted implements AddNewCourseEvent {
  const factory CourseDeleted(final int courseId) = _$CourseDeleted;

  int get courseId;
  @JsonKey(ignore: true)
  _$$CourseDeletedCopyWith<_$CourseDeleted> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$AddNewCourseState {
  CourseResponse? get courseResponse => throw _privateConstructorUsedError;
  bool get isLoaded => throw _privateConstructorUsedError;
  bool get isLoading => throw _privateConstructorUsedError;
  bool get isError => throw _privateConstructorUsedError;
  bool get isEdited => throw _privateConstructorUsedError;
  bool get isDeleted => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(CourseResponse? courseResponse, bool isLoaded,
            bool isLoading, bool isError, bool isEdited, bool isDeleted)
        loaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(CourseResponse? courseResponse, bool isLoaded,
            bool isLoading, bool isError, bool isEdited, bool isDeleted)?
        loaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(CourseResponse? courseResponse, bool isLoaded,
            bool isLoading, bool isError, bool isEdited, bool isDeleted)?
        loaded,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Loaded value) loaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Loaded value)? loaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Loaded value)? loaded,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $AddNewCourseStateCopyWith<AddNewCourseState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AddNewCourseStateCopyWith<$Res> {
  factory $AddNewCourseStateCopyWith(
          AddNewCourseState value, $Res Function(AddNewCourseState) then) =
      _$AddNewCourseStateCopyWithImpl<$Res, AddNewCourseState>;
  @useResult
  $Res call(
      {CourseResponse? courseResponse,
      bool isLoaded,
      bool isLoading,
      bool isError,
      bool isEdited,
      bool isDeleted});
}

/// @nodoc
class _$AddNewCourseStateCopyWithImpl<$Res, $Val extends AddNewCourseState>
    implements $AddNewCourseStateCopyWith<$Res> {
  _$AddNewCourseStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? courseResponse = freezed,
    Object? isLoaded = null,
    Object? isLoading = null,
    Object? isError = null,
    Object? isEdited = null,
    Object? isDeleted = null,
  }) {
    return _then(_value.copyWith(
      courseResponse: freezed == courseResponse
          ? _value.courseResponse
          : courseResponse // ignore: cast_nullable_to_non_nullable
              as CourseResponse?,
      isLoaded: null == isLoaded
          ? _value.isLoaded
          : isLoaded // ignore: cast_nullable_to_non_nullable
              as bool,
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      isError: null == isError
          ? _value.isError
          : isError // ignore: cast_nullable_to_non_nullable
              as bool,
      isEdited: null == isEdited
          ? _value.isEdited
          : isEdited // ignore: cast_nullable_to_non_nullable
              as bool,
      isDeleted: null == isDeleted
          ? _value.isDeleted
          : isDeleted // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_LoadedCopyWith<$Res>
    implements $AddNewCourseStateCopyWith<$Res> {
  factory _$$_LoadedCopyWith(_$_Loaded value, $Res Function(_$_Loaded) then) =
      __$$_LoadedCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {CourseResponse? courseResponse,
      bool isLoaded,
      bool isLoading,
      bool isError,
      bool isEdited,
      bool isDeleted});
}

/// @nodoc
class __$$_LoadedCopyWithImpl<$Res>
    extends _$AddNewCourseStateCopyWithImpl<$Res, _$_Loaded>
    implements _$$_LoadedCopyWith<$Res> {
  __$$_LoadedCopyWithImpl(_$_Loaded _value, $Res Function(_$_Loaded) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? courseResponse = freezed,
    Object? isLoaded = null,
    Object? isLoading = null,
    Object? isError = null,
    Object? isEdited = null,
    Object? isDeleted = null,
  }) {
    return _then(_$_Loaded(
      courseResponse: freezed == courseResponse
          ? _value.courseResponse
          : courseResponse // ignore: cast_nullable_to_non_nullable
              as CourseResponse?,
      isLoaded: null == isLoaded
          ? _value.isLoaded
          : isLoaded // ignore: cast_nullable_to_non_nullable
              as bool,
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      isError: null == isError
          ? _value.isError
          : isError // ignore: cast_nullable_to_non_nullable
              as bool,
      isEdited: null == isEdited
          ? _value.isEdited
          : isEdited // ignore: cast_nullable_to_non_nullable
              as bool,
      isDeleted: null == isDeleted
          ? _value.isDeleted
          : isDeleted // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$_Loaded with DiagnosticableTreeMixin implements _Loaded {
  const _$_Loaded(
      {required this.courseResponse,
      required this.isLoaded,
      required this.isLoading,
      required this.isError,
      required this.isEdited,
      required this.isDeleted});

  @override
  final CourseResponse? courseResponse;
  @override
  final bool isLoaded;
  @override
  final bool isLoading;
  @override
  final bool isError;
  @override
  final bool isEdited;
  @override
  final bool isDeleted;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'AddNewCourseState.loaded(courseResponse: $courseResponse, isLoaded: $isLoaded, isLoading: $isLoading, isError: $isError, isEdited: $isEdited, isDeleted: $isDeleted)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'AddNewCourseState.loaded'))
      ..add(DiagnosticsProperty('courseResponse', courseResponse))
      ..add(DiagnosticsProperty('isLoaded', isLoaded))
      ..add(DiagnosticsProperty('isLoading', isLoading))
      ..add(DiagnosticsProperty('isError', isError))
      ..add(DiagnosticsProperty('isEdited', isEdited))
      ..add(DiagnosticsProperty('isDeleted', isDeleted));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Loaded &&
            (identical(other.courseResponse, courseResponse) ||
                other.courseResponse == courseResponse) &&
            (identical(other.isLoaded, isLoaded) ||
                other.isLoaded == isLoaded) &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            (identical(other.isError, isError) || other.isError == isError) &&
            (identical(other.isEdited, isEdited) ||
                other.isEdited == isEdited) &&
            (identical(other.isDeleted, isDeleted) ||
                other.isDeleted == isDeleted));
  }

  @override
  int get hashCode => Object.hash(runtimeType, courseResponse, isLoaded,
      isLoading, isError, isEdited, isDeleted);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_LoadedCopyWith<_$_Loaded> get copyWith =>
      __$$_LoadedCopyWithImpl<_$_Loaded>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(CourseResponse? courseResponse, bool isLoaded,
            bool isLoading, bool isError, bool isEdited, bool isDeleted)
        loaded,
  }) {
    return loaded(
        courseResponse, isLoaded, isLoading, isError, isEdited, isDeleted);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(CourseResponse? courseResponse, bool isLoaded,
            bool isLoading, bool isError, bool isEdited, bool isDeleted)?
        loaded,
  }) {
    return loaded?.call(
        courseResponse, isLoaded, isLoading, isError, isEdited, isDeleted);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(CourseResponse? courseResponse, bool isLoaded,
            bool isLoading, bool isError, bool isEdited, bool isDeleted)?
        loaded,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(
          courseResponse, isLoaded, isLoading, isError, isEdited, isDeleted);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Loaded value) loaded,
  }) {
    return loaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Loaded value)? loaded,
  }) {
    return loaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Loaded value)? loaded,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(this);
    }
    return orElse();
  }
}

abstract class _Loaded implements AddNewCourseState {
  const factory _Loaded(
      {required final CourseResponse? courseResponse,
      required final bool isLoaded,
      required final bool isLoading,
      required final bool isError,
      required final bool isEdited,
      required final bool isDeleted}) = _$_Loaded;

  @override
  CourseResponse? get courseResponse;
  @override
  bool get isLoaded;
  @override
  bool get isLoading;
  @override
  bool get isError;
  @override
  bool get isEdited;
  @override
  bool get isDeleted;
  @override
  @JsonKey(ignore: true)
  _$$_LoadedCopyWith<_$_Loaded> get copyWith =>
      throw _privateConstructorUsedError;
}
