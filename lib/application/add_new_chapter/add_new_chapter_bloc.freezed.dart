// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'add_new_chapter_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$AddNewChapterEvent {
  CreateChapterModel? get createChapterModel =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(CreateChapterModel? createChapterModel) started,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(CreateChapterModel? createChapterModel)? started,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(CreateChapterModel? createChapterModel)? started,
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
  $AddNewChapterEventCopyWith<AddNewChapterEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AddNewChapterEventCopyWith<$Res> {
  factory $AddNewChapterEventCopyWith(
          AddNewChapterEvent value, $Res Function(AddNewChapterEvent) then) =
      _$AddNewChapterEventCopyWithImpl<$Res, AddNewChapterEvent>;
  @useResult
  $Res call({CreateChapterModel? createChapterModel});
}

/// @nodoc
class _$AddNewChapterEventCopyWithImpl<$Res, $Val extends AddNewChapterEvent>
    implements $AddNewChapterEventCopyWith<$Res> {
  _$AddNewChapterEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? createChapterModel = freezed,
  }) {
    return _then(_value.copyWith(
      createChapterModel: freezed == createChapterModel
          ? _value.createChapterModel
          : createChapterModel // ignore: cast_nullable_to_non_nullable
              as CreateChapterModel?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_StartedCopyWith<$Res>
    implements $AddNewChapterEventCopyWith<$Res> {
  factory _$$_StartedCopyWith(
          _$_Started value, $Res Function(_$_Started) then) =
      __$$_StartedCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({CreateChapterModel? createChapterModel});
}

/// @nodoc
class __$$_StartedCopyWithImpl<$Res>
    extends _$AddNewChapterEventCopyWithImpl<$Res, _$_Started>
    implements _$$_StartedCopyWith<$Res> {
  __$$_StartedCopyWithImpl(_$_Started _value, $Res Function(_$_Started) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? createChapterModel = freezed,
  }) {
    return _then(_$_Started(
      createChapterModel: freezed == createChapterModel
          ? _value.createChapterModel
          : createChapterModel // ignore: cast_nullable_to_non_nullable
              as CreateChapterModel?,
    ));
  }
}

/// @nodoc

class _$_Started implements _Started {
  const _$_Started({required this.createChapterModel});

  @override
  final CreateChapterModel? createChapterModel;

  @override
  String toString() {
    return 'AddNewChapterEvent.started(createChapterModel: $createChapterModel)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Started &&
            (identical(other.createChapterModel, createChapterModel) ||
                other.createChapterModel == createChapterModel));
  }

  @override
  int get hashCode => Object.hash(runtimeType, createChapterModel);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_StartedCopyWith<_$_Started> get copyWith =>
      __$$_StartedCopyWithImpl<_$_Started>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(CreateChapterModel? createChapterModel) started,
  }) {
    return started(createChapterModel);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(CreateChapterModel? createChapterModel)? started,
  }) {
    return started?.call(createChapterModel);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(CreateChapterModel? createChapterModel)? started,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started(createChapterModel);
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

abstract class _Started implements AddNewChapterEvent {
  const factory _Started(
      {required final CreateChapterModel? createChapterModel}) = _$_Started;

  @override
  CreateChapterModel? get createChapterModel;
  @override
  @JsonKey(ignore: true)
  _$$_StartedCopyWith<_$_Started> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$AddNewChapterState {
  bool get isLoading => throw _privateConstructorUsedError;
  bool get isError => throw _privateConstructorUsedError;
  bool get isLoaded => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(bool isLoading, bool isError, bool isLoaded)
        started,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(bool isLoading, bool isError, bool isLoaded)? started,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(bool isLoading, bool isError, bool isLoaded)? started,
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
  $AddNewChapterStateCopyWith<AddNewChapterState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AddNewChapterStateCopyWith<$Res> {
  factory $AddNewChapterStateCopyWith(
          AddNewChapterState value, $Res Function(AddNewChapterState) then) =
      _$AddNewChapterStateCopyWithImpl<$Res, AddNewChapterState>;
  @useResult
  $Res call({bool isLoading, bool isError, bool isLoaded});
}

/// @nodoc
class _$AddNewChapterStateCopyWithImpl<$Res, $Val extends AddNewChapterState>
    implements $AddNewChapterStateCopyWith<$Res> {
  _$AddNewChapterStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
    Object? isError = null,
    Object? isLoaded = null,
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
      isLoaded: null == isLoaded
          ? _value.isLoaded
          : isLoaded // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$StartedCopyWith<$Res>
    implements $AddNewChapterStateCopyWith<$Res> {
  factory _$$StartedCopyWith(_$Started value, $Res Function(_$Started) then) =
      __$$StartedCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({bool isLoading, bool isError, bool isLoaded});
}

/// @nodoc
class __$$StartedCopyWithImpl<$Res>
    extends _$AddNewChapterStateCopyWithImpl<$Res, _$Started>
    implements _$$StartedCopyWith<$Res> {
  __$$StartedCopyWithImpl(_$Started _value, $Res Function(_$Started) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
    Object? isError = null,
    Object? isLoaded = null,
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
      isLoaded: null == isLoaded
          ? _value.isLoaded
          : isLoaded // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$Started implements Started {
  const _$Started(
      {required this.isLoading, required this.isError, required this.isLoaded});

  @override
  final bool isLoading;
  @override
  final bool isError;
  @override
  final bool isLoaded;

  @override
  String toString() {
    return 'AddNewChapterState.started(isLoading: $isLoading, isError: $isError, isLoaded: $isLoaded)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$Started &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            (identical(other.isError, isError) || other.isError == isError) &&
            (identical(other.isLoaded, isLoaded) ||
                other.isLoaded == isLoaded));
  }

  @override
  int get hashCode => Object.hash(runtimeType, isLoading, isError, isLoaded);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$StartedCopyWith<_$Started> get copyWith =>
      __$$StartedCopyWithImpl<_$Started>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(bool isLoading, bool isError, bool isLoaded)
        started,
  }) {
    return started(isLoading, isError, isLoaded);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(bool isLoading, bool isError, bool isLoaded)? started,
  }) {
    return started?.call(isLoading, isError, isLoaded);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(bool isLoading, bool isError, bool isLoaded)? started,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started(isLoading, isError, isLoaded);
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

abstract class Started implements AddNewChapterState {
  const factory Started(
      {required final bool isLoading,
      required final bool isError,
      required final bool isLoaded}) = _$Started;

  @override
  bool get isLoading;
  @override
  bool get isError;
  @override
  bool get isLoaded;
  @override
  @JsonKey(ignore: true)
  _$$StartedCopyWith<_$Started> get copyWith =>
      throw _privateConstructorUsedError;
}
