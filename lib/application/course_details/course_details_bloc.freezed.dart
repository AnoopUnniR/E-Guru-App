// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'course_details_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$CourseDetailsEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int courseId) chapterLoading,
    required TResult Function(int courseId) enrollCourse,
    required TResult Function(int courseId) unEnrollCourse,
    required TResult Function(int courseId, String review, int rating)
        addReview,
    required TResult Function(int courseId) loadReviews,
    required TResult Function(int reviewCount) loadMoreReview,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int courseId)? chapterLoading,
    TResult? Function(int courseId)? enrollCourse,
    TResult? Function(int courseId)? unEnrollCourse,
    TResult? Function(int courseId, String review, int rating)? addReview,
    TResult? Function(int courseId)? loadReviews,
    TResult? Function(int reviewCount)? loadMoreReview,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int courseId)? chapterLoading,
    TResult Function(int courseId)? enrollCourse,
    TResult Function(int courseId)? unEnrollCourse,
    TResult Function(int courseId, String review, int rating)? addReview,
    TResult Function(int courseId)? loadReviews,
    TResult Function(int reviewCount)? loadMoreReview,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ChapterLoading value) chapterLoading,
    required TResult Function(EnrollCourse value) enrollCourse,
    required TResult Function(UnEnrollCourse value) unEnrollCourse,
    required TResult Function(AddReview value) addReview,
    required TResult Function(LoadReviews value) loadReviews,
    required TResult Function(LoadMoreReview value) loadMoreReview,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ChapterLoading value)? chapterLoading,
    TResult? Function(EnrollCourse value)? enrollCourse,
    TResult? Function(UnEnrollCourse value)? unEnrollCourse,
    TResult? Function(AddReview value)? addReview,
    TResult? Function(LoadReviews value)? loadReviews,
    TResult? Function(LoadMoreReview value)? loadMoreReview,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ChapterLoading value)? chapterLoading,
    TResult Function(EnrollCourse value)? enrollCourse,
    TResult Function(UnEnrollCourse value)? unEnrollCourse,
    TResult Function(AddReview value)? addReview,
    TResult Function(LoadReviews value)? loadReviews,
    TResult Function(LoadMoreReview value)? loadMoreReview,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CourseDetailsEventCopyWith<$Res> {
  factory $CourseDetailsEventCopyWith(
          CourseDetailsEvent value, $Res Function(CourseDetailsEvent) then) =
      _$CourseDetailsEventCopyWithImpl<$Res, CourseDetailsEvent>;
}

/// @nodoc
class _$CourseDetailsEventCopyWithImpl<$Res, $Val extends CourseDetailsEvent>
    implements $CourseDetailsEventCopyWith<$Res> {
  _$CourseDetailsEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$ChapterLoadingCopyWith<$Res> {
  factory _$$ChapterLoadingCopyWith(
          _$ChapterLoading value, $Res Function(_$ChapterLoading) then) =
      __$$ChapterLoadingCopyWithImpl<$Res>;
  @useResult
  $Res call({int courseId});
}

/// @nodoc
class __$$ChapterLoadingCopyWithImpl<$Res>
    extends _$CourseDetailsEventCopyWithImpl<$Res, _$ChapterLoading>
    implements _$$ChapterLoadingCopyWith<$Res> {
  __$$ChapterLoadingCopyWithImpl(
      _$ChapterLoading _value, $Res Function(_$ChapterLoading) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? courseId = null,
  }) {
    return _then(_$ChapterLoading(
      courseId: null == courseId
          ? _value.courseId
          : courseId // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$ChapterLoading implements ChapterLoading {
  const _$ChapterLoading({required this.courseId});

  @override
  final int courseId;

  @override
  String toString() {
    return 'CourseDetailsEvent.chapterLoading(courseId: $courseId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ChapterLoading &&
            (identical(other.courseId, courseId) ||
                other.courseId == courseId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, courseId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ChapterLoadingCopyWith<_$ChapterLoading> get copyWith =>
      __$$ChapterLoadingCopyWithImpl<_$ChapterLoading>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int courseId) chapterLoading,
    required TResult Function(int courseId) enrollCourse,
    required TResult Function(int courseId) unEnrollCourse,
    required TResult Function(int courseId, String review, int rating)
        addReview,
    required TResult Function(int courseId) loadReviews,
    required TResult Function(int reviewCount) loadMoreReview,
  }) {
    return chapterLoading(courseId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int courseId)? chapterLoading,
    TResult? Function(int courseId)? enrollCourse,
    TResult? Function(int courseId)? unEnrollCourse,
    TResult? Function(int courseId, String review, int rating)? addReview,
    TResult? Function(int courseId)? loadReviews,
    TResult? Function(int reviewCount)? loadMoreReview,
  }) {
    return chapterLoading?.call(courseId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int courseId)? chapterLoading,
    TResult Function(int courseId)? enrollCourse,
    TResult Function(int courseId)? unEnrollCourse,
    TResult Function(int courseId, String review, int rating)? addReview,
    TResult Function(int courseId)? loadReviews,
    TResult Function(int reviewCount)? loadMoreReview,
    required TResult orElse(),
  }) {
    if (chapterLoading != null) {
      return chapterLoading(courseId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ChapterLoading value) chapterLoading,
    required TResult Function(EnrollCourse value) enrollCourse,
    required TResult Function(UnEnrollCourse value) unEnrollCourse,
    required TResult Function(AddReview value) addReview,
    required TResult Function(LoadReviews value) loadReviews,
    required TResult Function(LoadMoreReview value) loadMoreReview,
  }) {
    return chapterLoading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ChapterLoading value)? chapterLoading,
    TResult? Function(EnrollCourse value)? enrollCourse,
    TResult? Function(UnEnrollCourse value)? unEnrollCourse,
    TResult? Function(AddReview value)? addReview,
    TResult? Function(LoadReviews value)? loadReviews,
    TResult? Function(LoadMoreReview value)? loadMoreReview,
  }) {
    return chapterLoading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ChapterLoading value)? chapterLoading,
    TResult Function(EnrollCourse value)? enrollCourse,
    TResult Function(UnEnrollCourse value)? unEnrollCourse,
    TResult Function(AddReview value)? addReview,
    TResult Function(LoadReviews value)? loadReviews,
    TResult Function(LoadMoreReview value)? loadMoreReview,
    required TResult orElse(),
  }) {
    if (chapterLoading != null) {
      return chapterLoading(this);
    }
    return orElse();
  }
}

