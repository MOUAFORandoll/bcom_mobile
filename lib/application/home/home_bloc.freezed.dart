// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'home_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$HomeEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String error) error,
    required TResult Function() userData,
    required TResult Function(dynamic index) setIndex,
    required TResult Function(dynamic index) setIndexHistory,
    required TResult Function(CategoryModel category) selectCategory,
    required TResult Function(List<CategoryModel> categoryList)
        updateListCategory,
    required TResult Function() getCategoryList,
    required TResult Function() openLivraisonModal,
    required TResult Function() getHomeInfo,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String error)? error,
    TResult? Function()? userData,
    TResult? Function(dynamic index)? setIndex,
    TResult? Function(dynamic index)? setIndexHistory,
    TResult? Function(CategoryModel category)? selectCategory,
    TResult? Function(List<CategoryModel> categoryList)? updateListCategory,
    TResult? Function()? getCategoryList,
    TResult? Function()? openLivraisonModal,
    TResult? Function()? getHomeInfo,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String error)? error,
    TResult Function()? userData,
    TResult Function(dynamic index)? setIndex,
    TResult Function(dynamic index)? setIndexHistory,
    TResult Function(CategoryModel category)? selectCategory,
    TResult Function(List<CategoryModel> categoryList)? updateListCategory,
    TResult Function()? getCategoryList,
    TResult Function()? openLivraisonModal,
    TResult Function()? getHomeInfo,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ErrorEvent value) error,
    required TResult Function(UserDataEvent value) userData,
    required TResult Function(SetIndexEvent value) setIndex,
    required TResult Function(SetIndexHistoryEvent value) setIndexHistory,
    required TResult Function(SelectCategory value) selectCategory,
    required TResult Function(UpdateListCategory value) updateListCategory,
    required TResult Function(GetCategoryList value) getCategoryList,
    required TResult Function(OpenLivraisonModal value) openLivraisonModal,
    required TResult Function(GetHomeInfo value) getHomeInfo,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ErrorEvent value)? error,
    TResult? Function(UserDataEvent value)? userData,
    TResult? Function(SetIndexEvent value)? setIndex,
    TResult? Function(SetIndexHistoryEvent value)? setIndexHistory,
    TResult? Function(SelectCategory value)? selectCategory,
    TResult? Function(UpdateListCategory value)? updateListCategory,
    TResult? Function(GetCategoryList value)? getCategoryList,
    TResult? Function(OpenLivraisonModal value)? openLivraisonModal,
    TResult? Function(GetHomeInfo value)? getHomeInfo,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ErrorEvent value)? error,
    TResult Function(UserDataEvent value)? userData,
    TResult Function(SetIndexEvent value)? setIndex,
    TResult Function(SetIndexHistoryEvent value)? setIndexHistory,
    TResult Function(SelectCategory value)? selectCategory,
    TResult Function(UpdateListCategory value)? updateListCategory,
    TResult Function(GetCategoryList value)? getCategoryList,
    TResult Function(OpenLivraisonModal value)? openLivraisonModal,
    TResult Function(GetHomeInfo value)? getHomeInfo,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HomeEventCopyWith<$Res> {
  factory $HomeEventCopyWith(HomeEvent value, $Res Function(HomeEvent) then) =
      _$HomeEventCopyWithImpl<$Res, HomeEvent>;
}

/// @nodoc
class _$HomeEventCopyWithImpl<$Res, $Val extends HomeEvent>
    implements $HomeEventCopyWith<$Res> {
  _$HomeEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$ErrorEventImplCopyWith<$Res> {
  factory _$$ErrorEventImplCopyWith(
          _$ErrorEventImpl value, $Res Function(_$ErrorEventImpl) then) =
      __$$ErrorEventImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String error});
}

