// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'admin_teacher_details_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$AdminTeacherDetailsEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(UserTeacherModel teacher) started,
    required TResult Function(int teacherId) verified,
    required TResult Function(int teacherId) reject,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(UserTeacherModel teacher)? started,
    TResult? Function(int teacherId)? verified,
    TResult? Function(int teacherId)? reject,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(UserTeacherModel teacher)? started,
    TResult Function(int teacherId)? verified,
    TResult Function(int teacherId)? reject,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(Verified value) verified,
    required TResult Function(Reject value) reject,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(Verified value)? verified,
    TResult? Function(Reject value)? reject,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(Verified value)? verified,
    TResult Function(Reject value)? reject,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AdminTeacherDetailsEventCopyWith<$Res> {
  factory $AdminTeacherDetailsEventCopyWith(AdminTeacherDetailsEvent value,
          $Res Function(AdminTeacherDetailsEvent) then) =
      _$AdminTeacherDetailsEventCopyWithImpl<$Res, AdminTeacherDetailsEvent>;
}

/// @nodoc
class _$AdminTeacherDetailsEventCopyWithImpl<$Res,
        $Val extends AdminTeacherDetailsEvent>
    implements $AdminTeacherDetailsEventCopyWith<$Res> {
  _$AdminTeacherDetailsEventCopyWithImpl(this._value, this._then);

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
  $Res call({UserTeacherModel teacher});
}

/// @nodoc
class __$$_StartedCopyWithImpl<$Res>
    extends _$AdminTeacherDetailsEventCopyWithImpl<$Res, _$_Started>
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
    return 'AdminTeacherDetailsEvent.started(teacher: $teacher)';
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
    required TResult Function(int teacherId) verified,
    required TResult Function(int teacherId) reject,
  }) {
    return started(teacher);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(UserTeacherModel teacher)? started,
    TResult? Function(int teacherId)? verified,
    TResult? Function(int teacherId)? reject,
  }) {
    return started?.call(teacher);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(UserTeacherModel teacher)? started,
    TResult Function(int teacherId)? verified,
    TResult Function(int teacherId)? reject,
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
    required TResult Function(Verified value) verified,
    required TResult Function(Reject value) reject,
  }) {
    return started(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(Verified value)? verified,
    TResult? Function(Reject value)? reject,
  }) {
    return started?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(Verified value)? verified,
    TResult Function(Reject value)? reject,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started(this);
    }
    return orElse();
  }
}

abstract class _Started implements AdminTeacherDetailsEvent {
  const factory _Started({required final UserTeacherModel teacher}) =
      _$_Started;

