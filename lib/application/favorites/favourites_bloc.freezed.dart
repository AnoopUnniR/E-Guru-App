// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'favourites_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$FavouritesEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() favoritesStarted,
    required TResult Function(int courseId) addNewFavorites,
    required TResult Function(int courseId) removeFavorites,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? favoritesStarted,
    TResult? Function(int courseId)? addNewFavorites,
    TResult? Function(int courseId)? removeFavorites,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? favoritesStarted,
    TResult Function(int courseId)? addNewFavorites,
    TResult Function(int courseId)? removeFavorites,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(FavoritesStarted value) favoritesStarted,
    required TResult Function(AddNewFavorites value) addNewFavorites,
    required TResult Function(RemoveFavorites value) removeFavorites,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(FavoritesStarted value)? favoritesStarted,
    TResult? Function(AddNewFavorites value)? addNewFavorites,
    TResult? Function(RemoveFavorites value)? removeFavorites,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(FavoritesStarted value)? favoritesStarted,
    TResult Function(AddNewFavorites value)? addNewFavorites,
    TResult Function(RemoveFavorites value)? removeFavorites,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FavouritesEventCopyWith<$Res> {
  factory $FavouritesEventCopyWith(
          FavouritesEvent value, $Res Function(FavouritesEvent) then) =
      _$FavouritesEventCopyWithImpl<$Res, FavouritesEvent>;
}

/// @nodoc
class _$FavouritesEventCopyWithImpl<$Res, $Val extends FavouritesEvent>
    implements $FavouritesEventCopyWith<$Res> {
  _$FavouritesEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$FavoritesStartedCopyWith<$Res> {
  factory _$$FavoritesStartedCopyWith(
          _$FavoritesStarted value, $Res Function(_$FavoritesStarted) then) =
      __$$FavoritesStartedCopyWithImpl<$Res>;
}

/// @nodoc
class __$$FavoritesStartedCopyWithImpl<$Res>
    extends _$FavouritesEventCopyWithImpl<$Res, _$FavoritesStarted>
    implements _$$FavoritesStartedCopyWith<$Res> {
  __$$FavoritesStartedCopyWithImpl(
      _$FavoritesStarted _value, $Res Function(_$FavoritesStarted) _then)
      : super(_value, _then);
}

/// @nodoc

class _$FavoritesStarted implements FavoritesStarted {
  const _$FavoritesStarted();

  @override
  String toString() {
    return 'FavouritesEvent.favoritesStarted()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$FavoritesStarted);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() favoritesStarted,
    required TResult Function(int courseId) addNewFavorites,
    required TResult Function(int courseId) removeFavorites,
  }) {
    return favoritesStarted();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? favoritesStarted,
    TResult? Function(int courseId)? addNewFavorites,
    TResult? Function(int courseId)? removeFavorites,
  }) {
    return favoritesStarted?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? favoritesStarted,
    TResult Function(int courseId)? addNewFavorites,
    TResult Function(int courseId)? removeFavorites,
    required TResult orElse(),
  }) {
    if (favoritesStarted != null) {
      return favoritesStarted();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(FavoritesStarted value) favoritesStarted,
    required TResult Function(AddNewFavorites value) addNewFavorites,
    required TResult Function(RemoveFavorites value) removeFavorites,
  }) {
    return favoritesStarted(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(FavoritesStarted value)? favoritesStarted,
    TResult? Function(AddNewFavorites value)? addNewFavorites,
    TResult? Function(RemoveFavorites value)? removeFavorites,
  }) {
    return favoritesStarted?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(FavoritesStarted value)? favoritesStarted,
    TResult Function(AddNewFavorites value)? addNewFavorites,
    TResult Function(RemoveFavorites value)? removeFavorites,
    required TResult orElse(),
  }) {
    if (favoritesStarted != null) {
      return favoritesStarted(this);
    }
    return orElse();
  }
}

abstract class FavoritesStarted implements FavouritesEvent {
  const factory FavoritesStarted() = _$FavoritesStarted;
}