/// @nodoc
class __$$ErrorEventImplCopyWithImpl<$Res>
    extends _$HomeEventCopyWithImpl<$Res, _$ErrorEventImpl>
    implements _$$ErrorEventImplCopyWith<$Res> {
  __$$ErrorEventImplCopyWithImpl(
      _$ErrorEventImpl _value, $Res Function(_$ErrorEventImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? error = null,
  }) {
    return _then(_$ErrorEventImpl(
      error: null == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$ErrorEventImpl implements ErrorEvent {
  const _$ErrorEventImpl({required this.error});

  @override
  final String error;

  @override
  String toString() {
    return 'HomeEvent.error(error: $error)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ErrorEventImpl &&
            (identical(other.error, error) || other.error == error));
  }

  @override
  int get hashCode => Object.hash(runtimeType, error);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ErrorEventImplCopyWith<_$ErrorEventImpl> get copyWith =>
      __$$ErrorEventImplCopyWithImpl<_$ErrorEventImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String error) error,
    required TResult Function() userData,
    required TResult Function(dynamic index) setIndex,
    required TResult Function(dynamic index) setIndexHistory,
    required TResult Function(CategoryModel category) selectCategory,
    required TResult Function(List<CategoryModel> categoryList)
        updateListCategory,
    required TResult Function() getCategoryList,
    required TResult Function() openLivraisonModal,
    required TResult Function() getHomeInfo,
  }) {
    return error(this.error);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String error)? error,
    TResult? Function()? userData,
    TResult? Function(dynamic index)? setIndex,
    TResult? Function(dynamic index)? setIndexHistory,
    TResult? Function(CategoryModel category)? selectCategory,
    TResult? Function(List<CategoryModel> categoryList)? updateListCategory,
    TResult? Function()? getCategoryList,
    TResult? Function()? openLivraisonModal,
    TResult? Function()? getHomeInfo,
  }) {
    return error?.call(this.error);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String error)? error,
    TResult Function()? userData,
    TResult Function(dynamic index)? setIndex,
    TResult Function(dynamic index)? setIndexHistory,
    TResult Function(CategoryModel category)? selectCategory,
    TResult Function(List<CategoryModel> categoryList)? updateListCategory,
    TResult Function()? getCategoryList,
    TResult Function()? openLivraisonModal,
    TResult Function()? getHomeInfo,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this.error);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ErrorEvent value) error,
    required TResult Function(UserDataEvent value) userData,
    required TResult Function(SetIndexEvent value) setIndex,
    required TResult Function(SetIndexHistoryEvent value) setIndexHistory,
    required TResult Function(SelectCategory value) selectCategory,
    required TResult Function(UpdateListCategory value) updateListCategory,
    required TResult Function(GetCategoryList value) getCategoryList,
    required TResult Function(OpenLivraisonModal value) openLivraisonModal,
    required TResult Function(GetHomeInfo value) getHomeInfo,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ErrorEvent value)? error,
    TResult? Function(UserDataEvent value)? userData,
    TResult? Function(SetIndexEvent value)? setIndex,
    TResult? Function(SetIndexHistoryEvent value)? setIndexHistory,
    TResult? Function(SelectCategory value)? selectCategory,
    TResult? Function(UpdateListCategory value)? updateListCategory,
    TResult? Function(GetCategoryList value)? getCategoryList,
    TResult? Function(OpenLivraisonModal value)? openLivraisonModal,
    TResult? Function(GetHomeInfo value)? getHomeInfo,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ErrorEvent value)? error,
    TResult Function(UserDataEvent value)? userData,
    TResult Function(SetIndexEvent value)? setIndex,
    TResult Function(SetIndexHistoryEvent value)? setIndexHistory,
    TResult Function(SelectCategory value)? selectCategory,
    TResult Function(UpdateListCategory value)? updateListCategory,
    TResult Function(GetCategoryList value)? getCategoryList,
    TResult Function(OpenLivraisonModal value)? openLivraisonModal,
    TResult Function(GetHomeInfo value)? getHomeInfo,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class ErrorEvent implements HomeEvent {
  const factory ErrorEvent({required final String error}) = _$ErrorEventImpl;

  String get error;
  @JsonKey(ignore: true)
  _$$ErrorEventImplCopyWith<_$ErrorEventImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$UserDataEventImplCopyWith<$Res> {
  factory _$$UserDataEventImplCopyWith(
          _$UserDataEventImpl value, $Res Function(_$UserDataEventImpl) then) =
      __$$UserDataEventImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$UserDataEventImplCopyWithImpl<$Res>
    extends _$HomeEventCopyWithImpl<$Res, _$UserDataEventImpl>
    implements _$$UserDataEventImplCopyWith<$Res> {
  __$$UserDataEventImplCopyWithImpl(
      _$UserDataEventImpl _value, $Res Function(_$UserDataEventImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$UserDataEventImpl implements UserDataEvent {
  const _$UserDataEventImpl();

  @override
  String toString() {
    return 'HomeEvent.userData()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$UserDataEventImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String error) error,
    required TResult Function() userData,
    required TResult Function(dynamic index) setIndex,
    required TResult Function(dynamic index) setIndexHistory,
    required TResult Function(CategoryModel category) selectCategory,
    required TResult Function(List<CategoryModel> categoryList)
        updateListCategory,
    required TResult Function() getCategoryList,
    required TResult Function() openLivraisonModal,
    required TResult Function() getHomeInfo,
  }) {
    return userData();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String error)? error,
    TResult? Function()? userData,
    TResult? Function(dynamic index)? setIndex,
    TResult? Function(dynamic index)? setIndexHistory,
    TResult? Function(CategoryModel category)? selectCategory,
    TResult? Function(List<CategoryModel> categoryList)? updateListCategory,
    TResult? Function()? getCategoryList,
    TResult? Function()? openLivraisonModal,
    TResult? Function()? getHomeInfo,
  }) {
    return userData?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String error)? error,
    TResult Function()? userData,
    TResult Function(dynamic index)? setIndex,
    TResult Function(dynamic index)? setIndexHistory,
    TResult Function(CategoryModel category)? selectCategory,
    TResult Function(List<CategoryModel> categoryList)? updateListCategory,
    TResult Function()? getCategoryList,
    TResult Function()? openLivraisonModal,
    TResult Function()? getHomeInfo,
    required TResult orElse(),
  }) {
    if (userData != null) {
      return userData();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ErrorEvent value) error,
    required TResult Function(UserDataEvent value) userData,
    required TResult Function(SetIndexEvent value) setIndex,
    required TResult Function(SetIndexHistoryEvent value) setIndexHistory,
    required TResult Function(SelectCategory value) selectCategory,
    required TResult Function(UpdateListCategory value) updateListCategory,
    required TResult Function(GetCategoryList value) getCategoryList,
    required TResult Function(OpenLivraisonModal value) openLivraisonModal,
    required TResult Function(GetHomeInfo value) getHomeInfo,
  }) {
    return userData(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ErrorEvent value)? error,
    TResult? Function(UserDataEvent value)? userData,
    TResult? Function(SetIndexEvent value)? setIndex,
    TResult? Function(SetIndexHistoryEvent value)? setIndexHistory,
    TResult? Function(SelectCategory value)? selectCategory,
    TResult? Function(UpdateListCategory value)? updateListCategory,
    TResult? Function(GetCategoryList value)? getCategoryList,
    TResult? Function(OpenLivraisonModal value)? openLivraisonModal,
    TResult? Function(GetHomeInfo value)? getHomeInfo,
  }) {
    return userData?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ErrorEvent value)? error,
    TResult Function(UserDataEvent value)? userData,
    TResult Function(SetIndexEvent value)? setIndex,
    TResult Function(SetIndexHistoryEvent value)? setIndexHistory,
    TResult Function(SelectCategory value)? selectCategory,
    TResult Function(UpdateListCategory value)? updateListCategory,
    TResult Function(GetCategoryList value)? getCategoryList,
    TResult Function(OpenLivraisonModal value)? openLivraisonModal,
    TResult Function(GetHomeInfo value)? getHomeInfo,
    required TResult orElse(),
  }) {
    if (userData != null) {
      return userData(this);
    }
    return orElse();
  }
}

abstract class UserDataEvent implements HomeEvent {
  const factory UserDataEvent() = _$UserDataEventImpl;
}

/// @nodoc
abstract class _$$SetIndexEventImplCopyWith<$Res> {
  factory _$$SetIndexEventImplCopyWith(
          _$SetIndexEventImpl value, $Res Function(_$SetIndexEventImpl) then) =
      __$$SetIndexEventImplCopyWithImpl<$Res>;
  @useResult
  $Res call({dynamic index});
}

/// @nodoc
class __$$SetIndexEventImplCopyWithImpl<$Res>
    extends _$HomeEventCopyWithImpl<$Res, _$SetIndexEventImpl>
    implements _$$SetIndexEventImplCopyWith<$Res> {
  __$$SetIndexEventImplCopyWithImpl(
      _$SetIndexEventImpl _value, $Res Function(_$SetIndexEventImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? index = freezed,
  }) {
    return _then(_$SetIndexEventImpl(
      index: freezed == index
          ? _value.index
          : index // ignore: cast_nullable_to_non_nullable
              as dynamic,
    ));
  }
}

/// @nodoc

class _$SetIndexEventImpl implements SetIndexEvent {
  const _$SetIndexEventImpl({required this.index});

  @override
  final dynamic index;