abstract class ChapterLoading implements CourseDetailsEvent {
  const factory ChapterLoading({required final int courseId}) =
      _$ChapterLoading;

  int get courseId;
  @JsonKey(ignore: true)
  _$$ChapterLoadingCopyWith<_$ChapterLoading> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$EnrollCourseCopyWith<$Res> {
  factory _$$EnrollCourseCopyWith(
          _$EnrollCourse value, $Res Function(_$EnrollCourse) then) =
      __$$EnrollCourseCopyWithImpl<$Res>;
  @useResult
  $Res call({int courseId});
}

/// @nodoc
class __$$EnrollCourseCopyWithImpl<$Res>
    extends _$CourseDetailsEventCopyWithImpl<$Res, _$EnrollCourse>
    implements _$$EnrollCourseCopyWith<$Res> {
  __$$EnrollCourseCopyWithImpl(
      _$EnrollCourse _value, $Res Function(_$EnrollCourse) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? courseId = null,
  }) {
    return _then(_$EnrollCourse(
      courseId: null == courseId
          ? _value.courseId
          : courseId // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$EnrollCourse implements EnrollCourse {
  const _$EnrollCourse({required this.courseId});

  @override
  final int courseId;

  @override
  String toString() {
    return 'CourseDetailsEvent.enrollCourse(courseId: $courseId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$EnrollCourse &&
            (identical(other.courseId, courseId) ||
                other.courseId == courseId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, courseId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$EnrollCourseCopyWith<_$EnrollCourse> get copyWith =>
      __$$EnrollCourseCopyWithImpl<_$EnrollCourse>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int courseId) chapterLoading,
    required TResult Function(int courseId) enrollCourse,
    required TResult Function(int courseId) unEnrollCourse,
    required TResult Function(int courseId, String review, int rating)
        addReview,
    required TResult Function(int courseId) loadReviews,
    required TResult Function(int reviewCount) loadMoreReview,
  }) {
    return enrollCourse(courseId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int courseId)? chapterLoading,
    TResult? Function(int courseId)? enrollCourse,
    TResult? Function(int courseId)? unEnrollCourse,
    TResult? Function(int courseId, String review, int rating)? addReview,
    TResult? Function(int courseId)? loadReviews,
    TResult? Function(int reviewCount)? loadMoreReview,
  }) {
    return enrollCourse?.call(courseId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int courseId)? chapterLoading,
    TResult Function(int courseId)? enrollCourse,
    TResult Function(int courseId)? unEnrollCourse,
    TResult Function(int courseId, String review, int rating)? addReview,
    TResult Function(int courseId)? loadReviews,
    TResult Function(int reviewCount)? loadMoreReview,
    required TResult orElse(),
  }) {
    if (enrollCourse != null) {
      return enrollCourse(courseId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ChapterLoading value) chapterLoading,
    required TResult Function(EnrollCourse value) enrollCourse,
    required TResult Function(UnEnrollCourse value) unEnrollCourse,
    required TResult Function(AddReview value) addReview,
    required TResult Function(LoadReviews value) loadReviews,
    required TResult Function(LoadMoreReview value) loadMoreReview,
  }) {
    return enrollCourse(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ChapterLoading value)? chapterLoading,
    TResult? Function(EnrollCourse value)? enrollCourse,
    TResult? Function(UnEnrollCourse value)? unEnrollCourse,
    TResult? Function(AddReview value)? addReview,
    TResult? Function(LoadReviews value)? loadReviews,
    TResult? Function(LoadMoreReview value)? loadMoreReview,
  }) {
    return enrollCourse?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ChapterLoading value)? chapterLoading,
    TResult Function(EnrollCourse value)? enrollCourse,
    TResult Function(UnEnrollCourse value)? unEnrollCourse,
    TResult Function(AddReview value)? addReview,
    TResult Function(LoadReviews value)? loadReviews,
    TResult Function(LoadMoreReview value)? loadMoreReview,
    required TResult orElse(),
  }) {
    if (enrollCourse != null) {
      return enrollCourse(this);
    }
    return orElse();
  }
}

