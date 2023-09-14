// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'admin_course_category_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$AdminCourseCategoryEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<CategoryModel> catagoryList) started,
    required TResult Function(int catagoryId) delete,
    required TResult Function() reload,
    required TResult Function(String catagoryName) create,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<CategoryModel> catagoryList)? started,
    TResult? Function(int catagoryId)? delete,
    TResult? Function()? reload,
    TResult? Function(String catagoryName)? create,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<CategoryModel> catagoryList)? started,
    TResult Function(int catagoryId)? delete,
    TResult Function()? reload,
    TResult Function(String catagoryName)? create,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(Delete value) delete,
    required TResult Function(Reload value) reload,
    required TResult Function(Create value) create,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(Delete value)? delete,
    TResult? Function(Reload value)? reload,
    TResult? Function(Create value)? create,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(Delete value)? delete,
    TResult Function(Reload value)? reload,
    TResult Function(Create value)? create,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AdminCourseCategoryEventCopyWith<$Res> {
  factory $AdminCourseCategoryEventCopyWith(AdminCourseCategoryEvent value,
          $Res Function(AdminCourseCategoryEvent) then) =
      _$AdminCourseCategoryEventCopyWithImpl<$Res, AdminCourseCategoryEvent>;
}

/// @nodoc
class _$AdminCourseCategoryEventCopyWithImpl<$Res,
        $Val extends AdminCourseCategoryEvent>
    implements $AdminCourseCategoryEventCopyWith<$Res> {
  _$AdminCourseCategoryEventCopyWithImpl(this._value, this._then);

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
  $Res call({List<CategoryModel> catagoryList});
}

/// @nodoc
class __$$_StartedCopyWithImpl<$Res>
    extends _$AdminCourseCategoryEventCopyWithImpl<$Res, _$_Started>
    implements _$$_StartedCopyWith<$Res> {
  __$$_StartedCopyWithImpl(_$_Started _value, $Res Function(_$_Started) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? catagoryList = null,
  }) {
    return _then(_$_Started(
      catagoryList: null == catagoryList
          ? _value._catagoryList
          : catagoryList // ignore: cast_nullable_to_non_nullable
              as List<CategoryModel>,
    ));
  }
}

/// @nodoc

class _$_Started implements _Started {
  const _$_Started({required final List<CategoryModel> catagoryList})
      : _catagoryList = catagoryList;

  final List<CategoryModel> _catagoryList;
  @override
  List<CategoryModel> get catagoryList {
    if (_catagoryList is EqualUnmodifiableListView) return _catagoryList;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_catagoryList);
  }

  @override
  String toString() {
    return 'AdminCourseCategoryEvent.started(catagoryList: $catagoryList)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Started &&
            const DeepCollectionEquality()
                .equals(other._catagoryList, _catagoryList));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_catagoryList));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_StartedCopyWith<_$_Started> get copyWith =>
      __$$_StartedCopyWithImpl<_$_Started>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<CategoryModel> catagoryList) started,
    required TResult Function(int catagoryId) delete,
    required TResult Function() reload,
    required TResult Function(String catagoryName) create,
  }) {
    return started(catagoryList);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<CategoryModel> catagoryList)? started,
    TResult? Function(int catagoryId)? delete,
    TResult? Function()? reload,
    TResult? Function(String catagoryName)? create,
  }) {
    return started?.call(catagoryList);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<CategoryModel> catagoryList)? started,
    TResult Function(int catagoryId)? delete,
    TResult Function()? reload,
    TResult Function(String catagoryName)? create,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started(catagoryList);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(Delete value) delete,
    required TResult Function(Reload value) reload,
    required TResult Function(Create value) create,
  }) {
    return started(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(Delete value)? delete,
    TResult? Function(Reload value)? reload,
    TResult? Function(Create value)? create,
  }) {
    return started?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(Delete value)? delete,
    TResult Function(Reload value)? reload,
    TResult Function(Create value)? create,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started(this);
    }
    return orElse();
  }
}

abstract class _Started implements AdminCourseCategoryEvent {
  const factory _Started({required final List<CategoryModel> catagoryList}) =
      _$_Started;