  @override
  String toString() {
    return 'HomeEvent.setIndex(index: $index)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SetIndexEventImpl &&
            const DeepCollectionEquality().equals(other.index, index));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(index));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SetIndexEventImplCopyWith<_$SetIndexEventImpl> get copyWith =>
      __$$SetIndexEventImplCopyWithImpl<_$SetIndexEventImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String error) error,
    required TResult Function() userData,
    required TResult Function(dynamic index) setIndex,
    required TResult Function(dynamic index) setIndexHistory,
    required TResult Function(CategoryModel category) selectCategory,
    required TResult Function(List<CategoryModel> categoryList)
        updateListCategory,
    required TResult Function() getCategoryList,
    required TResult Function() openLivraisonModal,
    required TResult Function() getHomeInfo,
  }) {
    return setIndex(index);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String error)? error,
    TResult? Function()? userData,
    TResult? Function(dynamic index)? setIndex,
    TResult? Function(dynamic index)? setIndexHistory,
    TResult? Function(CategoryModel category)? selectCategory,
    TResult? Function(List<CategoryModel> categoryList)? updateListCategory,
    TResult? Function()? getCategoryList,
    TResult? Function()? openLivraisonModal,
    TResult? Function()? getHomeInfo,
  }) {
    return setIndex?.call(index);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String error)? error,
    TResult Function()? userData,
    TResult Function(dynamic index)? setIndex,
    TResult Function(dynamic index)? setIndexHistory,
    TResult Function(CategoryModel category)? selectCategory,
    TResult Function(List<CategoryModel> categoryList)? updateListCategory,
    TResult Function()? getCategoryList,
    TResult Function()? openLivraisonModal,
    TResult Function()? getHomeInfo,
    required TResult orElse(),
  }) {
    if (setIndex != null) {
      return setIndex(index);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ErrorEvent value) error,
    required TResult Function(UserDataEvent value) userData,
    required TResult Function(SetIndexEvent value) setIndex,
    required TResult Function(SetIndexHistoryEvent value) setIndexHistory,
    required TResult Function(SelectCategory value) selectCategory,
    required TResult Function(UpdateListCategory value) updateListCategory,
    required TResult Function(GetCategoryList value) getCategoryList,
    required TResult Function(OpenLivraisonModal value) openLivraisonModal,
    required TResult Function(GetHomeInfo value) getHomeInfo,
  }) {
    return setIndex(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ErrorEvent value)? error,
    TResult? Function(UserDataEvent value)? userData,
    TResult? Function(SetIndexEvent value)? setIndex,
    TResult? Function(SetIndexHistoryEvent value)? setIndexHistory,
    TResult? Function(SelectCategory value)? selectCategory,
    TResult? Function(UpdateListCategory value)? updateListCategory,
    TResult? Function(GetCategoryList value)? getCategoryList,
    TResult? Function(OpenLivraisonModal value)? openLivraisonModal,
    TResult? Function(GetHomeInfo value)? getHomeInfo,
  }) {
    return setIndex?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ErrorEvent value)? error,
    TResult Function(UserDataEvent value)? userData,
    TResult Function(SetIndexEvent value)? setIndex,
    TResult Function(SetIndexHistoryEvent value)? setIndexHistory,
    TResult Function(SelectCategory value)? selectCategory,
    TResult Function(UpdateListCategory value)? updateListCategory,
    TResult Function(GetCategoryList value)? getCategoryList,
    TResult Function(OpenLivraisonModal value)? openLivraisonModal,
    TResult Function(GetHomeInfo value)? getHomeInfo,
    required TResult orElse(),
  }) {
    if (setIndex != null) {
      return setIndex(this);
    }
    return orElse();
  }
}

abstract class SetIndexEvent implements HomeEvent {
  const factory SetIndexEvent({required final dynamic index}) =
      _$SetIndexEventImpl;

  dynamic get index;
  @JsonKey(ignore: true)
  _$$SetIndexEventImplCopyWith<_$SetIndexEventImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SetIndexHistoryEventImplCopyWith<$Res> {
  factory _$$SetIndexHistoryEventImplCopyWith(_$SetIndexHistoryEventImpl value,
          $Res Function(_$SetIndexHistoryEventImpl) then) =
      __$$SetIndexHistoryEventImplCopyWithImpl<$Res>;
  @useResult
  $Res call({dynamic index});
}

/// @nodoc
class __$$SetIndexHistoryEventImplCopyWithImpl<$Res>
    extends _$HomeEventCopyWithImpl<$Res, _$SetIndexHistoryEventImpl>
    implements _$$SetIndexHistoryEventImplCopyWith<$Res> {
  __$$SetIndexHistoryEventImplCopyWithImpl(_$SetIndexHistoryEventImpl _value,
      $Res Function(_$SetIndexHistoryEventImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? index = freezed,
  }) {
    return _then(_$SetIndexHistoryEventImpl(
      index: freezed == index
          ? _value.index
          : index // ignore: cast_nullable_to_non_nullable
              as dynamic,
    ));
  }
}

/// @nodoc

class _$SetIndexHistoryEventImpl implements SetIndexHistoryEvent {
  const _$SetIndexHistoryEventImpl({required this.index});

  @override
  final dynamic index;

  @override
  String toString() {
    return 'HomeEvent.setIndexHistory(index: $index)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SetIndexHistoryEventImpl &&
            const DeepCollectionEquality().equals(other.index, index));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(index));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SetIndexHistoryEventImplCopyWith<_$SetIndexHistoryEventImpl>
      get copyWith =>
          __$$SetIndexHistoryEventImplCopyWithImpl<_$SetIndexHistoryEventImpl>(
              this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String error) error,
    required TResult Function() userData,
    required TResult Function(dynamic index) setIndex,
    required TResult Function(dynamic index) setIndexHistory,
    required TResult Function(CategoryModel category) selectCategory,
    required TResult Function(List<CategoryModel> categoryList)
        updateListCategory,
    required TResult Function() getCategoryList,
    required TResult Function() openLivraisonModal,
    required TResult Function() getHomeInfo,
  }) {
    return setIndexHistory(index);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String error)? error,
    TResult? Function()? userData,
    TResult? Function(dynamic index)? setIndex,
    TResult? Function(dynamic index)? setIndexHistory,
    TResult? Function(CategoryModel category)? selectCategory,
    TResult? Function(List<CategoryModel> categoryList)? updateListCategory,
    TResult? Function()? getCategoryList,
    TResult? Function()? openLivraisonModal,
    TResult? Function()? getHomeInfo,
  }) {
    return setIndexHistory?.call(index);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String error)? error,
    TResult Function()? userData,
    TResult Function(dynamic index)? setIndex,
    TResult Function(dynamic index)? setIndexHistory,
    TResult Function(CategoryModel category)? selectCategory,
    TResult Function(List<CategoryModel> categoryList)? updateListCategory,
    TResult Function()? getCategoryList,
    TResult Function()? openLivraisonModal,
    TResult Function()? getHomeInfo,
    required TResult orElse(),
  }) {
    if (setIndexHistory != null) {
      return setIndexHistory(index);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ErrorEvent value) error,
    required TResult Function(UserDataEvent value) userData,
    required TResult Function(SetIndexEvent value) setIndex,
    required TResult Function(SetIndexHistoryEvent value) setIndexHistory,
    required TResult Function(SelectCategory value) selectCategory,
    required TResult Function(UpdateListCategory value) updateListCategory,
    required TResult Function(GetCategoryList value) getCategoryList,
    required TResult Function(OpenLivraisonModal value) openLivraisonModal,
    required TResult Function(GetHomeInfo value) getHomeInfo,
  }) {
    return setIndexHistory(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ErrorEvent value)? error,
    TResult? Function(UserDataEvent value)? userData,
    TResult? Function(SetIndexEvent value)? setIndex,
    TResult? Function(SetIndexHistoryEvent value)? setIndexHistory,
    TResult? Function(SelectCategory value)? selectCategory,
    TResult? Function(UpdateListCategory value)? updateListCategory,
    TResult? Function(GetCategoryList value)? getCategoryList,
    TResult? Function(OpenLivraisonModal value)? openLivraisonModal,
    TResult? Function(GetHomeInfo value)? getHomeInfo,
  }) {
    return setIndexHistory?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ErrorEvent value)? error,
    TResult Function(UserDataEvent value)? userData,
    TResult Function(SetIndexEvent value)? setIndex,
    TResult Function(SetIndexHistoryEvent value)? setIndexHistory,
    TResult Function(SelectCategory value)? selectCategory,
    TResult Function(UpdateListCategory value)? updateListCategory,
    TResult Function(GetCategoryList value)? getCategoryList,
    TResult Function(OpenLivraisonModal value)? openLivraisonModal,
    TResult Function(GetHomeInfo value)? getHomeInfo,
    required TResult orElse(),
  }) {
    if (setIndexHistory != null) {
      return setIndexHistory(this);
    }
    return orElse();
  }
}

