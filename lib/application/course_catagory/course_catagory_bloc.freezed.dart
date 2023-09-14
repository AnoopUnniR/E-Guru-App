// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'course_catagory_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$CourseCatagoryEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function() courseAdded,
    required TResult Function(String name) addNewCourse,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function()? courseAdded,
    TResult? Function(String name)? addNewCourse,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function()? courseAdded,
    TResult Function(String name)? addNewCourse,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Loading value) loading,
    required TResult Function(CourseAdded value) courseAdded,
    required TResult Function(AddNewCourse value) addNewCourse,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Loading value)? loading,
    TResult? Function(CourseAdded value)? courseAdded,
    TResult? Function(AddNewCourse value)? addNewCourse,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Loading value)? loading,
    TResult Function(CourseAdded value)? courseAdded,
    TResult Function(AddNewCourse value)? addNewCourse,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CourseCatagoryEventCopyWith<$Res> {
  factory $CourseCatagoryEventCopyWith(
          CourseCatagoryEvent value, $Res Function(CourseCatagoryEvent) then) =
      _$CourseCatagoryEventCopyWithImpl<$Res, CourseCatagoryEvent>;
}

/// @nodoc
class _$CourseCatagoryEventCopyWithImpl<$Res, $Val extends CourseCatagoryEvent>
    implements $CourseCatagoryEventCopyWith<$Res> {
  _$CourseCatagoryEventCopyWithImpl(this._value, this._then);

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
    extends _$CourseCatagoryEventCopyWithImpl<$Res, _$Loading>
    implements _$$LoadingCopyWith<$Res> {
  __$$LoadingCopyWithImpl(_$Loading _value, $Res Function(_$Loading) _then)
      : super(_value, _then);
}

/// @nodoc

class _$Loading implements Loading {
  const _$Loading();

  @override
  String toString() {
    return 'CourseCatagoryEvent.loading()';
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
    required TResult Function() courseAdded,
    required TResult Function(String name) addNewCourse,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function()? courseAdded,
    TResult? Function(String name)? addNewCourse,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function()? courseAdded,
    TResult Function(String name)? addNewCourse,
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
    required TResult Function(CourseAdded value) courseAdded,
    required TResult Function(AddNewCourse value) addNewCourse,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Loading value)? loading,
    TResult? Function(CourseAdded value)? courseAdded,
    TResult? Function(AddNewCourse value)? addNewCourse,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Loading value)? loading,
    TResult Function(CourseAdded value)? courseAdded,
    TResult Function(AddNewCourse value)? addNewCourse,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class Loading implements CourseCatagoryEvent {
  const factory Loading() = _$Loading;
}

/// @nodoc
abstract class _$$CourseAddedCopyWith<$Res> {
  factory _$$CourseAddedCopyWith(
          _$CourseAdded value, $Res Function(_$CourseAdded) then) =
      __$$CourseAddedCopyWithImpl<$Res>;
}

/// @nodoc
class __$$CourseAddedCopyWithImpl<$Res>
    extends _$CourseCatagoryEventCopyWithImpl<$Res, _$CourseAdded>
    implements _$$CourseAddedCopyWith<$Res> {
  __$$CourseAddedCopyWithImpl(
      _$CourseAdded _value, $Res Function(_$CourseAdded) _then)
      : super(_value, _then);
}

/// @nodoc

class _$CourseAdded implements CourseAdded {
  const _$CourseAdded();

  @override
  String toString() {
    return 'CourseCatagoryEvent.courseAdded()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$CourseAdded);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function() courseAdded,
    required TResult Function(String name) addNewCourse,
  }) {
    return courseAdded();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function()? courseAdded,
    TResult? Function(String name)? addNewCourse,
  }) {
    return courseAdded?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function()? courseAdded,
    TResult Function(String name)? addNewCourse,
    required TResult orElse(),
  }) {
    if (courseAdded != null) {
      return courseAdded();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Loading value) loading,
    required TResult Function(CourseAdded value) courseAdded,
    required TResult Function(AddNewCourse value) addNewCourse,
  }) {
    return courseAdded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Loading value)? loading,
    TResult? Function(CourseAdded value)? courseAdded,
    TResult? Function(AddNewCourse value)? addNewCourse,
  }) {
    return courseAdded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Loading value)? loading,
    TResult Function(CourseAdded value)? courseAdded,
    TResult Function(AddNewCourse value)? addNewCourse,
    required TResult orElse(),
  }) {
    if (courseAdded != null) {
      return courseAdded(this);
    }
    return orElse();
  }
}

abstract class CourseAdded implements CourseCatagoryEvent {
  const factory CourseAdded() = _$CourseAdded;
}

/// @nodoc
abstract class _$$AddNewCourseCopyWith<$Res> {
  factory _$$AddNewCourseCopyWith(
          _$AddNewCourse value, $Res Function(_$AddNewCourse) then) =
      __$$AddNewCourseCopyWithImpl<$Res>;
  @useResult
  $Res call({String name});
}