abstract class EnrollCourse implements CourseDetailsEvent {
  const factory EnrollCourse({required final int courseId}) = _$EnrollCourse;

  int get courseId;
  @JsonKey(ignore: true)
  _$$EnrollCourseCopyWith<_$EnrollCourse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$UnEnrollCourseCopyWith<$Res> {
  factory _$$UnEnrollCourseCopyWith(
          _$UnEnrollCourse value, $Res Function(_$UnEnrollCourse) then) =
      __$$UnEnrollCourseCopyWithImpl<$Res>;
  @useResult
  $Res call({int courseId});
}

/// @nodoc
class __$$UnEnrollCourseCopyWithImpl<$Res>
    extends _$CourseDetailsEventCopyWithImpl<$Res, _$UnEnrollCourse>
    implements _$$UnEnrollCourseCopyWith<$Res> {
  __$$UnEnrollCourseCopyWithImpl(
      _$UnEnrollCourse _value, $Res Function(_$UnEnrollCourse) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? courseId = null,
  }) {
    return _then(_$UnEnrollCourse(
      courseId: null == courseId
          ? _value.courseId
          : courseId // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$UnEnrollCourse implements UnEnrollCourse {
  const _$UnEnrollCourse({required this.courseId});

  @override
  final int courseId;

  @override
  String toString() {
    return 'CourseDetailsEvent.unEnrollCourse(courseId: $courseId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UnEnrollCourse &&
            (identical(other.courseId, courseId) ||
                other.courseId == courseId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, courseId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UnEnrollCourseCopyWith<_$UnEnrollCourse> get copyWith =>
      __$$UnEnrollCourseCopyWithImpl<_$UnEnrollCourse>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int courseId) chapterLoading,
    required TResult Function(int courseId) enrollCourse,
    required TResult Function(int courseId) unEnrollCourse,
    required TResult Function(int courseId, String review, int rating)
        addReview,
    required TResult Function(int courseId) loadReviews,
    required TResult Function(int reviewCount) loadMoreReview,
  }) {
    return unEnrollCourse(courseId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int courseId)? chapterLoading,
    TResult? Function(int courseId)? enrollCourse,
    TResult? Function(int courseId)? unEnrollCourse,
    TResult? Function(int courseId, String review, int rating)? addReview,
    TResult? Function(int courseId)? loadReviews,
    TResult? Function(int reviewCount)? loadMoreReview,
  }) {
    return unEnrollCourse?.call(courseId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int courseId)? chapterLoading,
    TResult Function(int courseId)? enrollCourse,
    TResult Function(int courseId)? unEnrollCourse,
    TResult Function(int courseId, String review, int rating)? addReview,
    TResult Function(int courseId)? loadReviews,
    TResult Function(int reviewCount)? loadMoreReview,
    required TResult orElse(),
  }) {
    if (unEnrollCourse != null) {
      return unEnrollCourse(courseId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ChapterLoading value) chapterLoading,
    required TResult Function(EnrollCourse value) enrollCourse,
    required TResult Function(UnEnrollCourse value) unEnrollCourse,
    required TResult Function(AddReview value) addReview,
    required TResult Function(LoadReviews value) loadReviews,
    required TResult Function(LoadMoreReview value) loadMoreReview,
  }) {
    return unEnrollCourse(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ChapterLoading value)? chapterLoading,
    TResult? Function(EnrollCourse value)? enrollCourse,
    TResult? Function(UnEnrollCourse value)? unEnrollCourse,
    TResult? Function(AddReview value)? addReview,
    TResult? Function(LoadReviews value)? loadReviews,
    TResult? Function(LoadMoreReview value)? loadMoreReview,
  }) {
    return unEnrollCourse?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ChapterLoading value)? chapterLoading,
    TResult Function(EnrollCourse value)? enrollCourse,
    TResult Function(UnEnrollCourse value)? unEnrollCourse,
    TResult Function(AddReview value)? addReview,
    TResult Function(LoadReviews value)? loadReviews,
    TResult Function(LoadMoreReview value)? loadMoreReview,
    required TResult orElse(),
  }) {
    if (unEnrollCourse != null) {
      return unEnrollCourse(this);
    }
    return orElse();
  }
}