abstract class SetIndexHistoryEvent implements HomeEvent {
  const factory SetIndexHistoryEvent({required final dynamic index}) =
      _$SetIndexHistoryEventImpl;

  dynamic get index;
  @JsonKey(ignore: true)
  _$$SetIndexHistoryEventImplCopyWith<_$SetIndexHistoryEventImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SelectCategoryImplCopyWith<$Res> {
  factory _$$SelectCategoryImplCopyWith(_$SelectCategoryImpl value,
          $Res Function(_$SelectCategoryImpl) then) =
      __$$SelectCategoryImplCopyWithImpl<$Res>;
  @useResult
  $Res call({CategoryModel category});
}

/// @nodoc
class __$$SelectCategoryImplCopyWithImpl<$Res>
    extends _$HomeEventCopyWithImpl<$Res, _$SelectCategoryImpl>
    implements _$$SelectCategoryImplCopyWith<$Res> {
  __$$SelectCategoryImplCopyWithImpl(
      _$SelectCategoryImpl _value, $Res Function(_$SelectCategoryImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? category = null,
  }) {
    return _then(_$SelectCategoryImpl(
      category: null == category
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as CategoryModel,
    ));
  }
}

/// @nodoc

class _$SelectCategoryImpl implements SelectCategory {
  const _$SelectCategoryImpl({required this.category});

  @override
  final CategoryModel category;

  @override
  String toString() {
    return 'HomeEvent.selectCategory(category: $category)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SelectCategoryImpl &&
            (identical(other.category, category) ||
                other.category == category));
  }

  @override
  int get hashCode => Object.hash(runtimeType, category);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SelectCategoryImplCopyWith<_$SelectCategoryImpl> get copyWith =>
      __$$SelectCategoryImplCopyWithImpl<_$SelectCategoryImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String error) error,
    required TResult Function() userData,
    required TResult Function(dynamic index) setIndex,
    required TResult Function(dynamic index) setIndexHistory,
    required TResult Function(CategoryModel category) selectCategory,
    required TResult Function(List<CategoryModel> categoryList)
        updateListCategory,
    required TResult Function() getCategoryList,
    required TResult Function() openLivraisonModal,
    required TResult Function() getHomeInfo,
  }) {
    return selectCategory(category);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String error)? error,
    TResult? Function()? userData,
    TResult? Function(dynamic index)? setIndex,
    TResult? Function(dynamic index)? setIndexHistory,
    TResult? Function(CategoryModel category)? selectCategory,
    TResult? Function(List<CategoryModel> categoryList)? updateListCategory,
    TResult? Function()? getCategoryList,
    TResult? Function()? openLivraisonModal,
    TResult? Function()? getHomeInfo,
  }) {
    return selectCategory?.call(category);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String error)? error,
    TResult Function()? userData,
    TResult Function(dynamic index)? setIndex,
    TResult Function(dynamic index)? setIndexHistory,
    TResult Function(CategoryModel category)? selectCategory,
    TResult Function(List<CategoryModel> categoryList)? updateListCategory,
    TResult Function()? getCategoryList,
    TResult Function()? openLivraisonModal,
    TResult Function()? getHomeInfo,
    required TResult orElse(),
  }) {
    if (selectCategory != null) {
      return selectCategory(category);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ErrorEvent value) error,
    required TResult Function(UserDataEvent value) userData,
    required TResult Function(SetIndexEvent value) setIndex,
    required TResult Function(SetIndexHistoryEvent value) setIndexHistory,
    required TResult Function(SelectCategory value) selectCategory,
    required TResult Function(UpdateListCategory value) updateListCategory,
    required TResult Function(GetCategoryList value) getCategoryList,
    required TResult Function(OpenLivraisonModal value) openLivraisonModal,
    required TResult Function(GetHomeInfo value) getHomeInfo,
  }) {
    return selectCategory(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ErrorEvent value)? error,
    TResult? Function(UserDataEvent value)? userData,
    TResult? Function(SetIndexEvent value)? setIndex,
    TResult? Function(SetIndexHistoryEvent value)? setIndexHistory,
    TResult? Function(SelectCategory value)? selectCategory,
    TResult? Function(UpdateListCategory value)? updateListCategory,
    TResult? Function(GetCategoryList value)? getCategoryList,
    TResult? Function(OpenLivraisonModal value)? openLivraisonModal,
    TResult? Function(GetHomeInfo value)? getHomeInfo,
  }) {
    return selectCategory?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ErrorEvent value)? error,
    TResult Function(UserDataEvent value)? userData,
    TResult Function(SetIndexEvent value)? setIndex,
    TResult Function(SetIndexHistoryEvent value)? setIndexHistory,
    TResult Function(SelectCategory value)? selectCategory,
    TResult Function(UpdateListCategory value)? updateListCategory,
    TResult Function(GetCategoryList value)? getCategoryList,
    TResult Function(OpenLivraisonModal value)? openLivraisonModal,
    TResult Function(GetHomeInfo value)? getHomeInfo,
    required TResult orElse(),
  }) {
    if (selectCategory != null) {
      return selectCategory(this);
    }
    return orElse();
  }
}

abstract class SelectCategory implements HomeEvent {
  const factory SelectCategory({required final CategoryModel category}) =
      _$SelectCategoryImpl;