  List<CategoryModel> get catagoryList;
  @JsonKey(ignore: true)
  _$$_StartedCopyWith<_$_Started> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$DeleteCopyWith<$Res> {
  factory _$$DeleteCopyWith(_$Delete value, $Res Function(_$Delete) then) =
      __$$DeleteCopyWithImpl<$Res>;
  @useResult
  $Res call({int catagoryId});
}

/// @nodoc
class __$$DeleteCopyWithImpl<$Res>
    extends _$AdminCourseCategoryEventCopyWithImpl<$Res, _$Delete>
    implements _$$DeleteCopyWith<$Res> {
  __$$DeleteCopyWithImpl(_$Delete _value, $Res Function(_$Delete) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? catagoryId = null,
  }) {
    return _then(_$Delete(
      catagoryId: null == catagoryId
          ? _value.catagoryId
          : catagoryId // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$Delete implements Delete {
  const _$Delete({required this.catagoryId});

  @override
  final int catagoryId;

  @override
  String toString() {
    return 'AdminCourseCategoryEvent.delete(catagoryId: $catagoryId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$Delete &&
            (identical(other.catagoryId, catagoryId) ||
                other.catagoryId == catagoryId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, catagoryId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DeleteCopyWith<_$Delete> get copyWith =>
      __$$DeleteCopyWithImpl<_$Delete>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<CategoryModel> catagoryList) started,
    required TResult Function(int catagoryId) delete,
    required TResult Function() reload,
    required TResult Function(String catagoryName) create,
  }) {
    return delete(catagoryId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<CategoryModel> catagoryList)? started,
    TResult? Function(int catagoryId)? delete,
    TResult? Function()? reload,
    TResult? Function(String catagoryName)? create,
  }) {
    return delete?.call(catagoryId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<CategoryModel> catagoryList)? started,
    TResult Function(int catagoryId)? delete,
    TResult Function()? reload,
    TResult Function(String catagoryName)? create,
    required TResult orElse(),
  }) {
    if (delete != null) {
      return delete(catagoryId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(Delete value) delete,
    required TResult Function(Reload value) reload,
    required TResult Function(Create value) create,
  }) {
    return delete(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(Delete value)? delete,
    TResult? Function(Reload value)? reload,
    TResult? Function(Create value)? create,
  }) {
    return delete?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(Delete value)? delete,
    TResult Function(Reload value)? reload,
    TResult Function(Create value)? create,
    required TResult orElse(),
  }) {
    if (delete != null) {
      return delete(this);
    }
    return orElse();
  }
}

abstract class Delete implements AdminCourseCategoryEvent {
  const factory Delete({required final int catagoryId}) = _$Delete;

  int get catagoryId;
  @JsonKey(ignore: true)
  _$$DeleteCopyWith<_$Delete> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ReloadCopyWith<$Res> {
  factory _$$ReloadCopyWith(_$Reload value, $Res Function(_$Reload) then) =
      __$$ReloadCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ReloadCopyWithImpl<$Res>
    extends _$AdminCourseCategoryEventCopyWithImpl<$Res, _$Reload>
    implements _$$ReloadCopyWith<$Res> {
  __$$ReloadCopyWithImpl(_$Reload _value, $Res Function(_$Reload) _then)
      : super(_value, _then);
}

/// @nodoc

class _$Reload implements Reload {
  const _$Reload();

  @override
  String toString() {
    return 'AdminCourseCategoryEvent.reload()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$Reload);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<CategoryModel> catagoryList) started,
    required TResult Function(int catagoryId) delete,
    required TResult Function() reload,
    required TResult Function(String catagoryName) create,
  }) {
    return reload();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<CategoryModel> catagoryList)? started,
    TResult? Function(int catagoryId)? delete,
    TResult? Function()? reload,
    TResult? Function(String catagoryName)? create,
  }) {
    return reload?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<CategoryModel> catagoryList)? started,
    TResult Function(int catagoryId)? delete,
    TResult Function()? reload,
    TResult Function(String catagoryName)? create,
    required TResult orElse(),
  }) {
    if (reload != null) {
      return reload();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(Delete value) delete,
    required TResult Function(Reload value) reload,
    required TResult Function(Create value) create,
  }) {
    return reload(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(Delete value)? delete,
    TResult? Function(Reload value)? reload,
    TResult? Function(Create value)? create,
  }) {
    return reload?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(Delete value)? delete,
    TResult Function(Reload value)? reload,
    TResult Function(Create value)? create,
    required TResult orElse(),
  }) {
    if (reload != null) {
      return reload(this);
    }
    return orElse();
  }
}

abstract class Reload implements AdminCourseCategoryEvent {
  const factory Reload() = _$Reload;
}