abstract class UnEnrollCourse implements CourseDetailsEvent {
  const factory UnEnrollCourse({required final int courseId}) =
      _$UnEnrollCourse;

  int get courseId;
  @JsonKey(ignore: true)
  _$$UnEnrollCourseCopyWith<_$UnEnrollCourse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$AddReviewCopyWith<$Res> {
  factory _$$AddReviewCopyWith(
          _$AddReview value, $Res Function(_$AddReview) then) =
      __$$AddReviewCopyWithImpl<$Res>;
  @useResult
  $Res call({int courseId, String review, int rating});
}

/// @nodoc
class __$$AddReviewCopyWithImpl<$Res>
    extends _$CourseDetailsEventCopyWithImpl<$Res, _$AddReview>
    implements _$$AddReviewCopyWith<$Res> {
  __$$AddReviewCopyWithImpl(
      _$AddReview _value, $Res Function(_$AddReview) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? courseId = null,
    Object? review = null,
    Object? rating = null,
  }) {
    return _then(_$AddReview(
      courseId: null == courseId
          ? _value.courseId
          : courseId // ignore: cast_nullable_to_non_nullable
              as int,
      review: null == review
          ? _value.review
          : review // ignore: cast_nullable_to_non_nullable
              as String,
      rating: null == rating
          ? _value.rating
          : rating // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$AddReview implements AddReview {
  const _$AddReview(
      {required this.courseId, required this.review, required this.rating});

  @override
  final int courseId;
  @override
  final String review;
  @override
  final int rating;

  @override
  String toString() {
    return 'CourseDetailsEvent.addReview(courseId: $courseId, review: $review, rating: $rating)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AddReview &&
            (identical(other.courseId, courseId) ||
                other.courseId == courseId) &&
            (identical(other.review, review) || other.review == review) &&
            (identical(other.rating, rating) || other.rating == rating));
  }

  @override
  int get hashCode => Object.hash(runtimeType, courseId, review, rating);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AddReviewCopyWith<_$AddReview> get copyWith =>
      __$$AddReviewCopyWithImpl<_$AddReview>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int courseId) chapterLoading,
    required TResult Function(int courseId) enrollCourse,
    required TResult Function(int courseId) unEnrollCourse,
    required TResult Function(int courseId, String review, int rating)
        addReview,
    required TResult Function(int courseId) loadReviews,
    required TResult Function(int reviewCount) loadMoreReview,
  }) {
    return addReview(courseId, review, rating);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int courseId)? chapterLoading,
    TResult? Function(int courseId)? enrollCourse,
    TResult? Function(int courseId)? unEnrollCourse,
    TResult? Function(int courseId, String review, int rating)? addReview,
    TResult? Function(int courseId)? loadReviews,
    TResult? Function(int reviewCount)? loadMoreReview,
  }) {
    return addReview?.call(courseId, review, rating);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int courseId)? chapterLoading,
    TResult Function(int courseId)? enrollCourse,
    TResult Function(int courseId)? unEnrollCourse,
    TResult Function(int courseId, String review, int rating)? addReview,
    TResult Function(int courseId)? loadReviews,
    TResult Function(int reviewCount)? loadMoreReview,
    required TResult orElse(),
  }) {
    if (addReview != null) {
      return addReview(courseId, review, rating);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ChapterLoading value) chapterLoading,
    required TResult Function(EnrollCourse value) enrollCourse,
    required TResult Function(UnEnrollCourse value) unEnrollCourse,
    required TResult Function(AddReview value) addReview,
    required TResult Function(LoadReviews value) loadReviews,
    required TResult Function(LoadMoreReview value) loadMoreReview,
  }) {
    return addReview(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ChapterLoading value)? chapterLoading,
    TResult? Function(EnrollCourse value)? enrollCourse,
    TResult? Function(UnEnrollCourse value)? unEnrollCourse,
    TResult? Function(AddReview value)? addReview,
    TResult? Function(LoadReviews value)? loadReviews,
    TResult? Function(LoadMoreReview value)? loadMoreReview,
  }) {
    return addReview?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ChapterLoading value)? chapterLoading,
    TResult Function(EnrollCourse value)? enrollCourse,
    TResult Function(UnEnrollCourse value)? unEnrollCourse,
    TResult Function(AddReview value)? addReview,
    TResult Function(LoadReviews value)? loadReviews,
    TResult Function(LoadMoreReview value)? loadMoreReview,
    required TResult orElse(),
  }) {
    if (addReview != null) {
      return addReview(this);
    }
    return orElse();
  }
}

abstract class AddReview implements CourseDetailsEvent {
  const factory AddReview(
      {required final int courseId,
      required final String review,
      required final int rating}) = _$AddReview;