  CategoryModel get category;
  @JsonKey(ignore: true)
  _$$SelectCategoryImplCopyWith<_$SelectCategoryImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$UpdateListCategoryImplCopyWith<$Res> {
  factory _$$UpdateListCategoryImplCopyWith(_$UpdateListCategoryImpl value,
          $Res Function(_$UpdateListCategoryImpl) then) =
      __$$UpdateListCategoryImplCopyWithImpl<$Res>;
  @useResult
  $Res call({List<CategoryModel> categoryList});
}

/// @nodoc
class __$$UpdateListCategoryImplCopyWithImpl<$Res>
    extends _$HomeEventCopyWithImpl<$Res, _$UpdateListCategoryImpl>
    implements _$$UpdateListCategoryImplCopyWith<$Res> {
  __$$UpdateListCategoryImplCopyWithImpl(_$UpdateListCategoryImpl _value,
      $Res Function(_$UpdateListCategoryImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? categoryList = null,
  }) {
    return _then(_$UpdateListCategoryImpl(
      categoryList: null == categoryList
          ? _value._categoryList
          : categoryList // ignore: cast_nullable_to_non_nullable
              as List<CategoryModel>,
    ));
  }
}

/// @nodoc

class _$UpdateListCategoryImpl implements UpdateListCategory {
  const _$UpdateListCategoryImpl(
      {required final List<CategoryModel> categoryList})
      : _categoryList = categoryList;

  final List<CategoryModel> _categoryList;
  @override
  List<CategoryModel> get categoryList {
    if (_categoryList is EqualUnmodifiableListView) return _categoryList;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_categoryList);
  }

  @override
  String toString() {
    return 'HomeEvent.updateListCategory(categoryList: $categoryList)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UpdateListCategoryImpl &&
            const DeepCollectionEquality()
                .equals(other._categoryList, _categoryList));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_categoryList));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UpdateListCategoryImplCopyWith<_$UpdateListCategoryImpl> get copyWith =>
      __$$UpdateListCategoryImplCopyWithImpl<_$UpdateListCategoryImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String error) error,
    required TResult Function() userData,
    required TResult Function(dynamic index) setIndex,
    required TResult Function(dynamic index) setIndexHistory,
    required TResult Function(CategoryModel category) selectCategory,
    required TResult Function(List<CategoryModel> categoryList)
        updateListCategory,
    required TResult Function() getCategoryList,
    required TResult Function() openLivraisonModal,
    required TResult Function() getHomeInfo,
  }) {
    return updateListCategory(categoryList);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String error)? error,
    TResult? Function()? userData,
    TResult? Function(dynamic index)? setIndex,
    TResult? Function(dynamic index)? setIndexHistory,
    TResult? Function(CategoryModel category)? selectCategory,
    TResult? Function(List<CategoryModel> categoryList)? updateListCategory,
    TResult? Function()? getCategoryList,
    TResult? Function()? openLivraisonModal,
    TResult? Function()? getHomeInfo,
  }) {
    return updateListCategory?.call(categoryList);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String error)? error,
    TResult Function()? userData,
    TResult Function(dynamic index)? setIndex,
    TResult Function(dynamic index)? setIndexHistory,
    TResult Function(CategoryModel category)? selectCategory,
    TResult Function(List<CategoryModel> categoryList)? updateListCategory,
    TResult Function()? getCategoryList,
    TResult Function()? openLivraisonModal,
    TResult Function()? getHomeInfo,
    required TResult orElse(),
  }) {
    if (updateListCategory != null) {
      return updateListCategory(categoryList);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ErrorEvent value) error,
    required TResult Function(UserDataEvent value) userData,
    required TResult Function(SetIndexEvent value) setIndex,
    required TResult Function(SetIndexHistoryEvent value) setIndexHistory,
    required TResult Function(SelectCategory value) selectCategory,
    required TResult Function(UpdateListCategory value) updateListCategory,
    required TResult Function(GetCategoryList value) getCategoryList,
    required TResult Function(OpenLivraisonModal value) openLivraisonModal,
    required TResult Function(GetHomeInfo value) getHomeInfo,
  }) {
    return updateListCategory(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ErrorEvent value)? error,
    TResult? Function(UserDataEvent value)? userData,
    TResult? Function(SetIndexEvent value)? setIndex,
    TResult? Function(SetIndexHistoryEvent value)? setIndexHistory,
    TResult? Function(SelectCategory value)? selectCategory,
    TResult? Function(UpdateListCategory value)? updateListCategory,
    TResult? Function(GetCategoryList value)? getCategoryList,
    TResult? Function(OpenLivraisonModal value)? openLivraisonModal,
    TResult? Function(GetHomeInfo value)? getHomeInfo,
  }) {
    return updateListCategory?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ErrorEvent value)? error,
    TResult Function(UserDataEvent value)? userData,
    TResult Function(SetIndexEvent value)? setIndex,
    TResult Function(SetIndexHistoryEvent value)? setIndexHistory,
    TResult Function(SelectCategory value)? selectCategory,
    TResult Function(UpdateListCategory value)? updateListCategory,
    TResult Function(GetCategoryList value)? getCategoryList,
    TResult Function(OpenLivraisonModal value)? openLivraisonModal,
    TResult Function(GetHomeInfo value)? getHomeInfo,
    required TResult orElse(),
  }) {
    if (updateListCategory != null) {
      return updateListCategory(this);
    }
    return orElse();
  }
}

abstract class UpdateListCategory implements HomeEvent {
  const factory UpdateListCategory(
          {required final List<CategoryModel> categoryList}) =
      _$UpdateListCategoryImpl;