  UserTeacherModel get teacher;
  @JsonKey(ignore: true)
  _$$_StartedCopyWith<_$_Started> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$VerifiedCopyWith<$Res> {
  factory _$$VerifiedCopyWith(
          _$Verified value, $Res Function(_$Verified) then) =
      __$$VerifiedCopyWithImpl<$Res>;
  @useResult
  $Res call({int teacherId});
}

/// @nodoc
class __$$VerifiedCopyWithImpl<$Res>
    extends _$AdminTeacherDetailsEventCopyWithImpl<$Res, _$Verified>
    implements _$$VerifiedCopyWith<$Res> {
  __$$VerifiedCopyWithImpl(_$Verified _value, $Res Function(_$Verified) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? teacherId = null,
  }) {
    return _then(_$Verified(
      teacherId: null == teacherId
          ? _value.teacherId
          : teacherId // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$Verified implements Verified {
  const _$Verified({required this.teacherId});

  @override
  final int teacherId;

  @override
  String toString() {
    return 'AdminTeacherDetailsEvent.verified(teacherId: $teacherId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$Verified &&
            (identical(other.teacherId, teacherId) ||
                other.teacherId == teacherId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, teacherId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$VerifiedCopyWith<_$Verified> get copyWith =>
      __$$VerifiedCopyWithImpl<_$Verified>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(UserTeacherModel teacher) started,
    required TResult Function(int teacherId) verified,
    required TResult Function(int teacherId) reject,
  }) {
    return verified(teacherId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(UserTeacherModel teacher)? started,
    TResult? Function(int teacherId)? verified,
    TResult? Function(int teacherId)? reject,
  }) {
    return verified?.call(teacherId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(UserTeacherModel teacher)? started,
    TResult Function(int teacherId)? verified,
    TResult Function(int teacherId)? reject,
    required TResult orElse(),
  }) {
    if (verified != null) {
      return verified(teacherId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(Verified value) verified,
    required TResult Function(Reject value) reject,
  }) {
    return verified(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(Verified value)? verified,
    TResult? Function(Reject value)? reject,
  }) {
    return verified?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(Verified value)? verified,
    TResult Function(Reject value)? reject,
    required TResult orElse(),
  }) {
    if (verified != null) {
      return verified(this);
    }
    return orElse();
  }
}

abstract class Verified implements AdminTeacherDetailsEvent {
  const factory Verified({required final int teacherId}) = _$Verified;

  int get teacherId;
  @JsonKey(ignore: true)
  _$$VerifiedCopyWith<_$Verified> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$RejectCopyWith<$Res> {
  factory _$$RejectCopyWith(_$Reject value, $Res Function(_$Reject) then) =
      __$$RejectCopyWithImpl<$Res>;
  @useResult
  $Res call({int teacherId});
}

/// @nodoc
class __$$RejectCopyWithImpl<$Res>
    extends _$AdminTeacherDetailsEventCopyWithImpl<$Res, _$Reject>
    implements _$$RejectCopyWith<$Res> {
  __$$RejectCopyWithImpl(_$Reject _value, $Res Function(_$Reject) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? teacherId = null,
  }) {
    return _then(_$Reject(
      teacherId: null == teacherId
          ? _value.teacherId
          : teacherId // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$Reject implements Reject {
  const _$Reject({required this.teacherId});

  @override
  final int teacherId;

  @override
  String toString() {
    return 'AdminTeacherDetailsEvent.reject(teacherId: $teacherId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$Reject &&
            (identical(other.teacherId, teacherId) ||
                other.teacherId == teacherId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, teacherId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$RejectCopyWith<_$Reject> get copyWith =>
      __$$RejectCopyWithImpl<_$Reject>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(UserTeacherModel teacher) started,
    required TResult Function(int teacherId) verified,
    required TResult Function(int teacherId) reject,
  }) {
    return reject(teacherId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(UserTeacherModel teacher)? started,
    TResult? Function(int teacherId)? verified,
    TResult? Function(int teacherId)? reject,
  }) {
    return reject?.call(teacherId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(UserTeacherModel teacher)? started,
    TResult Function(int teacherId)? verified,
    TResult Function(int teacherId)? reject,
    required TResult orElse(),
  }) {
    if (reject != null) {
      return reject(teacherId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(Verified value) verified,
    required TResult Function(Reject value) reject,
  }) {
    return reject(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(Verified value)? verified,
    TResult? Function(Reject value)? reject,
  }) {
    return reject?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(Verified value)? verified,
    TResult Function(Reject value)? reject,
    required TResult orElse(),
  }) {
    if (reject != null) {
      return reject(this);
    }
    return orElse();
  }
}

abstract class Reject implements AdminTeacherDetailsEvent {
  const factory Reject({required final int teacherId}) = _$Reject;

  int get teacherId;
  @JsonKey(ignore: true)
  _$$RejectCopyWith<_$Reject> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$AdminTeacherDetailsState {
  UserTeacherModel? get teacher => throw _privateConstructorUsedError;
  bool get isVerified => throw _privateConstructorUsedError;
  bool get isRejected => throw _privateConstructorUsedError;
  bool get isError => throw _privateConstructorUsedError;
  bool get isVerifyLoading => throw _privateConstructorUsedError;
  bool get isRejectLoading => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            UserTeacherModel? teacher,
            bool isVerified,
            bool isRejected,
            bool isError,
            bool isVerifyLoading,
            bool isRejectLoading)
        loaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            UserTeacherModel? teacher,
            bool isVerified,
            bool isRejected,
            bool isError,
            bool isVerifyLoading,
            bool isRejectLoading)?
        loaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            UserTeacherModel? teacher,
            bool isVerified,
            bool isRejected,
            bool isError,
            bool isVerifyLoading,
            bool isRejectLoading)?
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
  $AdminTeacherDetailsStateCopyWith<AdminTeacherDetailsState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AdminTeacherDetailsStateCopyWith<$Res> {
  factory $AdminTeacherDetailsStateCopyWith(AdminTeacherDetailsState value,
          $Res Function(AdminTeacherDetailsState) then) =
      _$AdminTeacherDetailsStateCopyWithImpl<$Res, AdminTeacherDetailsState>;
  @useResult
  $Res call(
      {UserTeacherModel? teacher,
      bool isVerified,
      bool isRejected,
      bool isError,
      bool isVerifyLoading,
      bool isRejectLoading});
}

/// @nodoc
class _$AdminTeacherDetailsStateCopyWithImpl<$Res,
        $Val extends AdminTeacherDetailsState>
    implements $AdminTeacherDetailsStateCopyWith<$Res> {
  _$AdminTeacherDetailsStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? teacher = freezed,
    Object? isVerified = null,
    Object? isRejected = null,
    Object? isError = null,
    Object? isVerifyLoading = null,
    Object? isRejectLoading = null,
  }) {
    return _then(_value.copyWith(
      teacher: freezed == teacher
          ? _value.teacher
          : teacher // ignore: cast_nullable_to_non_nullable
              as UserTeacherModel?,
      isVerified: null == isVerified
          ? _value.isVerified
          : isVerified // ignore: cast_nullable_to_non_nullable
              as bool,
      isRejected: null == isRejected
          ? _value.isRejected
          : isRejected // ignore: cast_nullable_to_non_nullable
              as bool,
      isError: null == isError
          ? _value.isError
          : isError // ignore: cast_nullable_to_non_nullable
              as bool,
      isVerifyLoading: null == isVerifyLoading
          ? _value.isVerifyLoading
          : isVerifyLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      isRejectLoading: null == isRejectLoading
          ? _value.isRejectLoading
          : isRejectLoading // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$LoadedCopyWith<$Res>
    implements $AdminTeacherDetailsStateCopyWith<$Res> {
  factory _$$LoadedCopyWith(_$Loaded value, $Res Function(_$Loaded) then) =
      __$$LoadedCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {UserTeacherModel? teacher,
      bool isVerified,
      bool isRejected,
      bool isError,
      bool isVerifyLoading,
      bool isRejectLoading});
}

/// @nodoc
class __$$LoadedCopyWithImpl<$Res>
    extends _$AdminTeacherDetailsStateCopyWithImpl<$Res, _$Loaded>
    implements _$$LoadedCopyWith<$Res> {
  __$$LoadedCopyWithImpl(_$Loaded _value, $Res Function(_$Loaded) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? teacher = freezed,
    Object? isVerified = null,
    Object? isRejected = null,
    Object? isError = null,
    Object? isVerifyLoading = null,
    Object? isRejectLoading = null,
  }) {
    return _then(_$Loaded(
      teacher: freezed == teacher
          ? _value.teacher
          : teacher // ignore: cast_nullable_to_non_nullable
              as UserTeacherModel?,
      isVerified: null == isVerified
          ? _value.isVerified
          : isVerified // ignore: cast_nullable_to_non_nullable
              as bool,
      isRejected: null == isRejected
          ? _value.isRejected
          : isRejected // ignore: cast_nullable_to_non_nullable
              as bool,
      isError: null == isError
          ? _value.isError
          : isError // ignore: cast_nullable_to_non_nullable
              as bool,
      isVerifyLoading: null == isVerifyLoading
          ? _value.isVerifyLoading
          : isVerifyLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      isRejectLoading: null == isRejectLoading
          ? _value.isRejectLoading
          : isRejectLoading // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$Loaded implements Loaded {
  const _$Loaded(
      {required this.teacher,
      required this.isVerified,
      required this.isRejected,
      required this.isError,
      required this.isVerifyLoading,
      required this.isRejectLoading});

  @override
  final UserTeacherModel? teacher;
  @override
  final bool isVerified;
  @override
  final bool isRejected;
  @override
  final bool isError;
  @override
  final bool isVerifyLoading;
  @override
  final bool isRejectLoading;

  @override
  String toString() {
    return 'AdminTeacherDetailsState.loaded(teacher: $teacher, isVerified: $isVerified, isRejected: $isRejected, isError: $isError, isVerifyLoading: $isVerifyLoading, isRejectLoading: $isRejectLoading)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$Loaded &&
            (identical(other.teacher, teacher) || other.teacher == teacher) &&
            (identical(other.isVerified, isVerified) ||
                other.isVerified == isVerified) &&
            (identical(other.isRejected, isRejected) ||
                other.isRejected == isRejected) &&
            (identical(other.isError, isError) || other.isError == isError) &&
            (identical(other.isVerifyLoading, isVerifyLoading) ||
                other.isVerifyLoading == isVerifyLoading) &&
            (identical(other.isRejectLoading, isRejectLoading) ||
                other.isRejectLoading == isRejectLoading));
  }

  @override
  int get hashCode => Object.hash(runtimeType, teacher, isVerified, isRejected,
      isError, isVerifyLoading, isRejectLoading);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$LoadedCopyWith<_$Loaded> get copyWith =>
      __$$LoadedCopyWithImpl<_$Loaded>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            UserTeacherModel? teacher,
            bool isVerified,
            bool isRejected,
            bool isError,
            bool isVerifyLoading,
            bool isRejectLoading)
        loaded,
  }) {
    return loaded(teacher, isVerified, isRejected, isError, isVerifyLoading,
        isRejectLoading);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            UserTeacherModel? teacher,
            bool isVerified,
            bool isRejected,
            bool isError,
            bool isVerifyLoading,
            bool isRejectLoading)?
        loaded,
  }) {
    return loaded?.call(teacher, isVerified, isRejected, isError,
        isVerifyLoading, isRejectLoading);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            UserTeacherModel? teacher,
            bool isVerified,
            bool isRejected,
            bool isError,
            bool isVerifyLoading,
            bool isRejectLoading)?
        loaded,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(teacher, isVerified, isRejected, isError, isVerifyLoading,
          isRejectLoading);
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

abstract class Loaded implements AdminTeacherDetailsState {
  const factory Loaded(
      {required final UserTeacherModel? teacher,
      required final bool isVerified,
      required final bool isRejected,
      required final bool isError,
      required final bool isVerifyLoading,
      required final bool isRejectLoading}) = _$Loaded;

  @override
  UserTeacherModel? get teacher;
  @override
  bool get isVerified;
  @override
  bool get isRejected;
  @override
  bool get isError;
  @override
  bool get isVerifyLoading;
  @override
  bool get isRejectLoading;
  @override
  @JsonKey(ignore: true)
  _$$LoadedCopyWith<_$Loaded> get copyWith =>
      throw _privateConstructorUsedError;
}