/// @nodoc
abstract class _$$CreateCopyWith<$Res> {
  factory _$$CreateCopyWith(_$Create value, $Res Function(_$Create) then) =
      __$$CreateCopyWithImpl<$Res>;
  @useResult
  $Res call({String catagoryName});
}

/// @nodoc
class __$$CreateCopyWithImpl<$Res>
    extends _$AdminCourseCategoryEventCopyWithImpl<$Res, _$Create>
    implements _$$CreateCopyWith<$Res> {
  __$$CreateCopyWithImpl(_$Create _value, $Res Function(_$Create) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? catagoryName = null,
  }) {
    return _then(_$Create(
      catagoryName: null == catagoryName
          ? _value.catagoryName
          : catagoryName // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$Create implements Create {
  const _$Create({required this.catagoryName});

  @override
  final String catagoryName;

  @override
  String toString() {
    return 'AdminCourseCategoryEvent.create(catagoryName: $catagoryName)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$Create &&
            (identical(other.catagoryName, catagoryName) ||
                other.catagoryName == catagoryName));
  }

  @override
  int get hashCode => Object.hash(runtimeType, catagoryName);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CreateCopyWith<_$Create> get copyWith =>
      __$$CreateCopyWithImpl<_$Create>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<CategoryModel> catagoryList) started,
    required TResult Function(int catagoryId) delete,
    required TResult Function() reload,
    required TResult Function(String catagoryName) create,
  }) {
    return create(catagoryName);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<CategoryModel> catagoryList)? started,
    TResult? Function(int catagoryId)? delete,
    TResult? Function()? reload,
    TResult? Function(String catagoryName)? create,
  }) {
    return create?.call(catagoryName);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<CategoryModel> catagoryList)? started,
    TResult Function(int catagoryId)? delete,
    TResult Function()? reload,
    TResult Function(String catagoryName)? create,
    required TResult orElse(),
  }) {
    if (create != null) {
      return create(catagoryName);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(Delete value) delete,
    required TResult Function(Reload value) reload,
    required TResult Function(Create value) create,
  }) {
    return create(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(Delete value)? delete,
    TResult? Function(Reload value)? reload,
    TResult? Function(Create value)? create,
  }) {
    return create?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(Delete value)? delete,
    TResult Function(Reload value)? reload,
    TResult Function(Create value)? create,
    required TResult orElse(),
  }) {
    if (create != null) {
      return create(this);
    }
    return orElse();
  }
}

abstract class Create implements AdminCourseCategoryEvent {
  const factory Create({required final String catagoryName}) = _$Create;

  String get catagoryName;
  @JsonKey(ignore: true)
  _$$CreateCopyWith<_$Create> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$AdminCourseCategoryState {
  List<CategoryModel> get catagoryList => throw _privateConstructorUsedError;
  bool get isLoading => throw _privateConstructorUsedError;
  bool get isError => throw _privateConstructorUsedError;
  bool get isDelete => throw _privateConstructorUsedError;
  bool get isCreated => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<CategoryModel> catagoryList, bool isLoading,
            bool isError, bool isDelete, bool isCreated)
        started,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<CategoryModel> catagoryList, bool isLoading,
            bool isError, bool isDelete, bool isCreated)?
        started,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<CategoryModel> catagoryList, bool isLoading,
            bool isError, bool isDelete, bool isCreated)?
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
  $AdminCourseCategoryStateCopyWith<AdminCourseCategoryState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AdminCourseCategoryStateCopyWith<$Res> {
  factory $AdminCourseCategoryStateCopyWith(AdminCourseCategoryState value,
          $Res Function(AdminCourseCategoryState) then) =
      _$AdminCourseCategoryStateCopyWithImpl<$Res, AdminCourseCategoryState>;
  @useResult
  $Res call(
      {List<CategoryModel> catagoryList,
      bool isLoading,
      bool isError,
      bool isDelete,
      bool isCreated});
}