  List<CategoryModel> get categoryList;
  @JsonKey(ignore: true)
  _$$UpdateListCategoryImplCopyWith<_$UpdateListCategoryImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$GetCategoryListImplCopyWith<$Res> {
  factory _$$GetCategoryListImplCopyWith(_$GetCategoryListImpl value,
          $Res Function(_$GetCategoryListImpl) then) =
      __$$GetCategoryListImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$GetCategoryListImplCopyWithImpl<$Res>
    extends _$HomeEventCopyWithImpl<$Res, _$GetCategoryListImpl>
    implements _$$GetCategoryListImplCopyWith<$Res> {
  __$$GetCategoryListImplCopyWithImpl(
      _$GetCategoryListImpl _value, $Res Function(_$GetCategoryListImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$GetCategoryListImpl implements GetCategoryList {
  const _$GetCategoryListImpl();

  @override
  String toString() {
    return 'HomeEvent.getCategoryList()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$GetCategoryListImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String error) error,
    required TResult Function() userData,
    required TResult Function(dynamic index) setIndex,
    required TResult Function(dynamic index) setIndexHistory,
    required TResult Function(CategoryModel category) selectCategory,
    required TResult Function(List<CategoryModel> categoryList)
        updateListCategory,
    required TResult Function() getCategoryList,
    required TResult Function() openLivraisonModal,
    required TResult Function() getHomeInfo,
  }) {
    return getCategoryList();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String error)? error,
    TResult? Function()? userData,
    TResult? Function(dynamic index)? setIndex,
    TResult? Function(dynamic index)? setIndexHistory,
    TResult? Function(CategoryModel category)? selectCategory,
    TResult? Function(List<CategoryModel> categoryList)? updateListCategory,
    TResult? Function()? getCategoryList,
    TResult? Function()? openLivraisonModal,
    TResult? Function()? getHomeInfo,
  }) {
    return getCategoryList?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String error)? error,
    TResult Function()? userData,
    TResult Function(dynamic index)? setIndex,
    TResult Function(dynamic index)? setIndexHistory,
    TResult Function(CategoryModel category)? selectCategory,
    TResult Function(List<CategoryModel> categoryList)? updateListCategory,
    TResult Function()? getCategoryList,
    TResult Function()? openLivraisonModal,
    TResult Function()? getHomeInfo,
    required TResult orElse(),
  }) {
    if (getCategoryList != null) {
      return getCategoryList();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ErrorEvent value) error,
    required TResult Function(UserDataEvent value) userData,
    required TResult Function(SetIndexEvent value) setIndex,
    required TResult Function(SetIndexHistoryEvent value) setIndexHistory,
    required TResult Function(SelectCategory value) selectCategory,
    required TResult Function(UpdateListCategory value) updateListCategory,
    required TResult Function(GetCategoryList value) getCategoryList,
    required TResult Function(OpenLivraisonModal value) openLivraisonModal,
    required TResult Function(GetHomeInfo value) getHomeInfo,
  }) {
    return getCategoryList(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ErrorEvent value)? error,
    TResult? Function(UserDataEvent value)? userData,
    TResult? Function(SetIndexEvent value)? setIndex,
    TResult? Function(SetIndexHistoryEvent value)? setIndexHistory,
    TResult? Function(SelectCategory value)? selectCategory,
    TResult? Function(UpdateListCategory value)? updateListCategory,
    TResult? Function(GetCategoryList value)? getCategoryList,
    TResult? Function(OpenLivraisonModal value)? openLivraisonModal,
    TResult? Function(GetHomeInfo value)? getHomeInfo,
  }) {
    return getCategoryList?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ErrorEvent value)? error,
    TResult Function(UserDataEvent value)? userData,
    TResult Function(SetIndexEvent value)? setIndex,
    TResult Function(SetIndexHistoryEvent value)? setIndexHistory,
    TResult Function(SelectCategory value)? selectCategory,
    TResult Function(UpdateListCategory value)? updateListCategory,
    TResult Function(GetCategoryList value)? getCategoryList,
    TResult Function(OpenLivraisonModal value)? openLivraisonModal,
    TResult Function(GetHomeInfo value)? getHomeInfo,
    required TResult orElse(),
  }) {
    if (getCategoryList != null) {
      return getCategoryList(this);
    }
    return orElse();
  }
}

abstract class GetCategoryList implements HomeEvent {
  const factory GetCategoryList() = _$GetCategoryListImpl;
}

/// @nodoc
abstract class _$$OpenLivraisonModalImplCopyWith<$Res> {
  factory _$$OpenLivraisonModalImplCopyWith(_$OpenLivraisonModalImpl value,
          $Res Function(_$OpenLivraisonModalImpl) then) =
      __$$OpenLivraisonModalImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$OpenLivraisonModalImplCopyWithImpl<$Res>
    extends _$HomeEventCopyWithImpl<$Res, _$OpenLivraisonModalImpl>
    implements _$$OpenLivraisonModalImplCopyWith<$Res> {
  __$$OpenLivraisonModalImplCopyWithImpl(_$OpenLivraisonModalImpl _value,
      $Res Function(_$OpenLivraisonModalImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$OpenLivraisonModalImpl implements OpenLivraisonModal {
  const _$OpenLivraisonModalImpl();

  @override
  String toString() {
    return 'HomeEvent.openLivraisonModal()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$OpenLivraisonModalImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String error) error,
    required TResult Function() userData,
    required TResult Function(dynamic index) setIndex,
    required TResult Function(dynamic index) setIndexHistory,
    required TResult Function(CategoryModel category) selectCategory,
    required TResult Function(List<CategoryModel> categoryList)
        updateListCategory,
    required TResult Function() getCategoryList,
    required TResult Function() openLivraisonModal,
    required TResult Function() getHomeInfo,
  }) {
    return openLivraisonModal();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String error)? error,
    TResult? Function()? userData,
    TResult? Function(dynamic index)? setIndex,
    TResult? Function(dynamic index)? setIndexHistory,
    TResult? Function(CategoryModel category)? selectCategory,
    TResult? Function(List<CategoryModel> categoryList)? updateListCategory,
    TResult? Function()? getCategoryList,
    TResult? Function()? openLivraisonModal,
    TResult? Function()? getHomeInfo,
  }) {
    return openLivraisonModal?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String error)? error,
    TResult Function()? userData,
    TResult Function(dynamic index)? setIndex,
    TResult Function(dynamic index)? setIndexHistory,
    TResult Function(CategoryModel category)? selectCategory,
    TResult Function(List<CategoryModel> categoryList)? updateListCategory,
    TResult Function()? getCategoryList,
    TResult Function()? openLivraisonModal,
    TResult Function()? getHomeInfo,
    required TResult orElse(),
  }) {
    if (openLivraisonModal != null) {
      return openLivraisonModal();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ErrorEvent value) error,
    required TResult Function(UserDataEvent value) userData,
    required TResult Function(SetIndexEvent value) setIndex,
    required TResult Function(SetIndexHistoryEvent value) setIndexHistory,
    required TResult Function(SelectCategory value) selectCategory,
    required TResult Function(UpdateListCategory value) updateListCategory,
    required TResult Function(GetCategoryList value) getCategoryList,
    required TResult Function(OpenLivraisonModal value) openLivraisonModal,
    required TResult Function(GetHomeInfo value) getHomeInfo,
  }) {
    return openLivraisonModal(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ErrorEvent value)? error,
    TResult? Function(UserDataEvent value)? userData,
    TResult? Function(SetIndexEvent value)? setIndex,
    TResult? Function(SetIndexHistoryEvent value)? setIndexHistory,
    TResult? Function(SelectCategory value)? selectCategory,
    TResult? Function(UpdateListCategory value)? updateListCategory,
    TResult? Function(GetCategoryList value)? getCategoryList,
    TResult? Function(OpenLivraisonModal value)? openLivraisonModal,
    TResult? Function(GetHomeInfo value)? getHomeInfo,
  }) {
    return openLivraisonModal?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ErrorEvent value)? error,
    TResult Function(UserDataEvent value)? userData,
    TResult Function(SetIndexEvent value)? setIndex,
    TResult Function(SetIndexHistoryEvent value)? setIndexHistory,
    TResult Function(SelectCategory value)? selectCategory,
    TResult Function(UpdateListCategory value)? updateListCategory,
    TResult Function(GetCategoryList value)? getCategoryList,
    TResult Function(OpenLivraisonModal value)? openLivraisonModal,
    TResult Function(GetHomeInfo value)? getHomeInfo,
    required TResult orElse(),
  }) {
    if (openLivraisonModal != null) {
      return openLivraisonModal(this);
    }
    return orElse();
  }
}