  int get courseId;
  String get review;
  int get rating;
  @JsonKey(ignore: true)
  _$$AddReviewCopyWith<_$AddReview> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$LoadReviewsCopyWith<$Res> {
  factory _$$LoadReviewsCopyWith(
          _$LoadReviews value, $Res Function(_$LoadReviews) then) =
      __$$LoadReviewsCopyWithImpl<$Res>;
  @useResult
  $Res call({int courseId});
}

/// @nodoc
class __$$LoadReviewsCopyWithImpl<$Res>
    extends _$CourseDetailsEventCopyWithImpl<$Res, _$LoadReviews>
    implements _$$LoadReviewsCopyWith<$Res> {
  __$$LoadReviewsCopyWithImpl(
      _$LoadReviews _value, $Res Function(_$LoadReviews) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? courseId = null,
  }) {
    return _then(_$LoadReviews(
      courseId: null == courseId
          ? _value.courseId
          : courseId // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$LoadReviews implements LoadReviews {
  const _$LoadReviews({required this.courseId});

  @override
  final int courseId;

  @override
  String toString() {
    return 'CourseDetailsEvent.loadReviews(courseId: $courseId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoadReviews &&
            (identical(other.courseId, courseId) ||
                other.courseId == courseId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, courseId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$LoadReviewsCopyWith<_$LoadReviews> get copyWith =>
      __$$LoadReviewsCopyWithImpl<_$LoadReviews>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int courseId) chapterLoading,
    required TResult Function(int courseId) enrollCourse,
    required TResult Function(int courseId) unEnrollCourse,
    required TResult Function(int courseId, String review, int rating)
        addReview,
    required TResult Function(int courseId) loadReviews,
    required TResult Function(int reviewCount) loadMoreReview,
  }) {
    return loadReviews(courseId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int courseId)? chapterLoading,
    TResult? Function(int courseId)? enrollCourse,
    TResult? Function(int courseId)? unEnrollCourse,
    TResult? Function(int courseId, String review, int rating)? addReview,
    TResult? Function(int courseId)? loadReviews,
    TResult? Function(int reviewCount)? loadMoreReview,
  }) {
    return loadReviews?.call(courseId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int courseId)? chapterLoading,
    TResult Function(int courseId)? enrollCourse,
    TResult Function(int courseId)? unEnrollCourse,
    TResult Function(int courseId, String review, int rating)? addReview,
    TResult Function(int courseId)? loadReviews,
    TResult Function(int reviewCount)? loadMoreReview,
    required TResult orElse(),
  }) {
    if (loadReviews != null) {
      return loadReviews(courseId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ChapterLoading value) chapterLoading,
    required TResult Function(EnrollCourse value) enrollCourse,
    required TResult Function(UnEnrollCourse value) unEnrollCourse,
    required TResult Function(AddReview value) addReview,
    required TResult Function(LoadReviews value) loadReviews,
    required TResult Function(LoadMoreReview value) loadMoreReview,
  }) {
    return loadReviews(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ChapterLoading value)? chapterLoading,
    TResult? Function(EnrollCourse value)? enrollCourse,
    TResult? Function(UnEnrollCourse value)? unEnrollCourse,
    TResult? Function(AddReview value)? addReview,
    TResult? Function(LoadReviews value)? loadReviews,
    TResult? Function(LoadMoreReview value)? loadMoreReview,
  }) {
    return loadReviews?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ChapterLoading value)? chapterLoading,
    TResult Function(EnrollCourse value)? enrollCourse,
    TResult Function(UnEnrollCourse value)? unEnrollCourse,
    TResult Function(AddReview value)? addReview,
    TResult Function(LoadReviews value)? loadReviews,
    TResult Function(LoadMoreReview value)? loadMoreReview,
    required TResult orElse(),
  }) {
    if (loadReviews != null) {
      return loadReviews(this);
    }
    return orElse();
  }
}

abstract class LoadReviews implements CourseDetailsEvent {
  const factory LoadReviews({required final int courseId}) = _$LoadReviews;

