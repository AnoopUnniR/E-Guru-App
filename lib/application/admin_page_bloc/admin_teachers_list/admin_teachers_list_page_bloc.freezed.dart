// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'admin_teachers_list_page_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$AdminTeachersListPageEvent {
  List<UserTeacherModel> get teachersList => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<UserTeacherModel> teachersList) started,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<UserTeacherModel> teachersList)? started,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<UserTeacherModel> teachersList)? started,
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
  $AdminTeachersListPageEventCopyWith<AdminTeachersListPageEvent>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AdminTeachersListPageEventCopyWith<$Res> {
  factory $AdminTeachersListPageEventCopyWith(AdminTeachersListPageEvent value,
          $Res Function(AdminTeachersListPageEvent) then) =
      _$AdminTeachersListPageEventCopyWithImpl<$Res,
          AdminTeachersListPageEvent>;
  @useResult
  $Res call({List<UserTeacherModel> teachersList});
}

/// @nodoc
class _$AdminTeachersListPageEventCopyWithImpl<$Res,
        $Val extends AdminTeachersListPageEvent>
    implements $AdminTeachersListPageEventCopyWith<$Res> {
  _$AdminTeachersListPageEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? teachersList = null,
  }) {
    return _then(_value.copyWith(
      teachersList: null == teachersList
          ? _value.teachersList
          : teachersList // ignore: cast_nullable_to_non_nullable
              as List<UserTeacherModel>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_StartedCopyWith<$Res>
    implements $AdminTeachersListPageEventCopyWith<$Res> {
  factory _$$_StartedCopyWith(
          _$_Started value, $Res Function(_$_Started) then) =
      __$$_StartedCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<UserTeacherModel> teachersList});
}

/// @nodoc
class __$$_StartedCopyWithImpl<$Res>
    extends _$AdminTeachersListPageEventCopyWithImpl<$Res, _$_Started>
    implements _$$_StartedCopyWith<$Res> {
  __$$_StartedCopyWithImpl(_$_Started _value, $Res Function(_$_Started) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? teachersList = null,
  }) {
    return _then(_$_Started(
      teachersList: null == teachersList
          ? _value._teachersList
          : teachersList // ignore: cast_nullable_to_non_nullable
              as List<UserTeacherModel>,
    ));
  }
}

/// @nodoc

class _$_Started implements _Started {
  const _$_Started({required final List<UserTeacherModel> teachersList})
      : _teachersList = teachersList;

  final List<UserTeacherModel> _teachersList;
  @override
  List<UserTeacherModel> get teachersList {
    if (_teachersList is EqualUnmodifiableListView) return _teachersList;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_teachersList);
  }

  @override
  String toString() {
    return 'AdminTeachersListPageEvent.started(teachersList: $teachersList)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Started &&
            const DeepCollectionEquality()
                .equals(other._teachersList, _teachersList));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_teachersList));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_StartedCopyWith<_$_Started> get copyWith =>
      __$$_StartedCopyWithImpl<_$_Started>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<UserTeacherModel> teachersList) started,
  }) {
    return started(teachersList);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<UserTeacherModel> teachersList)? started,
  }) {
    return started?.call(teachersList);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<UserTeacherModel> teachersList)? started,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started(teachersList);
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

abstract class _Started implements AdminTeachersListPageEvent {
  const factory _Started({required final List<UserTeacherModel> teachersList}) =
      _$_Started;

  @override
  List<UserTeacherModel> get teachersList;
  @override
  @JsonKey(ignore: true)
  _$$_StartedCopyWith<_$_Started> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$AdminTeachersListPageState {
  List<UserTeacherModel> get teacherList => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<UserTeacherModel> teacherList) started,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<UserTeacherModel> teacherList)? started,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<UserTeacherModel> teacherList)? started,
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
  $AdminTeachersListPageStateCopyWith<AdminTeachersListPageState>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AdminTeachersListPageStateCopyWith<$Res> {
  factory $AdminTeachersListPageStateCopyWith(AdminTeachersListPageState value,
          $Res Function(AdminTeachersListPageState) then) =
      _$AdminTeachersListPageStateCopyWithImpl<$Res,
          AdminTeachersListPageState>;
  @useResult
  $Res call({List<UserTeacherModel> teacherList});
}

/// @nodoc
class _$AdminTeachersListPageStateCopyWithImpl<$Res,
        $Val extends AdminTeachersListPageState>
    implements $AdminTeachersListPageStateCopyWith<$Res> {
  _$AdminTeachersListPageStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? teacherList = null,
  }) {
    return _then(_value.copyWith(
      teacherList: null == teacherList
          ? _value.teacherList
          : teacherList // ignore: cast_nullable_to_non_nullable
              as List<UserTeacherModel>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$StartedCopyWith<$Res>
    implements $AdminTeachersListPageStateCopyWith<$Res> {
  factory _$$StartedCopyWith(_$Started value, $Res Function(_$Started) then) =
      __$$StartedCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<UserTeacherModel> teacherList});
}

/// @nodoc
class __$$StartedCopyWithImpl<$Res>
    extends _$AdminTeachersListPageStateCopyWithImpl<$Res, _$Started>
    implements _$$StartedCopyWith<$Res> {
  __$$StartedCopyWithImpl(_$Started _value, $Res Function(_$Started) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? teacherList = null,
  }) {
    return _then(_$Started(
      teacherList: null == teacherList
          ? _value._teacherList
          : teacherList // ignore: cast_nullable_to_non_nullable
              as List<UserTeacherModel>,
    ));
  }
}

/// @nodoc

class _$Started implements Started {
  const _$Started({required final List<UserTeacherModel> teacherList})
      : _teacherList = teacherList;

  final List<UserTeacherModel> _teacherList;
  @override
  List<UserTeacherModel> get teacherList {
    if (_teacherList is EqualUnmodifiableListView) return _teacherList;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_teacherList);
  }

  @override
  String toString() {
    return 'AdminTeachersListPageState.started(teacherList: $teacherList)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$Started &&
            const DeepCollectionEquality()
                .equals(other._teacherList, _teacherList));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_teacherList));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$StartedCopyWith<_$Started> get copyWith =>
      __$$StartedCopyWithImpl<_$Started>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<UserTeacherModel> teacherList) started,
  }) {
    return started(teacherList);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<UserTeacherModel> teacherList)? started,
  }) {
    return started?.call(teacherList);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<UserTeacherModel> teacherList)? started,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started(teacherList);
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

abstract class Started implements AdminTeachersListPageState {
  const factory Started({required final List<UserTeacherModel> teacherList}) =
      _$Started;

  @override
  List<UserTeacherModel> get teacherList;
  @override
  @JsonKey(ignore: true)
  _$$StartedCopyWith<_$Started> get copyWith =>
      throw _privateConstructorUsedError;
}