abstract class OpenLivraisonModal implements HomeEvent {
  const factory OpenLivraisonModal() = _$OpenLivraisonModalImpl;
}

/// @nodoc
abstract class _$$GetHomeInfoImplCopyWith<$Res> {
  factory _$$GetHomeInfoImplCopyWith(
          _$GetHomeInfoImpl value, $Res Function(_$GetHomeInfoImpl) then) =
      __$$GetHomeInfoImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$GetHomeInfoImplCopyWithImpl<$Res>
    extends _$HomeEventCopyWithImpl<$Res, _$GetHomeInfoImpl>
    implements _$$GetHomeInfoImplCopyWith<$Res> {
  __$$GetHomeInfoImplCopyWithImpl(
      _$GetHomeInfoImpl _value, $Res Function(_$GetHomeInfoImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$GetHomeInfoImpl implements GetHomeInfo {
  const _$GetHomeInfoImpl();

  @override
  String toString() {
    return 'HomeEvent.getHomeInfo()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$GetHomeInfoImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String error) error,
    required TResult Function() userData,
    required TResult Function(dynamic index) setIndex,
    required TResult Function(dynamic index) setIndexHistory,
    required TResult Function(CategoryModel category) selectCategory,
    required TResult Function(List<CategoryModel> categoryList)
        updateListCategory,
    required TResult Function() getCategoryList,
    required TResult Function() openLivraisonModal,
    required TResult Function() getHomeInfo,
  }) {
    return getHomeInfo();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String error)? error,
    TResult? Function()? userData,
    TResult? Function(dynamic index)? setIndex,
    TResult? Function(dynamic index)? setIndexHistory,
    TResult? Function(CategoryModel category)? selectCategory,
    TResult? Function(List<CategoryModel> categoryList)? updateListCategory,
    TResult? Function()? getCategoryList,
    TResult? Function()? openLivraisonModal,
    TResult? Function()? getHomeInfo,
  }) {
    return getHomeInfo?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String error)? error,
    TResult Function()? userData,
    TResult Function(dynamic index)? setIndex,
    TResult Function(dynamic index)? setIndexHistory,
    TResult Function(CategoryModel category)? selectCategory,
    TResult Function(List<CategoryModel> categoryList)? updateListCategory,
    TResult Function()? getCategoryList,
    TResult Function()? openLivraisonModal,
    TResult Function()? getHomeInfo,
    required TResult orElse(),
  }) {
    if (getHomeInfo != null) {
      return getHomeInfo();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ErrorEvent value) error,
    required TResult Function(UserDataEvent value) userData,
    required TResult Function(SetIndexEvent value) setIndex,
    required TResult Function(SetIndexHistoryEvent value) setIndexHistory,
    required TResult Function(SelectCategory value) selectCategory,
    required TResult Function(UpdateListCategory value) updateListCategory,
    required TResult Function(GetCategoryList value) getCategoryList,
    required TResult Function(OpenLivraisonModal value) openLivraisonModal,
    required TResult Function(GetHomeInfo value) getHomeInfo,
  }) {
    return getHomeInfo(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ErrorEvent value)? error,
    TResult? Function(UserDataEvent value)? userData,
    TResult? Function(SetIndexEvent value)? setIndex,
    TResult? Function(SetIndexHistoryEvent value)? setIndexHistory,
    TResult? Function(SelectCategory value)? selectCategory,
    TResult? Function(UpdateListCategory value)? updateListCategory,
    TResult? Function(GetCategoryList value)? getCategoryList,
    TResult? Function(OpenLivraisonModal value)? openLivraisonModal,
    TResult? Function(GetHomeInfo value)? getHomeInfo,
  }) {
    return getHomeInfo?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ErrorEvent value)? error,
    TResult Function(UserDataEvent value)? userData,
    TResult Function(SetIndexEvent value)? setIndex,
    TResult Function(SetIndexHistoryEvent value)? setIndexHistory,
    TResult Function(SelectCategory value)? selectCategory,
    TResult Function(UpdateListCategory value)? updateListCategory,
    TResult Function(GetCategoryList value)? getCategoryList,
    TResult Function(OpenLivraisonModal value)? openLivraisonModal,
    TResult Function(GetHomeInfo value)? getHomeInfo,
    required TResult orElse(),
  }) {
    if (getHomeInfo != null) {
      return getHomeInfo(this);
    }
    return orElse();
  }
}

abstract class GetHomeInfo implements HomeEvent {
  const factory GetHomeInfo() = _$GetHomeInfoImpl;
}