  int get courseId;
  @JsonKey(ignore: true)
  _$$LoadReviewsCopyWith<_$LoadReviews> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$LoadMoreReviewCopyWith<$Res> {
  factory _$$LoadMoreReviewCopyWith(
          _$LoadMoreReview value, $Res Function(_$LoadMoreReview) then) =
      __$$LoadMoreReviewCopyWithImpl<$Res>;
  @useResult
  $Res call({int reviewCount});
}

/// @nodoc
class __$$LoadMoreReviewCopyWithImpl<$Res>
    extends _$CourseDetailsEventCopyWithImpl<$Res, _$LoadMoreReview>
    implements _$$LoadMoreReviewCopyWith<$Res> {
  __$$LoadMoreReviewCopyWithImpl(
      _$LoadMoreReview _value, $Res Function(_$LoadMoreReview) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? reviewCount = null,
  }) {
    return _then(_$LoadMoreReview(
      reviewCount: null == reviewCount
          ? _value.reviewCount
          : reviewCount // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$LoadMoreReview implements LoadMoreReview {
  const _$LoadMoreReview({required this.reviewCount});

  @override
  final int reviewCount;

  @override
  String toString() {
    return 'CourseDetailsEvent.loadMoreReview(reviewCount: $reviewCount)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoadMoreReview &&
            (identical(other.reviewCount, reviewCount) ||
                other.reviewCount == reviewCount));
  }

  @override
  int get hashCode => Object.hash(runtimeType, reviewCount);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$LoadMoreReviewCopyWith<_$LoadMoreReview> get copyWith =>
      __$$LoadMoreReviewCopyWithImpl<_$LoadMoreReview>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int courseId) chapterLoading,
    required TResult Function(int courseId) enrollCourse,
    required TResult Function(int courseId) unEnrollCourse,
    required TResult Function(int courseId, String review, int rating)
        addReview,
    required TResult Function(int courseId) loadReviews,
    required TResult Function(int reviewCount) loadMoreReview,
  }) {
    return loadMoreReview(reviewCount);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int courseId)? chapterLoading,
    TResult? Function(int courseId)? enrollCourse,
    TResult? Function(int courseId)? unEnrollCourse,
    TResult? Function(int courseId, String review, int rating)? addReview,
    TResult? Function(int courseId)? loadReviews,
    TResult? Function(int reviewCount)? loadMoreReview,
  }) {
    return loadMoreReview?.call(reviewCount);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int courseId)? chapterLoading,
    TResult Function(int courseId)? enrollCourse,
    TResult Function(int courseId)? unEnrollCourse,
    TResult Function(int courseId, String review, int rating)? addReview,
    TResult Function(int courseId)? loadReviews,
    TResult Function(int reviewCount)? loadMoreReview,
    required TResult orElse(),
  }) {
    if (loadMoreReview != null) {
      return loadMoreReview(reviewCount);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ChapterLoading value) chapterLoading,
    required TResult Function(EnrollCourse value) enrollCourse,
    required TResult Function(UnEnrollCourse value) unEnrollCourse,
    required TResult Function(AddReview value) addReview,
    required TResult Function(LoadReviews value) loadReviews,
    required TResult Function(LoadMoreReview value) loadMoreReview,
  }) {
    return loadMoreReview(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ChapterLoading value)? chapterLoading,
    TResult? Function(EnrollCourse value)? enrollCourse,
    TResult? Function(UnEnrollCourse value)? unEnrollCourse,
    TResult? Function(AddReview value)? addReview,
    TResult? Function(LoadReviews value)? loadReviews,
    TResult? Function(LoadMoreReview value)? loadMoreReview,
  }) {
    return loadMoreReview?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ChapterLoading value)? chapterLoading,
    TResult Function(EnrollCourse value)? enrollCourse,
    TResult Function(UnEnrollCourse value)? unEnrollCourse,
    TResult Function(AddReview value)? addReview,
    TResult Function(LoadReviews value)? loadReviews,
    TResult Function(LoadMoreReview value)? loadMoreReview,
    required TResult orElse(),
  }) {
    if (loadMoreReview != null) {
      return loadMoreReview(this);
    }
    return orElse();
  }
}

abstract class LoadMoreReview implements CourseDetailsEvent {
  const factory LoadMoreReview({required final int reviewCount}) =
      _$LoadMoreReview;

  int get reviewCount;
  @JsonKey(ignore: true)
  _$$LoadMoreReviewCopyWith<_$LoadMoreReview> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$CourseDetailsState {
  List<ChapterModel> get chapters => throw _privateConstructorUsedError;
  List<CourseReviewsModel> get reviews => throw _privateConstructorUsedError;
  bool get isReviewsLoading => throw _privateConstructorUsedError;
  bool get isEnrolled => throw _privateConstructorUsedError;
  bool get isLoading => throw _privateConstructorUsedError;
  bool get isError => throw _privateConstructorUsedError;
  bool get isAdded => throw _privateConstructorUsedError;
  bool get isRemoved => throw _privateConstructorUsedError;
  int get reviewCount => throw _privateConstructorUsedError;
  bool get newReviewAdded => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            List<ChapterModel> chapters,
            List<CourseReviewsModel> reviews,
            bool isReviewsLoading,
            bool isEnrolled,
            bool isLoading,
            bool isError,
            bool isAdded,
            bool isRemoved,
            int reviewCount,
            bool newReviewAdded)
        loading,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            List<ChapterModel> chapters,
            List<CourseReviewsModel> reviews,
            bool isReviewsLoading,
            bool isEnrolled,
            bool isLoading,
            bool isError,
            bool isAdded,
            bool isRemoved,
            int reviewCount,
            bool newReviewAdded)?
        loading,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            List<ChapterModel> chapters,
            List<CourseReviewsModel> reviews,
            bool isReviewsLoading,
            bool isEnrolled,
            bool isLoading,
            bool isError,
            bool isAdded,
            bool isRemoved,
            int reviewCount,
            bool newReviewAdded)?
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
  $CourseDetailsStateCopyWith<CourseDetailsState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CourseDetailsStateCopyWith<$Res> {
  factory $CourseDetailsStateCopyWith(
          CourseDetailsState value, $Res Function(CourseDetailsState) then) =
      _$CourseDetailsStateCopyWithImpl<$Res, CourseDetailsState>;
  @useResult
  $Res call(
      {List<ChapterModel> chapters,
      List<CourseReviewsModel> reviews,
      bool isReviewsLoading,
      bool isEnrolled,
      bool isLoading,
      bool isError,
      bool isAdded,
      bool isRemoved,
      int reviewCount,
      bool newReviewAdded});
}