/// @nodoc
abstract class _$$AddNewFavoritesCopyWith<$Res> {
  factory _$$AddNewFavoritesCopyWith(
          _$AddNewFavorites value, $Res Function(_$AddNewFavorites) then) =
      __$$AddNewFavoritesCopyWithImpl<$Res>;
  @useResult
  $Res call({int courseId});
}

/// @nodoc
class __$$AddNewFavoritesCopyWithImpl<$Res>
    extends _$FavouritesEventCopyWithImpl<$Res, _$AddNewFavorites>
    implements _$$AddNewFavoritesCopyWith<$Res> {
  __$$AddNewFavoritesCopyWithImpl(
      _$AddNewFavorites _value, $Res Function(_$AddNewFavorites) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? courseId = null,
  }) {
    return _then(_$AddNewFavorites(
      null == courseId
          ? _value.courseId
          : courseId // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$AddNewFavorites implements AddNewFavorites {
  const _$AddNewFavorites(this.courseId);

  @override
  final int courseId;

  @override
  String toString() {
    return 'FavouritesEvent.addNewFavorites(courseId: $courseId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AddNewFavorites &&
            (identical(other.courseId, courseId) ||
                other.courseId == courseId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, courseId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AddNewFavoritesCopyWith<_$AddNewFavorites> get copyWith =>
      __$$AddNewFavoritesCopyWithImpl<_$AddNewFavorites>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() favoritesStarted,
    required TResult Function(int courseId) addNewFavorites,
    required TResult Function(int courseId) removeFavorites,
  }) {
    return addNewFavorites(courseId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? favoritesStarted,
    TResult? Function(int courseId)? addNewFavorites,
    TResult? Function(int courseId)? removeFavorites,
  }) {
    return addNewFavorites?.call(courseId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? favoritesStarted,
    TResult Function(int courseId)? addNewFavorites,
    TResult Function(int courseId)? removeFavorites,
    required TResult orElse(),
  }) {
    if (addNewFavorites != null) {
      return addNewFavorites(courseId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(FavoritesStarted value) favoritesStarted,
    required TResult Function(AddNewFavorites value) addNewFavorites,
    required TResult Function(RemoveFavorites value) removeFavorites,
  }) {
    return addNewFavorites(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(FavoritesStarted value)? favoritesStarted,
    TResult? Function(AddNewFavorites value)? addNewFavorites,
    TResult? Function(RemoveFavorites value)? removeFavorites,
  }) {
    return addNewFavorites?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(FavoritesStarted value)? favoritesStarted,
    TResult Function(AddNewFavorites value)? addNewFavorites,
    TResult Function(RemoveFavorites value)? removeFavorites,
    required TResult orElse(),
  }) {
    if (addNewFavorites != null) {
      return addNewFavorites(this);
    }
    return orElse();
  }
}

abstract class AddNewFavorites implements FavouritesEvent {
  const factory AddNewFavorites(final int courseId) = _$AddNewFavorites;

  int get courseId;
  @JsonKey(ignore: true)
  _$$AddNewFavoritesCopyWith<_$AddNewFavorites> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$RemoveFavoritesCopyWith<$Res> {
  factory _$$RemoveFavoritesCopyWith(
          _$RemoveFavorites value, $Res Function(_$RemoveFavorites) then) =
      __$$RemoveFavoritesCopyWithImpl<$Res>;
  @useResult
  $Res call({int courseId});
}

/// @nodoc
class __$$RemoveFavoritesCopyWithImpl<$Res>
    extends _$FavouritesEventCopyWithImpl<$Res, _$RemoveFavorites>
    implements _$$RemoveFavoritesCopyWith<$Res> {
  __$$RemoveFavoritesCopyWithImpl(
      _$RemoveFavorites _value, $Res Function(_$RemoveFavorites) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? courseId = null,
  }) {
    return _then(_$RemoveFavorites(
      null == courseId
          ? _value.courseId
          : courseId // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$RemoveFavorites implements RemoveFavorites {
  const _$RemoveFavorites(this.courseId);

  @override
  final int courseId;

  @override
  String toString() {
    return 'FavouritesEvent.removeFavorites(courseId: $courseId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RemoveFavorites &&
            (identical(other.courseId, courseId) ||
                other.courseId == courseId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, courseId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$RemoveFavoritesCopyWith<_$RemoveFavorites> get copyWith =>
      __$$RemoveFavoritesCopyWithImpl<_$RemoveFavorites>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() favoritesStarted,
    required TResult Function(int courseId) addNewFavorites,
    required TResult Function(int courseId) removeFavorites,
  }) {
    return removeFavorites(courseId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? favoritesStarted,
    TResult? Function(int courseId)? addNewFavorites,
    TResult? Function(int courseId)? removeFavorites,
  }) {
    return removeFavorites?.call(courseId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? favoritesStarted,
    TResult Function(int courseId)? addNewFavorites,
    TResult Function(int courseId)? removeFavorites,
    required TResult orElse(),
  }) {
    if (removeFavorites != null) {
      return removeFavorites(courseId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(FavoritesStarted value) favoritesStarted,
    required TResult Function(AddNewFavorites value) addNewFavorites,
    required TResult Function(RemoveFavorites value) removeFavorites,
  }) {
    return removeFavorites(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(FavoritesStarted value)? favoritesStarted,
    TResult? Function(AddNewFavorites value)? addNewFavorites,
    TResult? Function(RemoveFavorites value)? removeFavorites,
  }) {
    return removeFavorites?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(FavoritesStarted value)? favoritesStarted,
    TResult Function(AddNewFavorites value)? addNewFavorites,
    TResult Function(RemoveFavorites value)? removeFavorites,
    required TResult orElse(),
  }) {
    if (removeFavorites != null) {
      return removeFavorites(this);
    }
    return orElse();
  }
}

abstract class RemoveFavorites implements FavouritesEvent {
  const factory RemoveFavorites(final int courseId) = _$RemoveFavorites;

  int get courseId;
  @JsonKey(ignore: true)
  _$$RemoveFavoritesCopyWith<_$RemoveFavorites> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$FavouritesState {
  List<CourseModel> get courses => throw _privateConstructorUsedError;
  bool get isLoading => throw _privateConstructorUsedError;
  bool get isError => throw _privateConstructorUsedError;
  bool get isFavorite => throw _privateConstructorUsedError;
  List<int> get favoritesId => throw _privateConstructorUsedError;
  bool get isFavRemoved => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            List<CourseModel> courses,
            bool isLoading,
            bool isError,
            bool isFavorite,
            List<int> favoritesId,
            bool isFavRemoved)
        started,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<CourseModel> courses, bool isLoading, bool isError,
            bool isFavorite, List<int> favoritesId, bool isFavRemoved)?
        started,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<CourseModel> courses, bool isLoading, bool isError,
            bool isFavorite, List<int> favoritesId, bool isFavRemoved)?
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
  $FavouritesStateCopyWith<FavouritesState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FavouritesStateCopyWith<$Res> {
  factory $FavouritesStateCopyWith(
          FavouritesState value, $Res Function(FavouritesState) then) =
      _$FavouritesStateCopyWithImpl<$Res, FavouritesState>;
  @useResult
  $Res call(
      {List<CourseModel> courses,
      bool isLoading,
      bool isError,
      bool isFavorite,
      List<int> favoritesId,
      bool isFavRemoved});
}

/// @nodoc
class _$FavouritesStateCopyWithImpl<$Res, $Val extends FavouritesState>
    implements $FavouritesStateCopyWith<$Res> {
  _$FavouritesStateCopyWithImpl(this._value, this._then);

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
    Object? isFavorite = null,
    Object? favoritesId = null,
    Object? isFavRemoved = null,
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
      isFavorite: null == isFavorite
          ? _value.isFavorite
          : isFavorite // ignore: cast_nullable_to_non_nullable
              as bool,
      favoritesId: null == favoritesId
          ? _value.favoritesId
          : favoritesId // ignore: cast_nullable_to_non_nullable
              as List<int>,
      isFavRemoved: null == isFavRemoved
          ? _value.isFavRemoved
          : isFavRemoved // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$StartedCopyWith<$Res>
    implements $FavouritesStateCopyWith<$Res> {
  factory _$$StartedCopyWith(_$Started value, $Res Function(_$Started) then) =
      __$$StartedCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {List<CourseModel> courses,
      bool isLoading,
      bool isError,
      bool isFavorite,
      List<int> favoritesId,
      bool isFavRemoved});
}

/// @nodoc
class __$$StartedCopyWithImpl<$Res>
    extends _$FavouritesStateCopyWithImpl<$Res, _$Started>
    implements _$$StartedCopyWith<$Res> {
  __$$StartedCopyWithImpl(_$Started _value, $Res Function(_$Started) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? courses = null,
    Object? isLoading = null,
    Object? isError = null,
    Object? isFavorite = null,
    Object? favoritesId = null,
    Object? isFavRemoved = null,
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
      isFavorite: null == isFavorite
          ? _value.isFavorite
          : isFavorite // ignore: cast_nullable_to_non_nullable
              as bool,
      favoritesId: null == favoritesId
          ? _value._favoritesId
          : favoritesId // ignore: cast_nullable_to_non_nullable
              as List<int>,
      isFavRemoved: null == isFavRemoved
          ? _value.isFavRemoved
          : isFavRemoved // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$Started implements Started {
  const _$Started(
      {required final List<CourseModel> courses,
      required this.isLoading,
      required this.isError,
      required this.isFavorite,
      required final List<int> favoritesId,
      required this.isFavRemoved})
      : _courses = courses,
        _favoritesId = favoritesId;

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
  final bool isFavorite;
  final List<int> _favoritesId;
  @override
  List<int> get favoritesId {
    if (_favoritesId is EqualUnmodifiableListView) return _favoritesId;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_favoritesId);
  }

  @override
  final bool isFavRemoved;

  @override
  String toString() {
    return 'FavouritesState.started(courses: $courses, isLoading: $isLoading, isError: $isError, isFavorite: $isFavorite, favoritesId: $favoritesId, isFavRemoved: $isFavRemoved)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$Started &&
            const DeepCollectionEquality().equals(other._courses, _courses) &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            (identical(other.isError, isError) || other.isError == isError) &&
            (identical(other.isFavorite, isFavorite) ||
                other.isFavorite == isFavorite) &&
            const DeepCollectionEquality()
                .equals(other._favoritesId, _favoritesId) &&
            (identical(other.isFavRemoved, isFavRemoved) ||
                other.isFavRemoved == isFavRemoved));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_courses),
      isLoading,
      isError,
      isFavorite,
      const DeepCollectionEquality().hash(_favoritesId),
      isFavRemoved);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$StartedCopyWith<_$Started> get copyWith =>
      __$$StartedCopyWithImpl<_$Started>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            List<CourseModel> courses,
            bool isLoading,
            bool isError,
            bool isFavorite,
            List<int> favoritesId,
            bool isFavRemoved)
        started,
  }) {
    return started(
        courses, isLoading, isError, isFavorite, favoritesId, isFavRemoved);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<CourseModel> courses, bool isLoading, bool isError,
            bool isFavorite, List<int> favoritesId, bool isFavRemoved)?
        started,
  }) {
    return started?.call(
        courses, isLoading, isError, isFavorite, favoritesId, isFavRemoved);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<CourseModel> courses, bool isLoading, bool isError,
            bool isFavorite, List<int> favoritesId, bool isFavRemoved)?
        started,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started(
          courses, isLoading, isError, isFavorite, favoritesId, isFavRemoved);
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

abstract class Started implements FavouritesState {
  const factory Started(
      {required final List<CourseModel> courses,
      required final bool isLoading,
      required final bool isError,
      required final bool isFavorite,
      required final List<int> favoritesId,
      required final bool isFavRemoved}) = _$Started;

  @override
  List<CourseModel> get courses;
  @override
  bool get isLoading;
  @override
  bool get isError;
  @override
  bool get isFavorite;
  @override
  List<int> get favoritesId;
  @override
  bool get isFavRemoved;
  @override
  @JsonKey(ignore: true)
  _$$StartedCopyWith<_$Started> get copyWith =>
      throw _privateConstructorUsedError;
}
