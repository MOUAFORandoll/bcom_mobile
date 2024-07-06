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
    required TResult Function(dynamic index) setIndex,
    required TResult Function(dynamic index) setIndexHistory,
    required TResult Function() getHomeInfo,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(dynamic index)? setIndex,
    TResult? Function(dynamic index)? setIndexHistory,
    TResult? Function()? getHomeInfo,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(dynamic index)? setIndex,
    TResult Function(dynamic index)? setIndexHistory,
    TResult Function()? getHomeInfo,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SetIndexEvent value) setIndex,
    required TResult Function(SetIndexHistoryEvent value) setIndexHistory,
    required TResult Function(GetHomeInfo value) getHomeInfo,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(SetIndexEvent value)? setIndex,
    TResult? Function(SetIndexHistoryEvent value)? setIndexHistory,
    TResult? Function(GetHomeInfo value)? getHomeInfo,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SetIndexEvent value)? setIndex,
    TResult Function(SetIndexHistoryEvent value)? setIndexHistory,
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
    required TResult Function(dynamic index) setIndex,
    required TResult Function(dynamic index) setIndexHistory,
    required TResult Function() getHomeInfo,
  }) {
    return setIndex(index);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(dynamic index)? setIndex,
    TResult? Function(dynamic index)? setIndexHistory,
    TResult? Function()? getHomeInfo,
  }) {
    return setIndex?.call(index);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(dynamic index)? setIndex,
    TResult Function(dynamic index)? setIndexHistory,
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
    required TResult Function(SetIndexEvent value) setIndex,
    required TResult Function(SetIndexHistoryEvent value) setIndexHistory,
    required TResult Function(GetHomeInfo value) getHomeInfo,
  }) {
    return setIndex(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(SetIndexEvent value)? setIndex,
    TResult? Function(SetIndexHistoryEvent value)? setIndexHistory,
    TResult? Function(GetHomeInfo value)? getHomeInfo,
  }) {
    return setIndex?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SetIndexEvent value)? setIndex,
    TResult Function(SetIndexHistoryEvent value)? setIndexHistory,
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
    required TResult Function(dynamic index) setIndex,
    required TResult Function(dynamic index) setIndexHistory,
    required TResult Function() getHomeInfo,
  }) {
    return setIndexHistory(index);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(dynamic index)? setIndex,
    TResult? Function(dynamic index)? setIndexHistory,
    TResult? Function()? getHomeInfo,
  }) {
    return setIndexHistory?.call(index);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(dynamic index)? setIndex,
    TResult Function(dynamic index)? setIndexHistory,
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
    required TResult Function(SetIndexEvent value) setIndex,
    required TResult Function(SetIndexHistoryEvent value) setIndexHistory,
    required TResult Function(GetHomeInfo value) getHomeInfo,
  }) {
    return setIndexHistory(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(SetIndexEvent value)? setIndex,
    TResult? Function(SetIndexHistoryEvent value)? setIndexHistory,
    TResult? Function(GetHomeInfo value)? getHomeInfo,
  }) {
    return setIndexHistory?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SetIndexEvent value)? setIndex,
    TResult Function(SetIndexHistoryEvent value)? setIndexHistory,
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
    required TResult Function(dynamic index) setIndex,
    required TResult Function(dynamic index) setIndexHistory,
    required TResult Function() getHomeInfo,
  }) {
    return getHomeInfo();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(dynamic index)? setIndex,
    TResult? Function(dynamic index)? setIndexHistory,
    TResult? Function()? getHomeInfo,
  }) {
    return getHomeInfo?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(dynamic index)? setIndex,
    TResult Function(dynamic index)? setIndexHistory,
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
    required TResult Function(SetIndexEvent value) setIndex,
    required TResult Function(SetIndexHistoryEvent value) setIndexHistory,
    required TResult Function(GetHomeInfo value) getHomeInfo,
  }) {
    return getHomeInfo(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(SetIndexEvent value)? setIndex,
    TResult? Function(SetIndexHistoryEvent value)? setIndexHistory,
    TResult? Function(GetHomeInfo value)? getHomeInfo,
  }) {
    return getHomeInfo?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SetIndexEvent value)? setIndex,
    TResult Function(SetIndexHistoryEvent value)? setIndexHistory,
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
  int get index => throw _privateConstructorUsedError;
  int get loadHomeInfo => throw _privateConstructorUsedError;
  BcomInfo? get bcomInfo => throw _privateConstructorUsedError;
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
  $Res call({int index, int loadHomeInfo, BcomInfo? bcomInfo, bool? noOpen});
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
    Object? index = null,
    Object? loadHomeInfo = null,
    Object? bcomInfo = freezed,
    Object? noOpen = freezed,
  }) {
    return _then(_value.copyWith(
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
  $Res call({int index, int loadHomeInfo, BcomInfo? bcomInfo, bool? noOpen});
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
    Object? index = null,
    Object? loadHomeInfo = null,
    Object? bcomInfo = freezed,
    Object? noOpen = freezed,
  }) {
    return _then(_$HomeStateImpl(
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
      {required this.index,
      required this.loadHomeInfo,
      required this.bcomInfo,
      required this.noOpen});

  @override
  final int index;
  @override
  final int loadHomeInfo;
  @override
  final BcomInfo? bcomInfo;
  @override
  final bool? noOpen;

  @override
  String toString() {
    return 'HomeState(index: $index, loadHomeInfo: $loadHomeInfo, bcomInfo: $bcomInfo, noOpen: $noOpen)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$HomeStateImpl &&
            (identical(other.index, index) || other.index == index) &&
            (identical(other.loadHomeInfo, loadHomeInfo) ||
                other.loadHomeInfo == loadHomeInfo) &&
            (identical(other.bcomInfo, bcomInfo) ||
                other.bcomInfo == bcomInfo) &&
            (identical(other.noOpen, noOpen) || other.noOpen == noOpen));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, index, loadHomeInfo, bcomInfo, noOpen);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$HomeStateImplCopyWith<_$HomeStateImpl> get copyWith =>
      __$$HomeStateImplCopyWithImpl<_$HomeStateImpl>(this, _$identity);
}

abstract class _HomeState implements HomeState {
  const factory _HomeState(
      {required final int index,
      required final int loadHomeInfo,
      required final BcomInfo? bcomInfo,
      required final bool? noOpen}) = _$HomeStateImpl;

  @override
  int get index;
  @override
  int get loadHomeInfo;
  @override
  BcomInfo? get bcomInfo;
  @override
  bool? get noOpen;
  @override
  @JsonKey(ignore: true)
  _$$HomeStateImplCopyWith<_$HomeStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