/// @nodoc
mixin _$HomeState {
  User? get user => throw _privateConstructorUsedError;
  int get index => throw _privateConstructorUsedError;
  int get loadHomeInfo => throw _privateConstructorUsedError;
  BcomInfo? get bcomInfo => throw _privateConstructorUsedError;
  List<OnBoardingModel>? get onboardingDataImage =>
      throw _privateConstructorUsedError;
  OnBoardingModel? get onboardingDataVideo =>
      throw _privateConstructorUsedError;
  bool? get recupMailStatus => throw _privateConstructorUsedError;
  bool? get noOpen => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $HomeStateCopyWith<HomeState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HomeStateCopyWith<$Res> {
  factory $HomeStateCopyWith(HomeState value, $Res Function(HomeState) then) =
      _$HomeStateCopyWithImpl<$Res, HomeState>;
  @useResult
  $Res call(
      {User? user,
      int index,
      int loadHomeInfo,
      BcomInfo? bcomInfo,
      List<OnBoardingModel>? onboardingDataImage,
      OnBoardingModel? onboardingDataVideo,
      bool? recupMailStatus,
      bool? noOpen});
}

/// @nodoc
class _$HomeStateCopyWithImpl<$Res, $Val extends HomeState>
    implements $HomeStateCopyWith<$Res> {
  _$HomeStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? user = freezed,
    Object? index = null,
    Object? loadHomeInfo = null,
    Object? bcomInfo = freezed,
    Object? onboardingDataImage = freezed,
    Object? onboardingDataVideo = freezed,
    Object? recupMailStatus = freezed,
    Object? noOpen = freezed,
  }) {
    return _then(_value.copyWith(
      user: freezed == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as User?,
      index: null == index
          ? _value.index
          : index // ignore: cast_nullable_to_non_nullable
              as int,
      loadHomeInfo: null == loadHomeInfo
          ? _value.loadHomeInfo
          : loadHomeInfo // ignore: cast_nullable_to_non_nullable
              as int,
      bcomInfo: freezed == bcomInfo
          ? _value.bcomInfo
          : bcomInfo // ignore: cast_nullable_to_non_nullable
              as BcomInfo?,
      onboardingDataImage: freezed == onboardingDataImage
          ? _value.onboardingDataImage
          : onboardingDataImage // ignore: cast_nullable_to_non_nullable
              as List<OnBoardingModel>?,
      onboardingDataVideo: freezed == onboardingDataVideo
          ? _value.onboardingDataVideo
          : onboardingDataVideo // ignore: cast_nullable_to_non_nullable
              as OnBoardingModel?,
      recupMailStatus: freezed == recupMailStatus
          ? _value.recupMailStatus
          : recupMailStatus // ignore: cast_nullable_to_non_nullable
              as bool?,
      noOpen: freezed == noOpen
          ? _value.noOpen
          : noOpen // ignore: cast_nullable_to_non_nullable
              as bool?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$HomeStateImplCopyWith<$Res>
    implements $HomeStateCopyWith<$Res> {
  factory _$$HomeStateImplCopyWith(
          _$HomeStateImpl value, $Res Function(_$HomeStateImpl) then) =
      __$$HomeStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {User? user,
      int index,
      int loadHomeInfo,
      BcomInfo? bcomInfo,
      List<OnBoardingModel>? onboardingDataImage,
      OnBoardingModel? onboardingDataVideo,
      bool? recupMailStatus,
      bool? noOpen});
}

/// @nodoc
class __$$HomeStateImplCopyWithImpl<$Res>
    extends _$HomeStateCopyWithImpl<$Res, _$HomeStateImpl>
    implements _$$HomeStateImplCopyWith<$Res> {
  __$$HomeStateImplCopyWithImpl(
      _$HomeStateImpl _value, $Res Function(_$HomeStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? user = freezed,
    Object? index = null,
    Object? loadHomeInfo = null,
    Object? bcomInfo = freezed,
    Object? onboardingDataImage = freezed,
    Object? onboardingDataVideo = freezed,
    Object? recupMailStatus = freezed,
    Object? noOpen = freezed,
  }) {
    return _then(_$HomeStateImpl(
      user: freezed == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as User?,
      index: null == index
          ? _value.index
          : index // ignore: cast_nullable_to_non_nullable
              as int,
      loadHomeInfo: null == loadHomeInfo
          ? _value.loadHomeInfo
          : loadHomeInfo // ignore: cast_nullable_to_non_nullable
              as int,
      bcomInfo: freezed == bcomInfo
          ? _value.bcomInfo
          : bcomInfo // ignore: cast_nullable_to_non_nullable
              as BcomInfo?,
      onboardingDataImage: freezed == onboardingDataImage
          ? _value._onboardingDataImage
          : onboardingDataImage // ignore: cast_nullable_to_non_nullable
              as List<OnBoardingModel>?,
      onboardingDataVideo: freezed == onboardingDataVideo
          ? _value.onboardingDataVideo
          : onboardingDataVideo // ignore: cast_nullable_to_non_nullable
              as OnBoardingModel?,
      recupMailStatus: freezed == recupMailStatus
          ? _value.recupMailStatus
          : recupMailStatus // ignore: cast_nullable_to_non_nullable
              as bool?,
      noOpen: freezed == noOpen
          ? _value.noOpen
          : noOpen // ignore: cast_nullable_to_non_nullable
              as bool?,
    ));
  }
}

/// @nodoc

class _$HomeStateImpl implements _HomeState {
  const _$HomeStateImpl(
      {required this.user,
      required this.index,
      required this.loadHomeInfo,
      required this.bcomInfo,
      required final List<OnBoardingModel>? onboardingDataImage,
      required this.onboardingDataVideo,
      required this.recupMailStatus,
      required this.noOpen})
      : _onboardingDataImage = onboardingDataImage;

  @override
  final User? user;
  @override
  final int index;
  @override
  final int loadHomeInfo;
  @override
  final BcomInfo? bcomInfo;
  final List<OnBoardingModel>? _onboardingDataImage;
  @override
  List<OnBoardingModel>? get onboardingDataImage {
    final value = _onboardingDataImage;
    if (value == null) return null;
    if (_onboardingDataImage is EqualUnmodifiableListView)
      return _onboardingDataImage;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final OnBoardingModel? onboardingDataVideo;
  @override
  final bool? recupMailStatus;
  @override
  final bool? noOpen;

  @override
  String toString() {
    return 'HomeState(user: $user, index: $index, loadHomeInfo: $loadHomeInfo, bcomInfo: $bcomInfo, onboardingDataImage: $onboardingDataImage, onboardingDataVideo: $onboardingDataVideo, recupMailStatus: $recupMailStatus, noOpen: $noOpen)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$HomeStateImpl &&
            (identical(other.user, user) || other.user == user) &&
            (identical(other.index, index) || other.index == index) &&
            (identical(other.loadHomeInfo, loadHomeInfo) ||
                other.loadHomeInfo == loadHomeInfo) &&
            (identical(other.bcomInfo, bcomInfo) ||
                other.bcomInfo == bcomInfo) &&
            const DeepCollectionEquality()
                .equals(other._onboardingDataImage, _onboardingDataImage) &&
            (identical(other.onboardingDataVideo, onboardingDataVideo) ||
                other.onboardingDataVideo == onboardingDataVideo) &&
            (identical(other.recupMailStatus, recupMailStatus) ||
                other.recupMailStatus == recupMailStatus) &&
            (identical(other.noOpen, noOpen) || other.noOpen == noOpen));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      user,
      index,
      loadHomeInfo,
      bcomInfo,
      const DeepCollectionEquality().hash(_onboardingDataImage),
      onboardingDataVideo,
      recupMailStatus,
      noOpen);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$HomeStateImplCopyWith<_$HomeStateImpl> get copyWith =>
      __$$HomeStateImplCopyWithImpl<_$HomeStateImpl>(this, _$identity);
}

abstract class _HomeState implements HomeState {
  const factory _HomeState(
      {required final User? user,
      required final int index,
      required final int loadHomeInfo,
      required final BcomInfo? bcomInfo,
      required final List<OnBoardingModel>? onboardingDataImage,
      required final OnBoardingModel? onboardingDataVideo,
      required final bool? recupMailStatus,
      required final bool? noOpen}) = _$HomeStateImpl;

  @override
  User? get user;
  @override
  int get index;
  @override
  int get loadHomeInfo;
  @override
  BcomInfo? get bcomInfo;
  @override
  List<OnBoardingModel>? get onboardingDataImage;
  @override
  OnBoardingModel? get onboardingDataVideo;
  @override
  bool? get recupMailStatus;
  @override
  bool? get noOpen;
  @override
  @JsonKey(ignore: true)
  _$$HomeStateImplCopyWith<_$HomeStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