/// @nodoc
class __$$AddNewCourseCopyWithImpl<$Res>
    extends _$CourseCatagoryEventCopyWithImpl<$Res, _$AddNewCourse>
    implements _$$AddNewCourseCopyWith<$Res> {
  __$$AddNewCourseCopyWithImpl(
      _$AddNewCourse _value, $Res Function(_$AddNewCourse) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
  }) {
    return _then(_$AddNewCourse(
      null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$AddNewCourse implements AddNewCourse {
  const _$AddNewCourse(this.name);

  @override
  final String name;

  @override
  String toString() {
    return 'CourseCatagoryEvent.addNewCourse(name: $name)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AddNewCourse &&
            (identical(other.name, name) || other.name == name));
  }

  @override
  int get hashCode => Object.hash(runtimeType, name);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AddNewCourseCopyWith<_$AddNewCourse> get copyWith =>
      __$$AddNewCourseCopyWithImpl<_$AddNewCourse>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function() courseAdded,
    required TResult Function(String name) addNewCourse,
  }) {
    return addNewCourse(name);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function()? courseAdded,
    TResult? Function(String name)? addNewCourse,
  }) {
    return addNewCourse?.call(name);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function()? courseAdded,
    TResult Function(String name)? addNewCourse,
    required TResult orElse(),
  }) {
    if (addNewCourse != null) {
      return addNewCourse(name);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Loading value) loading,
    required TResult Function(CourseAdded value) courseAdded,
    required TResult Function(AddNewCourse value) addNewCourse,
  }) {
    return addNewCourse(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Loading value)? loading,
    TResult? Function(CourseAdded value)? courseAdded,
    TResult? Function(AddNewCourse value)? addNewCourse,
  }) {
    return addNewCourse?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Loading value)? loading,
    TResult Function(CourseAdded value)? courseAdded,
    TResult Function(AddNewCourse value)? addNewCourse,
    required TResult orElse(),
  }) {
    if (addNewCourse != null) {
      return addNewCourse(this);
    }
    return orElse();
  }
}

abstract class AddNewCourse implements CourseCatagoryEvent {
  const factory AddNewCourse(final String name) = _$AddNewCourse;

  String get name;
  @JsonKey(ignore: true)
  _$$AddNewCourseCopyWith<_$AddNewCourse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$CourseCatagoryState {
  bool get isLoading => throw _privateConstructorUsedError;
  List<dynamic> get catagory => throw _privateConstructorUsedError;
  bool get isError => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $CourseCatagoryStateCopyWith<CourseCatagoryState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CourseCatagoryStateCopyWith<$Res> {
  factory $CourseCatagoryStateCopyWith(
          CourseCatagoryState value, $Res Function(CourseCatagoryState) then) =
      _$CourseCatagoryStateCopyWithImpl<$Res, CourseCatagoryState>;
  @useResult
  $Res call({bool isLoading, List<dynamic> catagory, bool isError});
}

/// @nodoc
class _$CourseCatagoryStateCopyWithImpl<$Res, $Val extends CourseCatagoryState>
    implements $CourseCatagoryStateCopyWith<$Res> {
  _$CourseCatagoryStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
    Object? catagory = null,
    Object? isError = null,
  }) {
    return _then(_value.copyWith(
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      catagory: null == catagory
          ? _value.catagory
          : catagory // ignore: cast_nullable_to_non_nullable
              as List<dynamic>,
      isError: null == isError
          ? _value.isError
          : isError // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_CourseCatagoryStateCopyWith<$Res>
    implements $CourseCatagoryStateCopyWith<$Res> {
  factory _$$_CourseCatagoryStateCopyWith(_$_CourseCatagoryState value,
          $Res Function(_$_CourseCatagoryState) then) =
      __$$_CourseCatagoryStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({bool isLoading, List<dynamic> catagory, bool isError});
}

/// @nodoc
class __$$_CourseCatagoryStateCopyWithImpl<$Res>
    extends _$CourseCatagoryStateCopyWithImpl<$Res, _$_CourseCatagoryState>
    implements _$$_CourseCatagoryStateCopyWith<$Res> {
  __$$_CourseCatagoryStateCopyWithImpl(_$_CourseCatagoryState _value,
      $Res Function(_$_CourseCatagoryState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
    Object? catagory = null,
    Object? isError = null,
  }) {
    return _then(_$_CourseCatagoryState(
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      catagory: null == catagory
          ? _value._catagory
          : catagory // ignore: cast_nullable_to_non_nullable
              as List<dynamic>,
      isError: null == isError
          ? _value.isError
          : isError // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$_CourseCatagoryState implements _CourseCatagoryState {
  const _$_CourseCatagoryState(
      {required this.isLoading,
      required final List<dynamic> catagory,
      required this.isError})
      : _catagory = catagory;

  @override
  final bool isLoading;
  final List<dynamic> _catagory;
  @override
  List<dynamic> get catagory {
    if (_catagory is EqualUnmodifiableListView) return _catagory;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_catagory);
  }

  @override
  final bool isError;

  @override
  String toString() {
    return 'CourseCatagoryState(isLoading: $isLoading, catagory: $catagory, isError: $isError)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_CourseCatagoryState &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            const DeepCollectionEquality().equals(other._catagory, _catagory) &&
            (identical(other.isError, isError) || other.isError == isError));
  }

  @override
  int get hashCode => Object.hash(runtimeType, isLoading,
      const DeepCollectionEquality().hash(_catagory), isError);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_CourseCatagoryStateCopyWith<_$_CourseCatagoryState> get copyWith =>
      __$$_CourseCatagoryStateCopyWithImpl<_$_CourseCatagoryState>(
          this, _$identity);
}

abstract class _CourseCatagoryState implements CourseCatagoryState {
  const factory _CourseCatagoryState(
      {required final bool isLoading,
      required final List<dynamic> catagory,
      required final bool isError}) = _$_CourseCatagoryState;

  @override
  bool get isLoading;
  @override
  List<dynamic> get catagory;
  @override
  bool get isError;
  @override
  @JsonKey(ignore: true)
  _$$_CourseCatagoryStateCopyWith<_$_CourseCatagoryState> get copyWith =>
      throw _privateConstructorUsedError;
}
