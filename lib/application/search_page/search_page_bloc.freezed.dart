// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'search_page_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$SearchPageEvent {
  String get value => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String value) searchInitiated,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String value)? searchInitiated,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String value)? searchInitiated,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SearchInitiated value) searchInitiated,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(SearchInitiated value)? searchInitiated,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SearchInitiated value)? searchInitiated,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $SearchPageEventCopyWith<SearchPageEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SearchPageEventCopyWith<$Res> {
  factory $SearchPageEventCopyWith(
          SearchPageEvent value, $Res Function(SearchPageEvent) then) =
      _$SearchPageEventCopyWithImpl<$Res, SearchPageEvent>;
  @useResult
  $Res call({String value});
}

/// @nodoc
class _$SearchPageEventCopyWithImpl<$Res, $Val extends SearchPageEvent>
    implements $SearchPageEventCopyWith<$Res> {
  _$SearchPageEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? value = null,
  }) {
    return _then(_value.copyWith(
      value: null == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SearchInitiatedCopyWith<$Res>
    implements $SearchPageEventCopyWith<$Res> {
  factory _$$SearchInitiatedCopyWith(
          _$SearchInitiated value, $Res Function(_$SearchInitiated) then) =
      __$$SearchInitiatedCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String value});
}

/// @nodoc
class __$$SearchInitiatedCopyWithImpl<$Res>
    extends _$SearchPageEventCopyWithImpl<$Res, _$SearchInitiated>
    implements _$$SearchInitiatedCopyWith<$Res> {
  __$$SearchInitiatedCopyWithImpl(
      _$SearchInitiated _value, $Res Function(_$SearchInitiated) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? value = null,
  }) {
    return _then(_$SearchInitiated(
      value: null == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$SearchInitiated implements SearchInitiated {
  const _$SearchInitiated({required this.value});

  @override
  final String value;

  @override
  String toString() {
    return 'SearchPageEvent.searchInitiated(value: $value)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SearchInitiated &&
            (identical(other.value, value) || other.value == value));
  }

  @override
  int get hashCode => Object.hash(runtimeType, value);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SearchInitiatedCopyWith<_$SearchInitiated> get copyWith =>
      __$$SearchInitiatedCopyWithImpl<_$SearchInitiated>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String value) searchInitiated,
  }) {
    return searchInitiated(value);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String value)? searchInitiated,
  }) {
    return searchInitiated?.call(value);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String value)? searchInitiated,
    required TResult orElse(),
  }) {
    if (searchInitiated != null) {
      return searchInitiated(value);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SearchInitiated value) searchInitiated,
  }) {
    return searchInitiated(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(SearchInitiated value)? searchInitiated,
  }) {
    return searchInitiated?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SearchInitiated value)? searchInitiated,
    required TResult orElse(),
  }) {
    if (searchInitiated != null) {
      return searchInitiated(this);
    }
    return orElse();
  }
}

abstract class SearchInitiated implements SearchPageEvent {
  const factory SearchInitiated({required final String value}) =
      _$SearchInitiated;

  @override
  String get value;
  @override
  @JsonKey(ignore: true)
  _$$SearchInitiatedCopyWith<_$SearchInitiated> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$SearchPageState {
  List<CourseModel> get courses => throw _privateConstructorUsedError;
  bool get isLoading => throw _privateConstructorUsedError;
  bool get isError => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            List<CourseModel> courses, bool isLoading, bool isError)
        search,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<CourseModel> courses, bool isLoading, bool isError)?
        search,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<CourseModel> courses, bool isLoading, bool isError)?
        search,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Search value) search,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Search value)? search,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Search value)? search,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $SearchPageStateCopyWith<SearchPageState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SearchPageStateCopyWith<$Res> {
  factory $SearchPageStateCopyWith(
          SearchPageState value, $Res Function(SearchPageState) then) =
      _$SearchPageStateCopyWithImpl<$Res, SearchPageState>;
  @useResult
  $Res call({List<CourseModel> courses, bool isLoading, bool isError});
}

/// @nodoc
class _$SearchPageStateCopyWithImpl<$Res, $Val extends SearchPageState>
    implements $SearchPageStateCopyWith<$Res> {
  _$SearchPageStateCopyWithImpl(this._value, this._then);

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
abstract class _$$SearchCopyWith<$Res>
    implements $SearchPageStateCopyWith<$Res> {
  factory _$$SearchCopyWith(_$Search value, $Res Function(_$Search) then) =
      __$$SearchCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<CourseModel> courses, bool isLoading, bool isError});
}

/// @nodoc
class __$$SearchCopyWithImpl<$Res>
    extends _$SearchPageStateCopyWithImpl<$Res, _$Search>
    implements _$$SearchCopyWith<$Res> {
  __$$SearchCopyWithImpl(_$Search _value, $Res Function(_$Search) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? courses = null,
    Object? isLoading = null,
    Object? isError = null,
  }) {
    return _then(_$Search(
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

class _$Search implements Search {
  const _$Search(
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
    return 'SearchPageState.search(courses: $courses, isLoading: $isLoading, isError: $isError)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$Search &&
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
  _$$SearchCopyWith<_$Search> get copyWith =>
      __$$SearchCopyWithImpl<_$Search>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            List<CourseModel> courses, bool isLoading, bool isError)
        search,
  }) {
    return search(courses, isLoading, isError);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<CourseModel> courses, bool isLoading, bool isError)?
        search,
  }) {
    return search?.call(courses, isLoading, isError);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<CourseModel> courses, bool isLoading, bool isError)?
        search,
    required TResult orElse(),
  }) {
    if (search != null) {
      return search(courses, isLoading, isError);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Search value) search,
  }) {
    return search(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Search value)? search,
  }) {
    return search?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Search value)? search,
    required TResult orElse(),
  }) {
    if (search != null) {
      return search(this);
    }
    return orElse();
  }
}

abstract class Search implements SearchPageState {
  const factory Search(
      {required final List<CourseModel> courses,
      required final bool isLoading,
      required final bool isError}) = _$Search;

  @override
  List<CourseModel> get courses;
  @override
  bool get isLoading;
  @override
  bool get isError;
  @override
  @JsonKey(ignore: true)
  _$$SearchCopyWith<_$Search> get copyWith =>
      throw _privateConstructorUsedError;
}