/// @nodoc
class _$AdminCourseCategoryStateCopyWithImpl<$Res,
        $Val extends AdminCourseCategoryState>
    implements $AdminCourseCategoryStateCopyWith<$Res> {
  _$AdminCourseCategoryStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? catagoryList = null,
    Object? isLoading = null,
    Object? isError = null,
    Object? isDelete = null,
    Object? isCreated = null,
  }) {
    return _then(_value.copyWith(
      catagoryList: null == catagoryList
          ? _value.catagoryList
          : catagoryList // ignore: cast_nullable_to_non_nullable
              as List<CategoryModel>,
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      isError: null == isError
          ? _value.isError
          : isError // ignore: cast_nullable_to_non_nullable
              as bool,
      isDelete: null == isDelete
          ? _value.isDelete
          : isDelete // ignore: cast_nullable_to_non_nullable
              as bool,
      isCreated: null == isCreated
          ? _value.isCreated
          : isCreated // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$StartedCopyWith<$Res>
    implements $AdminCourseCategoryStateCopyWith<$Res> {
  factory _$$StartedCopyWith(_$Started value, $Res Function(_$Started) then) =
      __$$StartedCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {List<CategoryModel> catagoryList,
      bool isLoading,
      bool isError,
      bool isDelete,
      bool isCreated});
}

/// @nodoc
class __$$StartedCopyWithImpl<$Res>
    extends _$AdminCourseCategoryStateCopyWithImpl<$Res, _$Started>
    implements _$$StartedCopyWith<$Res> {
  __$$StartedCopyWithImpl(_$Started _value, $Res Function(_$Started) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? catagoryList = null,
    Object? isLoading = null,
    Object? isError = null,
    Object? isDelete = null,
    Object? isCreated = null,
  }) {
    return _then(_$Started(
      catagoryList: null == catagoryList
          ? _value._catagoryList
          : catagoryList // ignore: cast_nullable_to_non_nullable
              as List<CategoryModel>,
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      isError: null == isError
          ? _value.isError
          : isError // ignore: cast_nullable_to_non_nullable
              as bool,
      isDelete: null == isDelete
          ? _value.isDelete
          : isDelete // ignore: cast_nullable_to_non_nullable
              as bool,
      isCreated: null == isCreated
          ? _value.isCreated
          : isCreated // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$Started implements Started {
  const _$Started(
      {required final List<CategoryModel> catagoryList,
      required this.isLoading,
      required this.isError,
      required this.isDelete,
      required this.isCreated})
      : _catagoryList = catagoryList;

  final List<CategoryModel> _catagoryList;
  @override
  List<CategoryModel> get catagoryList {
    if (_catagoryList is EqualUnmodifiableListView) return _catagoryList;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_catagoryList);
  }

  @override
  final bool isLoading;
  @override
  final bool isError;
  @override
  final bool isDelete;
  @override
  final bool isCreated;

  @override
  String toString() {
    return 'AdminCourseCategoryState.started(catagoryList: $catagoryList, isLoading: $isLoading, isError: $isError, isDelete: $isDelete, isCreated: $isCreated)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$Started &&
            const DeepCollectionEquality()
                .equals(other._catagoryList, _catagoryList) &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            (identical(other.isError, isError) || other.isError == isError) &&
            (identical(other.isDelete, isDelete) ||
                other.isDelete == isDelete) &&
            (identical(other.isCreated, isCreated) ||
                other.isCreated == isCreated));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_catagoryList),
      isLoading,
      isError,
      isDelete,
      isCreated);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$StartedCopyWith<_$Started> get copyWith =>
      __$$StartedCopyWithImpl<_$Started>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<CategoryModel> catagoryList, bool isLoading,
            bool isError, bool isDelete, bool isCreated)
        started,
  }) {
    return started(catagoryList, isLoading, isError, isDelete, isCreated);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<CategoryModel> catagoryList, bool isLoading,
            bool isError, bool isDelete, bool isCreated)?
        started,
  }) {
    return started?.call(catagoryList, isLoading, isError, isDelete, isCreated);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<CategoryModel> catagoryList, bool isLoading,
            bool isError, bool isDelete, bool isCreated)?
        started,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started(catagoryList, isLoading, isError, isDelete, isCreated);
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

abstract class Started implements AdminCourseCategoryState {
  const factory Started(
      {required final List<CategoryModel> catagoryList,
      required final bool isLoading,
      required final bool isError,
      required final bool isDelete,
      required final bool isCreated}) = _$Started;

  @override
  List<CategoryModel> get catagoryList;
  @override
  bool get isLoading;
  @override
  bool get isError;
  @override
  bool get isDelete;
  @override
  bool get isCreated;
  @override
  @JsonKey(ignore: true)
  _$$StartedCopyWith<_$Started> get copyWith =>
      throw _privateConstructorUsedError;
}