/// @nodoc
class _$CourseDetailsStateCopyWithImpl<$Res, $Val extends CourseDetailsState>
    implements $CourseDetailsStateCopyWith<$Res> {
  _$CourseDetailsStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? chapters = null,
    Object? reviews = null,
    Object? isReviewsLoading = null,
    Object? isEnrolled = null,
    Object? isLoading = null,
    Object? isError = null,
    Object? isAdded = null,
    Object? isRemoved = null,
    Object? reviewCount = null,
    Object? newReviewAdded = null,
  }) {
    return _then(_value.copyWith(
      chapters: null == chapters
          ? _value.chapters
          : chapters // ignore: cast_nullable_to_non_nullable
              as List<ChapterModel>,
      reviews: null == reviews
          ? _value.reviews
          : reviews // ignore: cast_nullable_to_non_nullable
              as List<CourseReviewsModel>,
      isReviewsLoading: null == isReviewsLoading
          ? _value.isReviewsLoading
          : isReviewsLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      isEnrolled: null == isEnrolled
          ? _value.isEnrolled
          : isEnrolled // ignore: cast_nullable_to_non_nullable
              as bool,
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      isError: null == isError
          ? _value.isError
          : isError // ignore: cast_nullable_to_non_nullable
              as bool,
      isAdded: null == isAdded
          ? _value.isAdded
          : isAdded // ignore: cast_nullable_to_non_nullable
              as bool,
      isRemoved: null == isRemoved
          ? _value.isRemoved
          : isRemoved // ignore: cast_nullable_to_non_nullable
              as bool,
      reviewCount: null == reviewCount
          ? _value.reviewCount
          : reviewCount // ignore: cast_nullable_to_non_nullable
              as int,
      newReviewAdded: null == newReviewAdded
          ? _value.newReviewAdded
          : newReviewAdded // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$LoadingCopyWith<$Res>
    implements $CourseDetailsStateCopyWith<$Res> {
  factory _$$LoadingCopyWith(_$Loading value, $Res Function(_$Loading) then) =
      __$$LoadingCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {List<ChapterModel> chapters,
      List<CourseReviewsModel> reviews,
      bool isReviewsLoading,
      bool isEnrolled,
      bool isLoading,
      bool isError,
      bool isAdded,
      bool isRemoved,
      int reviewCount,
      bool newReviewAdded});
}

/// @nodoc
class __$$LoadingCopyWithImpl<$Res>
    extends _$CourseDetailsStateCopyWithImpl<$Res, _$Loading>
    implements _$$LoadingCopyWith<$Res> {
  __$$LoadingCopyWithImpl(_$Loading _value, $Res Function(_$Loading) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? chapters = null,
    Object? reviews = null,
    Object? isReviewsLoading = null,
    Object? isEnrolled = null,
    Object? isLoading = null,
    Object? isError = null,
    Object? isAdded = null,
    Object? isRemoved = null,
    Object? reviewCount = null,
    Object? newReviewAdded = null,
  }) {
    return _then(_$Loading(
      chapters: null == chapters
          ? _value._chapters
          : chapters // ignore: cast_nullable_to_non_nullable
              as List<ChapterModel>,
      reviews: null == reviews
          ? _value._reviews
          : reviews // ignore: cast_nullable_to_non_nullable
              as List<CourseReviewsModel>,
      isReviewsLoading: null == isReviewsLoading
          ? _value.isReviewsLoading
          : isReviewsLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      isEnrolled: null == isEnrolled
          ? _value.isEnrolled
          : isEnrolled // ignore: cast_nullable_to_non_nullable
              as bool,
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      isError: null == isError
          ? _value.isError
          : isError // ignore: cast_nullable_to_non_nullable
              as bool,
      isAdded: null == isAdded
          ? _value.isAdded
          : isAdded // ignore: cast_nullable_to_non_nullable
              as bool,
      isRemoved: null == isRemoved
          ? _value.isRemoved
          : isRemoved // ignore: cast_nullable_to_non_nullable
              as bool,
      reviewCount: null == reviewCount
          ? _value.reviewCount
          : reviewCount // ignore: cast_nullable_to_non_nullable
              as int,
      newReviewAdded: null == newReviewAdded
          ? _value.newReviewAdded
          : newReviewAdded // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$Loading implements Loading {
  const _$Loading(
      {required final List<ChapterModel> chapters,
      required final List<CourseReviewsModel> reviews,
      required this.isReviewsLoading,
      required this.isEnrolled,
      required this.isLoading,
      required this.isError,
      required this.isAdded,
      required this.isRemoved,
      required this.reviewCount,
      required this.newReviewAdded})
      : _chapters = chapters,
        _reviews = reviews;

  final List<ChapterModel> _chapters;
  @override
  List<ChapterModel> get chapters {
    if (_chapters is EqualUnmodifiableListView) return _chapters;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_chapters);
  }

  final List<CourseReviewsModel> _reviews;
  @override
  List<CourseReviewsModel> get reviews {
    if (_reviews is EqualUnmodifiableListView) return _reviews;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_reviews);
  }

  @override
  final bool isReviewsLoading;
  @override
  final bool isEnrolled;
  @override
  final bool isLoading;
  @override
  final bool isError;
  @override
  final bool isAdded;
  @override
  final bool isRemoved;
  @override
  final int reviewCount;
  @override
  final bool newReviewAdded;

  @override
  String toString() {
    return 'CourseDetailsState.loading(chapters: $chapters, reviews: $reviews, isReviewsLoading: $isReviewsLoading, isEnrolled: $isEnrolled, isLoading: $isLoading, isError: $isError, isAdded: $isAdded, isRemoved: $isRemoved, reviewCount: $reviewCount, newReviewAdded: $newReviewAdded)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$Loading &&
            const DeepCollectionEquality().equals(other._chapters, _chapters) &&
            const DeepCollectionEquality().equals(other._reviews, _reviews) &&
            (identical(other.isReviewsLoading, isReviewsLoading) ||
                other.isReviewsLoading == isReviewsLoading) &&
            (identical(other.isEnrolled, isEnrolled) ||
                other.isEnrolled == isEnrolled) &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            (identical(other.isError, isError) || other.isError == isError) &&
            (identical(other.isAdded, isAdded) || other.isAdded == isAdded) &&
            (identical(other.isRemoved, isRemoved) ||
                other.isRemoved == isRemoved) &&
            (identical(other.reviewCount, reviewCount) ||
                other.reviewCount == reviewCount) &&
            (identical(other.newReviewAdded, newReviewAdded) ||
                other.newReviewAdded == newReviewAdded));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_chapters),
      const DeepCollectionEquality().hash(_reviews),
      isReviewsLoading,
      isEnrolled,
      isLoading,
      isError,
      isAdded,
      isRemoved,
      reviewCount,
      newReviewAdded);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$LoadingCopyWith<_$Loading> get copyWith =>
      __$$LoadingCopyWithImpl<_$Loading>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            List<ChapterModel> chapters,
            List<CourseReviewsModel> reviews,
            bool isReviewsLoading,
            bool isEnrolled,
            bool isLoading,
            bool isError,
            bool isAdded,
            bool isRemoved,
            int reviewCount,
            bool newReviewAdded)
        loading,
  }) {
    return loading(chapters, reviews, isReviewsLoading, isEnrolled, isLoading,
        isError, isAdded, isRemoved, reviewCount, newReviewAdded);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            List<ChapterModel> chapters,
            List<CourseReviewsModel> reviews,
            bool isReviewsLoading,
            bool isEnrolled,
            bool isLoading,
            bool isError,
            bool isAdded,
            bool isRemoved,
            int reviewCount,
            bool newReviewAdded)?
        loading,
  }) {
    return loading?.call(chapters, reviews, isReviewsLoading, isEnrolled,
        isLoading, isError, isAdded, isRemoved, reviewCount, newReviewAdded);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            List<ChapterModel> chapters,
            List<CourseReviewsModel> reviews,
            bool isReviewsLoading,
            bool isEnrolled,
            bool isLoading,
            bool isError,
            bool isAdded,
            bool isRemoved,
            int reviewCount,
            bool newReviewAdded)?
        loading,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(chapters, reviews, isReviewsLoading, isEnrolled, isLoading,
          isError, isAdded, isRemoved, reviewCount, newReviewAdded);
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

abstract class Loading implements CourseDetailsState {
  const factory Loading(
      {required final List<ChapterModel> chapters,
      required final List<CourseReviewsModel> reviews,
      required final bool isReviewsLoading,
      required final bool isEnrolled,
      required final bool isLoading,
      required final bool isError,
      required final bool isAdded,
      required final bool isRemoved,
      required final int reviewCount,
      required final bool newReviewAdded}) = _$Loading;

  @override
  List<ChapterModel> get chapters;
  @override
  List<CourseReviewsModel> get reviews;
  @override
  bool get isReviewsLoading;
  @override
  bool get isEnrolled;
  @override
  bool get isLoading;
  @override
  bool get isError;
  @override
  bool get isAdded;
  @override
  bool get isRemoved;
  @override
  int get reviewCount;
  @override
  bool get newReviewAdded;
  @override
  @JsonKey(ignore: true)
  _$$LoadingCopyWith<_$Loading> get copyWith =>
      throw _privateConstructorUsedError;
}
