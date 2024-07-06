// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'user_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$UserEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String userName, String password)
        chooseExperience,
    required TResult Function() userData,
    required TResult Function(String fullName, String userName, String phone,
            String email, String password, String re_password)
        register,
    required TResult Function() addInfoEntreprise,
    required TResult Function() addInfoClient,
    required TResult Function(String data) sendCode,
    required TResult Function(Map<dynamic, dynamic> data) updateUserInfo,
    required TResult Function(String data, String code) verifyCode,
    required TResult Function(BuildContext context) signOut,
    required TResult Function() getUserEvent,
    required TResult Function(File? image) setCniImageAvant,
    required TResult Function(File? image) setCniImageArriere,
    required TResult Function(File? image) setCGImage,
    required TResult Function(FormData data) completeDevisInfo,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String userName, String password)? chooseExperience,
    TResult? Function()? userData,
    TResult? Function(String fullName, String userName, String phone,
            String email, String password, String re_password)?
        register,
    TResult? Function()? addInfoEntreprise,
    TResult? Function()? addInfoClient,
    TResult? Function(String data)? sendCode,
    TResult? Function(Map<dynamic, dynamic> data)? updateUserInfo,
    TResult? Function(String data, String code)? verifyCode,
    TResult? Function(BuildContext context)? signOut,
    TResult? Function()? getUserEvent,
    TResult? Function(File? image)? setCniImageAvant,
    TResult? Function(File? image)? setCniImageArriere,
    TResult? Function(File? image)? setCGImage,
    TResult? Function(FormData data)? completeDevisInfo,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String userName, String password)? chooseExperience,
    TResult Function()? userData,
    TResult Function(String fullName, String userName, String phone,
            String email, String password, String re_password)?
        register,
    TResult Function()? addInfoEntreprise,
    TResult Function()? addInfoClient,
    TResult Function(String data)? sendCode,
    TResult Function(Map<dynamic, dynamic> data)? updateUserInfo,
    TResult Function(String data, String code)? verifyCode,
    TResult Function(BuildContext context)? signOut,
    TResult Function()? getUserEvent,
    TResult Function(File? image)? setCniImageAvant,
    TResult Function(File? image)? setCniImageArriere,
    TResult Function(File? image)? setCGImage,
    TResult Function(FormData data)? completeDevisInfo,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SignInEvent value) chooseExperience,
    required TResult Function(UserDataEvent value) userData,
    required TResult Function(RegisterEvent value) register,
    required TResult Function(AddInfoEntreprise value) addInfoEntreprise,
    required TResult Function(AddInfoClient value) addInfoClient,
    required TResult Function(SendCode value) sendCode,
    required TResult Function(UpdateUserInfo value) updateUserInfo,
    required TResult Function(VerifyCode value) verifyCode,
    required TResult Function(SignOutEvent value) signOut,
    required TResult Function(GetUserEvent value) getUserEvent,
    required TResult Function(SetCniImageAvant value) setCniImageAvant,
    required TResult Function(SetCniImageArriere value) setCniImageArriere,
    required TResult Function(SetCGImage value) setCGImage,
    required TResult Function(CompleteDevisInfo value) completeDevisInfo,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(SignInEvent value)? chooseExperience,
    TResult? Function(UserDataEvent value)? userData,
    TResult? Function(RegisterEvent value)? register,
    TResult? Function(AddInfoEntreprise value)? addInfoEntreprise,
    TResult? Function(AddInfoClient value)? addInfoClient,
    TResult? Function(SendCode value)? sendCode,
    TResult? Function(UpdateUserInfo value)? updateUserInfo,
    TResult? Function(VerifyCode value)? verifyCode,
    TResult? Function(SignOutEvent value)? signOut,
    TResult? Function(GetUserEvent value)? getUserEvent,
    TResult? Function(SetCniImageAvant value)? setCniImageAvant,
    TResult? Function(SetCniImageArriere value)? setCniImageArriere,
    TResult? Function(SetCGImage value)? setCGImage,
    TResult? Function(CompleteDevisInfo value)? completeDevisInfo,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SignInEvent value)? chooseExperience,
    TResult Function(UserDataEvent value)? userData,
    TResult Function(RegisterEvent value)? register,
    TResult Function(AddInfoEntreprise value)? addInfoEntreprise,
    TResult Function(AddInfoClient value)? addInfoClient,
    TResult Function(SendCode value)? sendCode,
    TResult Function(UpdateUserInfo value)? updateUserInfo,
    TResult Function(VerifyCode value)? verifyCode,
    TResult Function(SignOutEvent value)? signOut,
    TResult Function(GetUserEvent value)? getUserEvent,
    TResult Function(SetCniImageAvant value)? setCniImageAvant,
    TResult Function(SetCniImageArriere value)? setCniImageArriere,
    TResult Function(SetCGImage value)? setCGImage,
    TResult Function(CompleteDevisInfo value)? completeDevisInfo,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserEventCopyWith<$Res> {
  factory $UserEventCopyWith(UserEvent value, $Res Function(UserEvent) then) =
      _$UserEventCopyWithImpl<$Res, UserEvent>;
}

/// @nodoc
class _$UserEventCopyWithImpl<$Res, $Val extends UserEvent>
    implements $UserEventCopyWith<$Res> {
  _$UserEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$SignInEventImplCopyWith<$Res> {
  factory _$$SignInEventImplCopyWith(
          _$SignInEventImpl value, $Res Function(_$SignInEventImpl) then) =
      __$$SignInEventImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String userName, String password});
}

/// @nodoc
class __$$SignInEventImplCopyWithImpl<$Res>
    extends _$UserEventCopyWithImpl<$Res, _$SignInEventImpl>
    implements _$$SignInEventImplCopyWith<$Res> {
  __$$SignInEventImplCopyWithImpl(
      _$SignInEventImpl _value, $Res Function(_$SignInEventImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userName = null,
    Object? password = null,
  }) {
    return _then(_$SignInEventImpl(
      userName: null == userName
          ? _value.userName
          : userName // ignore: cast_nullable_to_non_nullable
              as String,
      password: null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$SignInEventImpl implements SignInEvent {
  const _$SignInEventImpl({required this.userName, required this.password});

  @override
  final String userName;
  @override
  final String password;

  @override
  String toString() {
    return 'UserEvent.chooseExperience(userName: $userName, password: $password)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SignInEventImpl &&
            (identical(other.userName, userName) ||
                other.userName == userName) &&
            (identical(other.password, password) ||
                other.password == password));
  }

  @override
  int get hashCode => Object.hash(runtimeType, userName, password);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SignInEventImplCopyWith<_$SignInEventImpl> get copyWith =>
      __$$SignInEventImplCopyWithImpl<_$SignInEventImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String userName, String password)
        chooseExperience,
    required TResult Function() userData,
    required TResult Function(String fullName, String userName, String phone,
            String email, String password, String re_password)
        register,
    required TResult Function() addInfoEntreprise,
    required TResult Function() addInfoClient,
    required TResult Function(String data) sendCode,
    required TResult Function(Map<dynamic, dynamic> data) updateUserInfo,
    required TResult Function(String data, String code) verifyCode,
    required TResult Function(BuildContext context) signOut,
    required TResult Function() getUserEvent,
    required TResult Function(File? image) setCniImageAvant,
    required TResult Function(File? image) setCniImageArriere,
    required TResult Function(File? image) setCGImage,
    required TResult Function(FormData data) completeDevisInfo,
  }) {
    return chooseExperience(userName, password);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String userName, String password)? chooseExperience,
    TResult? Function()? userData,
    TResult? Function(String fullName, String userName, String phone,
            String email, String password, String re_password)?
        register,
    TResult? Function()? addInfoEntreprise,
    TResult? Function()? addInfoClient,
    TResult? Function(String data)? sendCode,
    TResult? Function(Map<dynamic, dynamic> data)? updateUserInfo,
    TResult? Function(String data, String code)? verifyCode,
    TResult? Function(BuildContext context)? signOut,
    TResult? Function()? getUserEvent,
    TResult? Function(File? image)? setCniImageAvant,
    TResult? Function(File? image)? setCniImageArriere,
    TResult? Function(File? image)? setCGImage,
    TResult? Function(FormData data)? completeDevisInfo,
  }) {
    return chooseExperience?.call(userName, password);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String userName, String password)? chooseExperience,
    TResult Function()? userData,
    TResult Function(String fullName, String userName, String phone,
            String email, String password, String re_password)?
        register,
    TResult Function()? addInfoEntreprise,
    TResult Function()? addInfoClient,
    TResult Function(String data)? sendCode,
    TResult Function(Map<dynamic, dynamic> data)? updateUserInfo,
    TResult Function(String data, String code)? verifyCode,
    TResult Function(BuildContext context)? signOut,
    TResult Function()? getUserEvent,
    TResult Function(File? image)? setCniImageAvant,
    TResult Function(File? image)? setCniImageArriere,
    TResult Function(File? image)? setCGImage,
    TResult Function(FormData data)? completeDevisInfo,
    required TResult orElse(),
  }) {
    if (chooseExperience != null) {
      return chooseExperience(userName, password);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SignInEvent value) chooseExperience,
    required TResult Function(UserDataEvent value) userData,
    required TResult Function(RegisterEvent value) register,
    required TResult Function(AddInfoEntreprise value) addInfoEntreprise,
    required TResult Function(AddInfoClient value) addInfoClient,
    required TResult Function(SendCode value) sendCode,
    required TResult Function(UpdateUserInfo value) updateUserInfo,
    required TResult Function(VerifyCode value) verifyCode,
    required TResult Function(SignOutEvent value) signOut,
    required TResult Function(GetUserEvent value) getUserEvent,
    required TResult Function(SetCniImageAvant value) setCniImageAvant,
    required TResult Function(SetCniImageArriere value) setCniImageArriere,
    required TResult Function(SetCGImage value) setCGImage,
    required TResult Function(CompleteDevisInfo value) completeDevisInfo,
  }) {
    return chooseExperience(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(SignInEvent value)? chooseExperience,
    TResult? Function(UserDataEvent value)? userData,
    TResult? Function(RegisterEvent value)? register,
    TResult? Function(AddInfoEntreprise value)? addInfoEntreprise,
    TResult? Function(AddInfoClient value)? addInfoClient,
    TResult? Function(SendCode value)? sendCode,
    TResult? Function(UpdateUserInfo value)? updateUserInfo,
    TResult? Function(VerifyCode value)? verifyCode,
    TResult? Function(SignOutEvent value)? signOut,
    TResult? Function(GetUserEvent value)? getUserEvent,
    TResult? Function(SetCniImageAvant value)? setCniImageAvant,
    TResult? Function(SetCniImageArriere value)? setCniImageArriere,
    TResult? Function(SetCGImage value)? setCGImage,
    TResult? Function(CompleteDevisInfo value)? completeDevisInfo,
  }) {
    return chooseExperience?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SignInEvent value)? chooseExperience,
    TResult Function(UserDataEvent value)? userData,
    TResult Function(RegisterEvent value)? register,
    TResult Function(AddInfoEntreprise value)? addInfoEntreprise,
    TResult Function(AddInfoClient value)? addInfoClient,
    TResult Function(SendCode value)? sendCode,
    TResult Function(UpdateUserInfo value)? updateUserInfo,
    TResult Function(VerifyCode value)? verifyCode,
    TResult Function(SignOutEvent value)? signOut,
    TResult Function(GetUserEvent value)? getUserEvent,
    TResult Function(SetCniImageAvant value)? setCniImageAvant,
    TResult Function(SetCniImageArriere value)? setCniImageArriere,
    TResult Function(SetCGImage value)? setCGImage,
    TResult Function(CompleteDevisInfo value)? completeDevisInfo,
    required TResult orElse(),
  }) {
    if (chooseExperience != null) {
      return chooseExperience(this);
    }
    return orElse();
  }
}

abstract class SignInEvent implements UserEvent {
  const factory SignInEvent(
      {required final String userName,
      required final String password}) = _$SignInEventImpl;

  String get userName;
  String get password;
  @JsonKey(ignore: true)
  _$$SignInEventImplCopyWith<_$SignInEventImpl> get copyWith =>
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
    extends _$UserEventCopyWithImpl<$Res, _$UserDataEventImpl>
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
    return 'UserEvent.userData()';
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
    required TResult Function(String userName, String password)
        chooseExperience,
    required TResult Function() userData,
    required TResult Function(String fullName, String userName, String phone,
            String email, String password, String re_password)
        register,
    required TResult Function() addInfoEntreprise,
    required TResult Function() addInfoClient,
    required TResult Function(String data) sendCode,
    required TResult Function(Map<dynamic, dynamic> data) updateUserInfo,
    required TResult Function(String data, String code) verifyCode,
    required TResult Function(BuildContext context) signOut,
    required TResult Function() getUserEvent,
    required TResult Function(File? image) setCniImageAvant,
    required TResult Function(File? image) setCniImageArriere,
    required TResult Function(File? image) setCGImage,
    required TResult Function(FormData data) completeDevisInfo,
  }) {
    return userData();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String userName, String password)? chooseExperience,
    TResult? Function()? userData,
    TResult? Function(String fullName, String userName, String phone,
            String email, String password, String re_password)?
        register,
    TResult? Function()? addInfoEntreprise,
    TResult? Function()? addInfoClient,
    TResult? Function(String data)? sendCode,
    TResult? Function(Map<dynamic, dynamic> data)? updateUserInfo,
    TResult? Function(String data, String code)? verifyCode,
    TResult? Function(BuildContext context)? signOut,
    TResult? Function()? getUserEvent,
    TResult? Function(File? image)? setCniImageAvant,
    TResult? Function(File? image)? setCniImageArriere,
    TResult? Function(File? image)? setCGImage,
    TResult? Function(FormData data)? completeDevisInfo,
  }) {
    return userData?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String userName, String password)? chooseExperience,
    TResult Function()? userData,
    TResult Function(String fullName, String userName, String phone,
            String email, String password, String re_password)?
        register,
    TResult Function()? addInfoEntreprise,
    TResult Function()? addInfoClient,
    TResult Function(String data)? sendCode,
    TResult Function(Map<dynamic, dynamic> data)? updateUserInfo,
    TResult Function(String data, String code)? verifyCode,
    TResult Function(BuildContext context)? signOut,
    TResult Function()? getUserEvent,
    TResult Function(File? image)? setCniImageAvant,
    TResult Function(File? image)? setCniImageArriere,
    TResult Function(File? image)? setCGImage,
    TResult Function(FormData data)? completeDevisInfo,
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
    required TResult Function(SignInEvent value) chooseExperience,
    required TResult Function(UserDataEvent value) userData,
    required TResult Function(RegisterEvent value) register,
    required TResult Function(AddInfoEntreprise value) addInfoEntreprise,
    required TResult Function(AddInfoClient value) addInfoClient,
    required TResult Function(SendCode value) sendCode,
    required TResult Function(UpdateUserInfo value) updateUserInfo,
    required TResult Function(VerifyCode value) verifyCode,
    required TResult Function(SignOutEvent value) signOut,
    required TResult Function(GetUserEvent value) getUserEvent,
    required TResult Function(SetCniImageAvant value) setCniImageAvant,
    required TResult Function(SetCniImageArriere value) setCniImageArriere,
    required TResult Function(SetCGImage value) setCGImage,
    required TResult Function(CompleteDevisInfo value) completeDevisInfo,
  }) {
    return userData(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(SignInEvent value)? chooseExperience,
    TResult? Function(UserDataEvent value)? userData,
    TResult? Function(RegisterEvent value)? register,
    TResult? Function(AddInfoEntreprise value)? addInfoEntreprise,
    TResult? Function(AddInfoClient value)? addInfoClient,
    TResult? Function(SendCode value)? sendCode,
    TResult? Function(UpdateUserInfo value)? updateUserInfo,
    TResult? Function(VerifyCode value)? verifyCode,
    TResult? Function(SignOutEvent value)? signOut,
    TResult? Function(GetUserEvent value)? getUserEvent,
    TResult? Function(SetCniImageAvant value)? setCniImageAvant,
    TResult? Function(SetCniImageArriere value)? setCniImageArriere,
    TResult? Function(SetCGImage value)? setCGImage,
    TResult? Function(CompleteDevisInfo value)? completeDevisInfo,
  }) {
    return userData?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SignInEvent value)? chooseExperience,
    TResult Function(UserDataEvent value)? userData,
    TResult Function(RegisterEvent value)? register,
    TResult Function(AddInfoEntreprise value)? addInfoEntreprise,
    TResult Function(AddInfoClient value)? addInfoClient,
    TResult Function(SendCode value)? sendCode,
    TResult Function(UpdateUserInfo value)? updateUserInfo,
    TResult Function(VerifyCode value)? verifyCode,
    TResult Function(SignOutEvent value)? signOut,
    TResult Function(GetUserEvent value)? getUserEvent,
    TResult Function(SetCniImageAvant value)? setCniImageAvant,
    TResult Function(SetCniImageArriere value)? setCniImageArriere,
    TResult Function(SetCGImage value)? setCGImage,
    TResult Function(CompleteDevisInfo value)? completeDevisInfo,
    required TResult orElse(),
  }) {
    if (userData != null) {
      return userData(this);
    }
    return orElse();
  }
}

abstract class UserDataEvent implements UserEvent {
  const factory UserDataEvent() = _$UserDataEventImpl;
}

/// @nodoc
abstract class _$$RegisterEventImplCopyWith<$Res> {
  factory _$$RegisterEventImplCopyWith(
          _$RegisterEventImpl value, $Res Function(_$RegisterEventImpl) then) =
      __$$RegisterEventImplCopyWithImpl<$Res>;
  @useResult
  $Res call(
      {String fullName,
      String userName,
      String phone,
      String email,
      String password,
      String re_password});
}

/// @nodoc
class __$$RegisterEventImplCopyWithImpl<$Res>
    extends _$UserEventCopyWithImpl<$Res, _$RegisterEventImpl>
    implements _$$RegisterEventImplCopyWith<$Res> {
  __$$RegisterEventImplCopyWithImpl(
      _$RegisterEventImpl _value, $Res Function(_$RegisterEventImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? fullName = null,
    Object? userName = null,
    Object? phone = null,
    Object? email = null,
    Object? password = null,
    Object? re_password = null,
  }) {
    return _then(_$RegisterEventImpl(
      fullName: null == fullName
          ? _value.fullName
          : fullName // ignore: cast_nullable_to_non_nullable
              as String,
      userName: null == userName
          ? _value.userName
          : userName // ignore: cast_nullable_to_non_nullable
              as String,
      phone: null == phone
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as String,
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      password: null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
      re_password: null == re_password
          ? _value.re_password
          : re_password // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$RegisterEventImpl implements RegisterEvent {
  const _$RegisterEventImpl(
      {required this.fullName,
      required this.userName,
      required this.phone,
      required this.email,
      required this.password,
      required this.re_password});

  @override
  final String fullName;
  @override
  final String userName;
  @override
  final String phone;
  @override
  final String email;
  @override
  final String password;
  @override
  final String re_password;

  @override
  String toString() {
    return 'UserEvent.register(fullName: $fullName, userName: $userName, phone: $phone, email: $email, password: $password, re_password: $re_password)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RegisterEventImpl &&
            (identical(other.fullName, fullName) ||
                other.fullName == fullName) &&
            (identical(other.userName, userName) ||
                other.userName == userName) &&
            (identical(other.phone, phone) || other.phone == phone) &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.password, password) ||
                other.password == password) &&
            (identical(other.re_password, re_password) ||
                other.re_password == re_password));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, fullName, userName, phone, email, password, re_password);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$RegisterEventImplCopyWith<_$RegisterEventImpl> get copyWith =>
      __$$RegisterEventImplCopyWithImpl<_$RegisterEventImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String userName, String password)
        chooseExperience,
    required TResult Function() userData,
    required TResult Function(String fullName, String userName, String phone,
            String email, String password, String re_password)
        register,
    required TResult Function() addInfoEntreprise,
    required TResult Function() addInfoClient,
    required TResult Function(String data) sendCode,
    required TResult Function(Map<dynamic, dynamic> data) updateUserInfo,
    required TResult Function(String data, String code) verifyCode,
    required TResult Function(BuildContext context) signOut,
    required TResult Function() getUserEvent,
    required TResult Function(File? image) setCniImageAvant,
    required TResult Function(File? image) setCniImageArriere,
    required TResult Function(File? image) setCGImage,
    required TResult Function(FormData data) completeDevisInfo,
  }) {
    return register(fullName, userName, phone, email, password, re_password);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String userName, String password)? chooseExperience,
    TResult? Function()? userData,
    TResult? Function(String fullName, String userName, String phone,
            String email, String password, String re_password)?
        register,
    TResult? Function()? addInfoEntreprise,
    TResult? Function()? addInfoClient,
    TResult? Function(String data)? sendCode,
    TResult? Function(Map<dynamic, dynamic> data)? updateUserInfo,
    TResult? Function(String data, String code)? verifyCode,
    TResult? Function(BuildContext context)? signOut,
    TResult? Function()? getUserEvent,
    TResult? Function(File? image)? setCniImageAvant,
    TResult? Function(File? image)? setCniImageArriere,
    TResult? Function(File? image)? setCGImage,
    TResult? Function(FormData data)? completeDevisInfo,
  }) {
    return register?.call(
        fullName, userName, phone, email, password, re_password);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String userName, String password)? chooseExperience,
    TResult Function()? userData,
    TResult Function(String fullName, String userName, String phone,
            String email, String password, String re_password)?
        register,
    TResult Function()? addInfoEntreprise,
    TResult Function()? addInfoClient,
    TResult Function(String data)? sendCode,
    TResult Function(Map<dynamic, dynamic> data)? updateUserInfo,
    TResult Function(String data, String code)? verifyCode,
    TResult Function(BuildContext context)? signOut,
    TResult Function()? getUserEvent,
    TResult Function(File? image)? setCniImageAvant,
    TResult Function(File? image)? setCniImageArriere,
    TResult Function(File? image)? setCGImage,
    TResult Function(FormData data)? completeDevisInfo,
    required TResult orElse(),
  }) {
    if (register != null) {
      return register(fullName, userName, phone, email, password, re_password);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SignInEvent value) chooseExperience,
    required TResult Function(UserDataEvent value) userData,
    required TResult Function(RegisterEvent value) register,
    required TResult Function(AddInfoEntreprise value) addInfoEntreprise,
    required TResult Function(AddInfoClient value) addInfoClient,
    required TResult Function(SendCode value) sendCode,
    required TResult Function(UpdateUserInfo value) updateUserInfo,
    required TResult Function(VerifyCode value) verifyCode,
    required TResult Function(SignOutEvent value) signOut,
    required TResult Function(GetUserEvent value) getUserEvent,
    required TResult Function(SetCniImageAvant value) setCniImageAvant,
    required TResult Function(SetCniImageArriere value) setCniImageArriere,
    required TResult Function(SetCGImage value) setCGImage,
    required TResult Function(CompleteDevisInfo value) completeDevisInfo,
  }) {
    return register(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(SignInEvent value)? chooseExperience,
    TResult? Function(UserDataEvent value)? userData,
    TResult? Function(RegisterEvent value)? register,
    TResult? Function(AddInfoEntreprise value)? addInfoEntreprise,
    TResult? Function(AddInfoClient value)? addInfoClient,
    TResult? Function(SendCode value)? sendCode,
    TResult? Function(UpdateUserInfo value)? updateUserInfo,
    TResult? Function(VerifyCode value)? verifyCode,
    TResult? Function(SignOutEvent value)? signOut,
    TResult? Function(GetUserEvent value)? getUserEvent,
    TResult? Function(SetCniImageAvant value)? setCniImageAvant,
    TResult? Function(SetCniImageArriere value)? setCniImageArriere,
    TResult? Function(SetCGImage value)? setCGImage,
    TResult? Function(CompleteDevisInfo value)? completeDevisInfo,
  }) {
    return register?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SignInEvent value)? chooseExperience,
    TResult Function(UserDataEvent value)? userData,
    TResult Function(RegisterEvent value)? register,
    TResult Function(AddInfoEntreprise value)? addInfoEntreprise,
    TResult Function(AddInfoClient value)? addInfoClient,
    TResult Function(SendCode value)? sendCode,
    TResult Function(UpdateUserInfo value)? updateUserInfo,
    TResult Function(VerifyCode value)? verifyCode,
    TResult Function(SignOutEvent value)? signOut,
    TResult Function(GetUserEvent value)? getUserEvent,
    TResult Function(SetCniImageAvant value)? setCniImageAvant,
    TResult Function(SetCniImageArriere value)? setCniImageArriere,
    TResult Function(SetCGImage value)? setCGImage,
    TResult Function(CompleteDevisInfo value)? completeDevisInfo,
    required TResult orElse(),
  }) {
    if (register != null) {
      return register(this);
    }
    return orElse();
  }
}

abstract class RegisterEvent implements UserEvent {
  const factory RegisterEvent(
      {required final String fullName,
      required final String userName,
      required final String phone,
      required final String email,
      required final String password,
      required final String re_password}) = _$RegisterEventImpl;

  String get fullName;
  String get userName;
  String get phone;
  String get email;
  String get password;
  String get re_password;
  @JsonKey(ignore: true)
  _$$RegisterEventImplCopyWith<_$RegisterEventImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$AddInfoEntrepriseImplCopyWith<$Res> {
  factory _$$AddInfoEntrepriseImplCopyWith(_$AddInfoEntrepriseImpl value,
          $Res Function(_$AddInfoEntrepriseImpl) then) =
      __$$AddInfoEntrepriseImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$AddInfoEntrepriseImplCopyWithImpl<$Res>
    extends _$UserEventCopyWithImpl<$Res, _$AddInfoEntrepriseImpl>
    implements _$$AddInfoEntrepriseImplCopyWith<$Res> {
  __$$AddInfoEntrepriseImplCopyWithImpl(_$AddInfoEntrepriseImpl _value,
      $Res Function(_$AddInfoEntrepriseImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$AddInfoEntrepriseImpl implements AddInfoEntreprise {
  const _$AddInfoEntrepriseImpl();

  @override
  String toString() {
    return 'UserEvent.addInfoEntreprise()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$AddInfoEntrepriseImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String userName, String password)
        chooseExperience,
    required TResult Function() userData,
    required TResult Function(String fullName, String userName, String phone,
            String email, String password, String re_password)
        register,
    required TResult Function() addInfoEntreprise,
    required TResult Function() addInfoClient,
    required TResult Function(String data) sendCode,
    required TResult Function(Map<dynamic, dynamic> data) updateUserInfo,
    required TResult Function(String data, String code) verifyCode,
    required TResult Function(BuildContext context) signOut,
    required TResult Function() getUserEvent,
    required TResult Function(File? image) setCniImageAvant,
    required TResult Function(File? image) setCniImageArriere,
    required TResult Function(File? image) setCGImage,
    required TResult Function(FormData data) completeDevisInfo,
  }) {
    return addInfoEntreprise();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String userName, String password)? chooseExperience,
    TResult? Function()? userData,
    TResult? Function(String fullName, String userName, String phone,
            String email, String password, String re_password)?
        register,
    TResult? Function()? addInfoEntreprise,
    TResult? Function()? addInfoClient,
    TResult? Function(String data)? sendCode,
    TResult? Function(Map<dynamic, dynamic> data)? updateUserInfo,
    TResult? Function(String data, String code)? verifyCode,
    TResult? Function(BuildContext context)? signOut,
    TResult? Function()? getUserEvent,
    TResult? Function(File? image)? setCniImageAvant,
    TResult? Function(File? image)? setCniImageArriere,
    TResult? Function(File? image)? setCGImage,
    TResult? Function(FormData data)? completeDevisInfo,
  }) {
    return addInfoEntreprise?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String userName, String password)? chooseExperience,
    TResult Function()? userData,
    TResult Function(String fullName, String userName, String phone,
            String email, String password, String re_password)?
        register,
    TResult Function()? addInfoEntreprise,
    TResult Function()? addInfoClient,
    TResult Function(String data)? sendCode,
    TResult Function(Map<dynamic, dynamic> data)? updateUserInfo,
    TResult Function(String data, String code)? verifyCode,
    TResult Function(BuildContext context)? signOut,
    TResult Function()? getUserEvent,
    TResult Function(File? image)? setCniImageAvant,
    TResult Function(File? image)? setCniImageArriere,
    TResult Function(File? image)? setCGImage,
    TResult Function(FormData data)? completeDevisInfo,
    required TResult orElse(),
  }) {
    if (addInfoEntreprise != null) {
      return addInfoEntreprise();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SignInEvent value) chooseExperience,
    required TResult Function(UserDataEvent value) userData,
    required TResult Function(RegisterEvent value) register,
    required TResult Function(AddInfoEntreprise value) addInfoEntreprise,
    required TResult Function(AddInfoClient value) addInfoClient,
    required TResult Function(SendCode value) sendCode,
    required TResult Function(UpdateUserInfo value) updateUserInfo,
    required TResult Function(VerifyCode value) verifyCode,
    required TResult Function(SignOutEvent value) signOut,
    required TResult Function(GetUserEvent value) getUserEvent,
    required TResult Function(SetCniImageAvant value) setCniImageAvant,
    required TResult Function(SetCniImageArriere value) setCniImageArriere,
    required TResult Function(SetCGImage value) setCGImage,
    required TResult Function(CompleteDevisInfo value) completeDevisInfo,
  }) {
    return addInfoEntreprise(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(SignInEvent value)? chooseExperience,
    TResult? Function(UserDataEvent value)? userData,
    TResult? Function(RegisterEvent value)? register,
    TResult? Function(AddInfoEntreprise value)? addInfoEntreprise,
    TResult? Function(AddInfoClient value)? addInfoClient,
    TResult? Function(SendCode value)? sendCode,
    TResult? Function(UpdateUserInfo value)? updateUserInfo,
    TResult? Function(VerifyCode value)? verifyCode,
    TResult? Function(SignOutEvent value)? signOut,
    TResult? Function(GetUserEvent value)? getUserEvent,
    TResult? Function(SetCniImageAvant value)? setCniImageAvant,
    TResult? Function(SetCniImageArriere value)? setCniImageArriere,
    TResult? Function(SetCGImage value)? setCGImage,
    TResult? Function(CompleteDevisInfo value)? completeDevisInfo,
  }) {
    return addInfoEntreprise?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SignInEvent value)? chooseExperience,
    TResult Function(UserDataEvent value)? userData,
    TResult Function(RegisterEvent value)? register,
    TResult Function(AddInfoEntreprise value)? addInfoEntreprise,
    TResult Function(AddInfoClient value)? addInfoClient,
    TResult Function(SendCode value)? sendCode,
    TResult Function(UpdateUserInfo value)? updateUserInfo,
    TResult Function(VerifyCode value)? verifyCode,
    TResult Function(SignOutEvent value)? signOut,
    TResult Function(GetUserEvent value)? getUserEvent,
    TResult Function(SetCniImageAvant value)? setCniImageAvant,
    TResult Function(SetCniImageArriere value)? setCniImageArriere,
    TResult Function(SetCGImage value)? setCGImage,
    TResult Function(CompleteDevisInfo value)? completeDevisInfo,
    required TResult orElse(),
  }) {
    if (addInfoEntreprise != null) {
      return addInfoEntreprise(this);
    }
    return orElse();
  }
}

abstract class AddInfoEntreprise implements UserEvent {
  const factory AddInfoEntreprise() = _$AddInfoEntrepriseImpl;
}

/// @nodoc
abstract class _$$AddInfoClientImplCopyWith<$Res> {
  factory _$$AddInfoClientImplCopyWith(
          _$AddInfoClientImpl value, $Res Function(_$AddInfoClientImpl) then) =
      __$$AddInfoClientImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$AddInfoClientImplCopyWithImpl<$Res>
    extends _$UserEventCopyWithImpl<$Res, _$AddInfoClientImpl>
    implements _$$AddInfoClientImplCopyWith<$Res> {
  __$$AddInfoClientImplCopyWithImpl(
      _$AddInfoClientImpl _value, $Res Function(_$AddInfoClientImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$AddInfoClientImpl implements AddInfoClient {
  const _$AddInfoClientImpl();

  @override
  String toString() {
    return 'UserEvent.addInfoClient()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$AddInfoClientImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String userName, String password)
        chooseExperience,
    required TResult Function() userData,
    required TResult Function(String fullName, String userName, String phone,
            String email, String password, String re_password)
        register,
    required TResult Function() addInfoEntreprise,
    required TResult Function() addInfoClient,
    required TResult Function(String data) sendCode,
    required TResult Function(Map<dynamic, dynamic> data) updateUserInfo,
    required TResult Function(String data, String code) verifyCode,
    required TResult Function(BuildContext context) signOut,
    required TResult Function() getUserEvent,
    required TResult Function(File? image) setCniImageAvant,
    required TResult Function(File? image) setCniImageArriere,
    required TResult Function(File? image) setCGImage,
    required TResult Function(FormData data) completeDevisInfo,
  }) {
    return addInfoClient();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String userName, String password)? chooseExperience,
    TResult? Function()? userData,
    TResult? Function(String fullName, String userName, String phone,
            String email, String password, String re_password)?
        register,
    TResult? Function()? addInfoEntreprise,
    TResult? Function()? addInfoClient,
    TResult? Function(String data)? sendCode,
    TResult? Function(Map<dynamic, dynamic> data)? updateUserInfo,
    TResult? Function(String data, String code)? verifyCode,
    TResult? Function(BuildContext context)? signOut,
    TResult? Function()? getUserEvent,
    TResult? Function(File? image)? setCniImageAvant,
    TResult? Function(File? image)? setCniImageArriere,
    TResult? Function(File? image)? setCGImage,
    TResult? Function(FormData data)? completeDevisInfo,
  }) {
    return addInfoClient?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String userName, String password)? chooseExperience,
    TResult Function()? userData,
    TResult Function(String fullName, String userName, String phone,
            String email, String password, String re_password)?
        register,
    TResult Function()? addInfoEntreprise,
    TResult Function()? addInfoClient,
    TResult Function(String data)? sendCode,
    TResult Function(Map<dynamic, dynamic> data)? updateUserInfo,
    TResult Function(String data, String code)? verifyCode,
    TResult Function(BuildContext context)? signOut,
    TResult Function()? getUserEvent,
    TResult Function(File? image)? setCniImageAvant,
    TResult Function(File? image)? setCniImageArriere,
    TResult Function(File? image)? setCGImage,
    TResult Function(FormData data)? completeDevisInfo,
    required TResult orElse(),
  }) {
    if (addInfoClient != null) {
      return addInfoClient();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SignInEvent value) chooseExperience,
    required TResult Function(UserDataEvent value) userData,
    required TResult Function(RegisterEvent value) register,
    required TResult Function(AddInfoEntreprise value) addInfoEntreprise,
    required TResult Function(AddInfoClient value) addInfoClient,
    required TResult Function(SendCode value) sendCode,
    required TResult Function(UpdateUserInfo value) updateUserInfo,
    required TResult Function(VerifyCode value) verifyCode,
    required TResult Function(SignOutEvent value) signOut,
    required TResult Function(GetUserEvent value) getUserEvent,
    required TResult Function(SetCniImageAvant value) setCniImageAvant,
    required TResult Function(SetCniImageArriere value) setCniImageArriere,
    required TResult Function(SetCGImage value) setCGImage,
    required TResult Function(CompleteDevisInfo value) completeDevisInfo,
  }) {
    return addInfoClient(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(SignInEvent value)? chooseExperience,
    TResult? Function(UserDataEvent value)? userData,
    TResult? Function(RegisterEvent value)? register,
    TResult? Function(AddInfoEntreprise value)? addInfoEntreprise,
    TResult? Function(AddInfoClient value)? addInfoClient,
    TResult? Function(SendCode value)? sendCode,
    TResult? Function(UpdateUserInfo value)? updateUserInfo,
    TResult? Function(VerifyCode value)? verifyCode,
    TResult? Function(SignOutEvent value)? signOut,
    TResult? Function(GetUserEvent value)? getUserEvent,
    TResult? Function(SetCniImageAvant value)? setCniImageAvant,
    TResult? Function(SetCniImageArriere value)? setCniImageArriere,
    TResult? Function(SetCGImage value)? setCGImage,
    TResult? Function(CompleteDevisInfo value)? completeDevisInfo,
  }) {
    return addInfoClient?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SignInEvent value)? chooseExperience,
    TResult Function(UserDataEvent value)? userData,
    TResult Function(RegisterEvent value)? register,
    TResult Function(AddInfoEntreprise value)? addInfoEntreprise,
    TResult Function(AddInfoClient value)? addInfoClient,
    TResult Function(SendCode value)? sendCode,
    TResult Function(UpdateUserInfo value)? updateUserInfo,
    TResult Function(VerifyCode value)? verifyCode,
    TResult Function(SignOutEvent value)? signOut,
    TResult Function(GetUserEvent value)? getUserEvent,
    TResult Function(SetCniImageAvant value)? setCniImageAvant,
    TResult Function(SetCniImageArriere value)? setCniImageArriere,
    TResult Function(SetCGImage value)? setCGImage,
    TResult Function(CompleteDevisInfo value)? completeDevisInfo,
    required TResult orElse(),
  }) {
    if (addInfoClient != null) {
      return addInfoClient(this);
    }
    return orElse();
  }
}

abstract class AddInfoClient implements UserEvent {
  const factory AddInfoClient() = _$AddInfoClientImpl;
}

/// @nodoc
abstract class _$$SendCodeImplCopyWith<$Res> {
  factory _$$SendCodeImplCopyWith(
          _$SendCodeImpl value, $Res Function(_$SendCodeImpl) then) =
      __$$SendCodeImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String data});
}

/// @nodoc
class __$$SendCodeImplCopyWithImpl<$Res>
    extends _$UserEventCopyWithImpl<$Res, _$SendCodeImpl>
    implements _$$SendCodeImplCopyWith<$Res> {
  __$$SendCodeImplCopyWithImpl(
      _$SendCodeImpl _value, $Res Function(_$SendCodeImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
  }) {
    return _then(_$SendCodeImpl(
      data: null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$SendCodeImpl implements SendCode {
  const _$SendCodeImpl({required this.data});

  @override
  final String data;

  @override
  String toString() {
    return 'UserEvent.sendCode(data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SendCodeImpl &&
            (identical(other.data, data) || other.data == data));
  }

  @override
  int get hashCode => Object.hash(runtimeType, data);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SendCodeImplCopyWith<_$SendCodeImpl> get copyWith =>
      __$$SendCodeImplCopyWithImpl<_$SendCodeImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String userName, String password)
        chooseExperience,
    required TResult Function() userData,
    required TResult Function(String fullName, String userName, String phone,
            String email, String password, String re_password)
        register,
    required TResult Function() addInfoEntreprise,
    required TResult Function() addInfoClient,
    required TResult Function(String data) sendCode,
    required TResult Function(Map<dynamic, dynamic> data) updateUserInfo,
    required TResult Function(String data, String code) verifyCode,
    required TResult Function(BuildContext context) signOut,
    required TResult Function() getUserEvent,
    required TResult Function(File? image) setCniImageAvant,
    required TResult Function(File? image) setCniImageArriere,
    required TResult Function(File? image) setCGImage,
    required TResult Function(FormData data) completeDevisInfo,
  }) {
    return sendCode(data);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String userName, String password)? chooseExperience,
    TResult? Function()? userData,
    TResult? Function(String fullName, String userName, String phone,
            String email, String password, String re_password)?
        register,
    TResult? Function()? addInfoEntreprise,
    TResult? Function()? addInfoClient,
    TResult? Function(String data)? sendCode,
    TResult? Function(Map<dynamic, dynamic> data)? updateUserInfo,
    TResult? Function(String data, String code)? verifyCode,
    TResult? Function(BuildContext context)? signOut,
    TResult? Function()? getUserEvent,
    TResult? Function(File? image)? setCniImageAvant,
    TResult? Function(File? image)? setCniImageArriere,
    TResult? Function(File? image)? setCGImage,
    TResult? Function(FormData data)? completeDevisInfo,
  }) {
    return sendCode?.call(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String userName, String password)? chooseExperience,
    TResult Function()? userData,
    TResult Function(String fullName, String userName, String phone,
            String email, String password, String re_password)?
        register,
    TResult Function()? addInfoEntreprise,
    TResult Function()? addInfoClient,
    TResult Function(String data)? sendCode,
    TResult Function(Map<dynamic, dynamic> data)? updateUserInfo,
    TResult Function(String data, String code)? verifyCode,
    TResult Function(BuildContext context)? signOut,
    TResult Function()? getUserEvent,
    TResult Function(File? image)? setCniImageAvant,
    TResult Function(File? image)? setCniImageArriere,
    TResult Function(File? image)? setCGImage,
    TResult Function(FormData data)? completeDevisInfo,
    required TResult orElse(),
  }) {
    if (sendCode != null) {
      return sendCode(data);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SignInEvent value) chooseExperience,
    required TResult Function(UserDataEvent value) userData,
    required TResult Function(RegisterEvent value) register,
    required TResult Function(AddInfoEntreprise value) addInfoEntreprise,
    required TResult Function(AddInfoClient value) addInfoClient,
    required TResult Function(SendCode value) sendCode,
    required TResult Function(UpdateUserInfo value) updateUserInfo,
    required TResult Function(VerifyCode value) verifyCode,
    required TResult Function(SignOutEvent value) signOut,
    required TResult Function(GetUserEvent value) getUserEvent,
    required TResult Function(SetCniImageAvant value) setCniImageAvant,
    required TResult Function(SetCniImageArriere value) setCniImageArriere,
    required TResult Function(SetCGImage value) setCGImage,
    required TResult Function(CompleteDevisInfo value) completeDevisInfo,
  }) {
    return sendCode(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(SignInEvent value)? chooseExperience,
    TResult? Function(UserDataEvent value)? userData,
    TResult? Function(RegisterEvent value)? register,
    TResult? Function(AddInfoEntreprise value)? addInfoEntreprise,
    TResult? Function(AddInfoClient value)? addInfoClient,
    TResult? Function(SendCode value)? sendCode,
    TResult? Function(UpdateUserInfo value)? updateUserInfo,
    TResult? Function(VerifyCode value)? verifyCode,
    TResult? Function(SignOutEvent value)? signOut,
    TResult? Function(GetUserEvent value)? getUserEvent,
    TResult? Function(SetCniImageAvant value)? setCniImageAvant,
    TResult? Function(SetCniImageArriere value)? setCniImageArriere,
    TResult? Function(SetCGImage value)? setCGImage,
    TResult? Function(CompleteDevisInfo value)? completeDevisInfo,
  }) {
    return sendCode?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SignInEvent value)? chooseExperience,
    TResult Function(UserDataEvent value)? userData,
    TResult Function(RegisterEvent value)? register,
    TResult Function(AddInfoEntreprise value)? addInfoEntreprise,
    TResult Function(AddInfoClient value)? addInfoClient,
    TResult Function(SendCode value)? sendCode,
    TResult Function(UpdateUserInfo value)? updateUserInfo,
    TResult Function(VerifyCode value)? verifyCode,
    TResult Function(SignOutEvent value)? signOut,
    TResult Function(GetUserEvent value)? getUserEvent,
    TResult Function(SetCniImageAvant value)? setCniImageAvant,
    TResult Function(SetCniImageArriere value)? setCniImageArriere,
    TResult Function(SetCGImage value)? setCGImage,
    TResult Function(CompleteDevisInfo value)? completeDevisInfo,
    required TResult orElse(),
  }) {
    if (sendCode != null) {
      return sendCode(this);
    }
    return orElse();
  }
}

abstract class SendCode implements UserEvent {
  const factory SendCode({required final String data}) = _$SendCodeImpl;

  String get data;
  @JsonKey(ignore: true)
  _$$SendCodeImplCopyWith<_$SendCodeImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$UpdateUserInfoImplCopyWith<$Res> {
  factory _$$UpdateUserInfoImplCopyWith(_$UpdateUserInfoImpl value,
          $Res Function(_$UpdateUserInfoImpl) then) =
      __$$UpdateUserInfoImplCopyWithImpl<$Res>;
  @useResult
  $Res call({Map<dynamic, dynamic> data});
}

/// @nodoc
class __$$UpdateUserInfoImplCopyWithImpl<$Res>
    extends _$UserEventCopyWithImpl<$Res, _$UpdateUserInfoImpl>
    implements _$$UpdateUserInfoImplCopyWith<$Res> {
  __$$UpdateUserInfoImplCopyWithImpl(
      _$UpdateUserInfoImpl _value, $Res Function(_$UpdateUserInfoImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
  }) {
    return _then(_$UpdateUserInfoImpl(
      data: null == data
          ? _value._data
          : data // ignore: cast_nullable_to_non_nullable
              as Map<dynamic, dynamic>,
    ));
  }
}

/// @nodoc

class _$UpdateUserInfoImpl implements UpdateUserInfo {
  const _$UpdateUserInfoImpl({required final Map<dynamic, dynamic> data})
      : _data = data;

  final Map<dynamic, dynamic> _data;
  @override
  Map<dynamic, dynamic> get data {
    if (_data is EqualUnmodifiableMapView) return _data;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_data);
  }

  @override
  String toString() {
    return 'UserEvent.updateUserInfo(data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UpdateUserInfoImpl &&
            const DeepCollectionEquality().equals(other._data, _data));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_data));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UpdateUserInfoImplCopyWith<_$UpdateUserInfoImpl> get copyWith =>
      __$$UpdateUserInfoImplCopyWithImpl<_$UpdateUserInfoImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String userName, String password)
        chooseExperience,
    required TResult Function() userData,
    required TResult Function(String fullName, String userName, String phone,
            String email, String password, String re_password)
        register,
    required TResult Function() addInfoEntreprise,
    required TResult Function() addInfoClient,
    required TResult Function(String data) sendCode,
    required TResult Function(Map<dynamic, dynamic> data) updateUserInfo,
    required TResult Function(String data, String code) verifyCode,
    required TResult Function(BuildContext context) signOut,
    required TResult Function() getUserEvent,
    required TResult Function(File? image) setCniImageAvant,
    required TResult Function(File? image) setCniImageArriere,
    required TResult Function(File? image) setCGImage,
    required TResult Function(FormData data) completeDevisInfo,
  }) {
    return updateUserInfo(data);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String userName, String password)? chooseExperience,
    TResult? Function()? userData,
    TResult? Function(String fullName, String userName, String phone,
            String email, String password, String re_password)?
        register,
    TResult? Function()? addInfoEntreprise,
    TResult? Function()? addInfoClient,
    TResult? Function(String data)? sendCode,
    TResult? Function(Map<dynamic, dynamic> data)? updateUserInfo,
    TResult? Function(String data, String code)? verifyCode,
    TResult? Function(BuildContext context)? signOut,
    TResult? Function()? getUserEvent,
    TResult? Function(File? image)? setCniImageAvant,
    TResult? Function(File? image)? setCniImageArriere,
    TResult? Function(File? image)? setCGImage,
    TResult? Function(FormData data)? completeDevisInfo,
  }) {
    return updateUserInfo?.call(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String userName, String password)? chooseExperience,
    TResult Function()? userData,
    TResult Function(String fullName, String userName, String phone,
            String email, String password, String re_password)?
        register,
    TResult Function()? addInfoEntreprise,
    TResult Function()? addInfoClient,
    TResult Function(String data)? sendCode,
    TResult Function(Map<dynamic, dynamic> data)? updateUserInfo,
    TResult Function(String data, String code)? verifyCode,
    TResult Function(BuildContext context)? signOut,
    TResult Function()? getUserEvent,
    TResult Function(File? image)? setCniImageAvant,
    TResult Function(File? image)? setCniImageArriere,
    TResult Function(File? image)? setCGImage,
    TResult Function(FormData data)? completeDevisInfo,
    required TResult orElse(),
  }) {
    if (updateUserInfo != null) {
      return updateUserInfo(data);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SignInEvent value) chooseExperience,
    required TResult Function(UserDataEvent value) userData,
    required TResult Function(RegisterEvent value) register,
    required TResult Function(AddInfoEntreprise value) addInfoEntreprise,
    required TResult Function(AddInfoClient value) addInfoClient,
    required TResult Function(SendCode value) sendCode,
    required TResult Function(UpdateUserInfo value) updateUserInfo,
    required TResult Function(VerifyCode value) verifyCode,
    required TResult Function(SignOutEvent value) signOut,
    required TResult Function(GetUserEvent value) getUserEvent,
    required TResult Function(SetCniImageAvant value) setCniImageAvant,
    required TResult Function(SetCniImageArriere value) setCniImageArriere,
    required TResult Function(SetCGImage value) setCGImage,
    required TResult Function(CompleteDevisInfo value) completeDevisInfo,
  }) {
    return updateUserInfo(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(SignInEvent value)? chooseExperience,
    TResult? Function(UserDataEvent value)? userData,
    TResult? Function(RegisterEvent value)? register,
    TResult? Function(AddInfoEntreprise value)? addInfoEntreprise,
    TResult? Function(AddInfoClient value)? addInfoClient,
    TResult? Function(SendCode value)? sendCode,
    TResult? Function(UpdateUserInfo value)? updateUserInfo,
    TResult? Function(VerifyCode value)? verifyCode,
    TResult? Function(SignOutEvent value)? signOut,
    TResult? Function(GetUserEvent value)? getUserEvent,
    TResult? Function(SetCniImageAvant value)? setCniImageAvant,
    TResult? Function(SetCniImageArriere value)? setCniImageArriere,
    TResult? Function(SetCGImage value)? setCGImage,
    TResult? Function(CompleteDevisInfo value)? completeDevisInfo,
  }) {
    return updateUserInfo?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SignInEvent value)? chooseExperience,
    TResult Function(UserDataEvent value)? userData,
    TResult Function(RegisterEvent value)? register,
    TResult Function(AddInfoEntreprise value)? addInfoEntreprise,
    TResult Function(AddInfoClient value)? addInfoClient,
    TResult Function(SendCode value)? sendCode,
    TResult Function(UpdateUserInfo value)? updateUserInfo,
    TResult Function(VerifyCode value)? verifyCode,
    TResult Function(SignOutEvent value)? signOut,
    TResult Function(GetUserEvent value)? getUserEvent,
    TResult Function(SetCniImageAvant value)? setCniImageAvant,
    TResult Function(SetCniImageArriere value)? setCniImageArriere,
    TResult Function(SetCGImage value)? setCGImage,
    TResult Function(CompleteDevisInfo value)? completeDevisInfo,
    required TResult orElse(),
  }) {
    if (updateUserInfo != null) {
      return updateUserInfo(this);
    }
    return orElse();
  }
}

abstract class UpdateUserInfo implements UserEvent {
  const factory UpdateUserInfo({required final Map<dynamic, dynamic> data}) =
      _$UpdateUserInfoImpl;

  Map<dynamic, dynamic> get data;
  @JsonKey(ignore: true)
  _$$UpdateUserInfoImplCopyWith<_$UpdateUserInfoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$VerifyCodeImplCopyWith<$Res> {
  factory _$$VerifyCodeImplCopyWith(
          _$VerifyCodeImpl value, $Res Function(_$VerifyCodeImpl) then) =
      __$$VerifyCodeImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String data, String code});
}

/// @nodoc
class __$$VerifyCodeImplCopyWithImpl<$Res>
    extends _$UserEventCopyWithImpl<$Res, _$VerifyCodeImpl>
    implements _$$VerifyCodeImplCopyWith<$Res> {
  __$$VerifyCodeImplCopyWithImpl(
      _$VerifyCodeImpl _value, $Res Function(_$VerifyCodeImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
    Object? code = null,
  }) {
    return _then(_$VerifyCodeImpl(
      data: null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as String,
      code: null == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$VerifyCodeImpl implements VerifyCode {
  const _$VerifyCodeImpl({required this.data, required this.code});

  @override
  final String data;
  @override
  final String code;

  @override
  String toString() {
    return 'UserEvent.verifyCode(data: $data, code: $code)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$VerifyCodeImpl &&
            (identical(other.data, data) || other.data == data) &&
            (identical(other.code, code) || other.code == code));
  }

  @override
  int get hashCode => Object.hash(runtimeType, data, code);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$VerifyCodeImplCopyWith<_$VerifyCodeImpl> get copyWith =>
      __$$VerifyCodeImplCopyWithImpl<_$VerifyCodeImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String userName, String password)
        chooseExperience,
    required TResult Function() userData,
    required TResult Function(String fullName, String userName, String phone,
            String email, String password, String re_password)
        register,
    required TResult Function() addInfoEntreprise,
    required TResult Function() addInfoClient,
    required TResult Function(String data) sendCode,
    required TResult Function(Map<dynamic, dynamic> data) updateUserInfo,
    required TResult Function(String data, String code) verifyCode,
    required TResult Function(BuildContext context) signOut,
    required TResult Function() getUserEvent,
    required TResult Function(File? image) setCniImageAvant,
    required TResult Function(File? image) setCniImageArriere,
    required TResult Function(File? image) setCGImage,
    required TResult Function(FormData data) completeDevisInfo,
  }) {
    return verifyCode(data, code);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String userName, String password)? chooseExperience,
    TResult? Function()? userData,
    TResult? Function(String fullName, String userName, String phone,
            String email, String password, String re_password)?
        register,
    TResult? Function()? addInfoEntreprise,
    TResult? Function()? addInfoClient,
    TResult? Function(String data)? sendCode,
    TResult? Function(Map<dynamic, dynamic> data)? updateUserInfo,
    TResult? Function(String data, String code)? verifyCode,
    TResult? Function(BuildContext context)? signOut,
    TResult? Function()? getUserEvent,
    TResult? Function(File? image)? setCniImageAvant,
    TResult? Function(File? image)? setCniImageArriere,
    TResult? Function(File? image)? setCGImage,
    TResult? Function(FormData data)? completeDevisInfo,
  }) {
    return verifyCode?.call(data, code);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String userName, String password)? chooseExperience,
    TResult Function()? userData,
    TResult Function(String fullName, String userName, String phone,
            String email, String password, String re_password)?
        register,
    TResult Function()? addInfoEntreprise,
    TResult Function()? addInfoClient,
    TResult Function(String data)? sendCode,
    TResult Function(Map<dynamic, dynamic> data)? updateUserInfo,
    TResult Function(String data, String code)? verifyCode,
    TResult Function(BuildContext context)? signOut,
    TResult Function()? getUserEvent,
    TResult Function(File? image)? setCniImageAvant,
    TResult Function(File? image)? setCniImageArriere,
    TResult Function(File? image)? setCGImage,
    TResult Function(FormData data)? completeDevisInfo,
    required TResult orElse(),
  }) {
    if (verifyCode != null) {
      return verifyCode(data, code);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SignInEvent value) chooseExperience,
    required TResult Function(UserDataEvent value) userData,
    required TResult Function(RegisterEvent value) register,
    required TResult Function(AddInfoEntreprise value) addInfoEntreprise,
    required TResult Function(AddInfoClient value) addInfoClient,
    required TResult Function(SendCode value) sendCode,
    required TResult Function(UpdateUserInfo value) updateUserInfo,
    required TResult Function(VerifyCode value) verifyCode,
    required TResult Function(SignOutEvent value) signOut,
    required TResult Function(GetUserEvent value) getUserEvent,
    required TResult Function(SetCniImageAvant value) setCniImageAvant,
    required TResult Function(SetCniImageArriere value) setCniImageArriere,
    required TResult Function(SetCGImage value) setCGImage,
    required TResult Function(CompleteDevisInfo value) completeDevisInfo,
  }) {
    return verifyCode(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(SignInEvent value)? chooseExperience,
    TResult? Function(UserDataEvent value)? userData,
    TResult? Function(RegisterEvent value)? register,
    TResult? Function(AddInfoEntreprise value)? addInfoEntreprise,
    TResult? Function(AddInfoClient value)? addInfoClient,
    TResult? Function(SendCode value)? sendCode,
    TResult? Function(UpdateUserInfo value)? updateUserInfo,
    TResult? Function(VerifyCode value)? verifyCode,
    TResult? Function(SignOutEvent value)? signOut,
    TResult? Function(GetUserEvent value)? getUserEvent,
    TResult? Function(SetCniImageAvant value)? setCniImageAvant,
    TResult? Function(SetCniImageArriere value)? setCniImageArriere,
    TResult? Function(SetCGImage value)? setCGImage,
    TResult? Function(CompleteDevisInfo value)? completeDevisInfo,
  }) {
    return verifyCode?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SignInEvent value)? chooseExperience,
    TResult Function(UserDataEvent value)? userData,
    TResult Function(RegisterEvent value)? register,
    TResult Function(AddInfoEntreprise value)? addInfoEntreprise,
    TResult Function(AddInfoClient value)? addInfoClient,
    TResult Function(SendCode value)? sendCode,
    TResult Function(UpdateUserInfo value)? updateUserInfo,
    TResult Function(VerifyCode value)? verifyCode,
    TResult Function(SignOutEvent value)? signOut,
    TResult Function(GetUserEvent value)? getUserEvent,
    TResult Function(SetCniImageAvant value)? setCniImageAvant,
    TResult Function(SetCniImageArriere value)? setCniImageArriere,
    TResult Function(SetCGImage value)? setCGImage,
    TResult Function(CompleteDevisInfo value)? completeDevisInfo,
    required TResult orElse(),
  }) {
    if (verifyCode != null) {
      return verifyCode(this);
    }
    return orElse();
  }
}

abstract class VerifyCode implements UserEvent {
  const factory VerifyCode(
      {required final String data,
      required final String code}) = _$VerifyCodeImpl;

  String get data;
  String get code;
  @JsonKey(ignore: true)
  _$$VerifyCodeImplCopyWith<_$VerifyCodeImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SignOutEventImplCopyWith<$Res> {
  factory _$$SignOutEventImplCopyWith(
          _$SignOutEventImpl value, $Res Function(_$SignOutEventImpl) then) =
      __$$SignOutEventImplCopyWithImpl<$Res>;
  @useResult
  $Res call({BuildContext context});
}

/// @nodoc
class __$$SignOutEventImplCopyWithImpl<$Res>
    extends _$UserEventCopyWithImpl<$Res, _$SignOutEventImpl>
    implements _$$SignOutEventImplCopyWith<$Res> {
  __$$SignOutEventImplCopyWithImpl(
      _$SignOutEventImpl _value, $Res Function(_$SignOutEventImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? context = null,
  }) {
    return _then(_$SignOutEventImpl(
      context: null == context
          ? _value.context
          : context // ignore: cast_nullable_to_non_nullable
              as BuildContext,
    ));
  }
}

/// @nodoc

class _$SignOutEventImpl implements SignOutEvent {
  const _$SignOutEventImpl({required this.context});

  @override
  final BuildContext context;

  @override
  String toString() {
    return 'UserEvent.signOut(context: $context)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SignOutEventImpl &&
            (identical(other.context, context) || other.context == context));
  }

  @override
  int get hashCode => Object.hash(runtimeType, context);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SignOutEventImplCopyWith<_$SignOutEventImpl> get copyWith =>
      __$$SignOutEventImplCopyWithImpl<_$SignOutEventImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String userName, String password)
        chooseExperience,
    required TResult Function() userData,
    required TResult Function(String fullName, String userName, String phone,
            String email, String password, String re_password)
        register,
    required TResult Function() addInfoEntreprise,
    required TResult Function() addInfoClient,
    required TResult Function(String data) sendCode,
    required TResult Function(Map<dynamic, dynamic> data) updateUserInfo,
    required TResult Function(String data, String code) verifyCode,
    required TResult Function(BuildContext context) signOut,
    required TResult Function() getUserEvent,
    required TResult Function(File? image) setCniImageAvant,
    required TResult Function(File? image) setCniImageArriere,
    required TResult Function(File? image) setCGImage,
    required TResult Function(FormData data) completeDevisInfo,
  }) {
    return signOut(context);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String userName, String password)? chooseExperience,
    TResult? Function()? userData,
    TResult? Function(String fullName, String userName, String phone,
            String email, String password, String re_password)?
        register,
    TResult? Function()? addInfoEntreprise,
    TResult? Function()? addInfoClient,
    TResult? Function(String data)? sendCode,
    TResult? Function(Map<dynamic, dynamic> data)? updateUserInfo,
    TResult? Function(String data, String code)? verifyCode,
    TResult? Function(BuildContext context)? signOut,
    TResult? Function()? getUserEvent,
    TResult? Function(File? image)? setCniImageAvant,
    TResult? Function(File? image)? setCniImageArriere,
    TResult? Function(File? image)? setCGImage,
    TResult? Function(FormData data)? completeDevisInfo,
  }) {
    return signOut?.call(context);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String userName, String password)? chooseExperience,
    TResult Function()? userData,
    TResult Function(String fullName, String userName, String phone,
            String email, String password, String re_password)?
        register,
    TResult Function()? addInfoEntreprise,
    TResult Function()? addInfoClient,
    TResult Function(String data)? sendCode,
    TResult Function(Map<dynamic, dynamic> data)? updateUserInfo,
    TResult Function(String data, String code)? verifyCode,
    TResult Function(BuildContext context)? signOut,
    TResult Function()? getUserEvent,
    TResult Function(File? image)? setCniImageAvant,
    TResult Function(File? image)? setCniImageArriere,
    TResult Function(File? image)? setCGImage,
    TResult Function(FormData data)? completeDevisInfo,
    required TResult orElse(),
  }) {
    if (signOut != null) {
      return signOut(context);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SignInEvent value) chooseExperience,
    required TResult Function(UserDataEvent value) userData,
    required TResult Function(RegisterEvent value) register,
    required TResult Function(AddInfoEntreprise value) addInfoEntreprise,
    required TResult Function(AddInfoClient value) addInfoClient,
    required TResult Function(SendCode value) sendCode,
    required TResult Function(UpdateUserInfo value) updateUserInfo,
    required TResult Function(VerifyCode value) verifyCode,
    required TResult Function(SignOutEvent value) signOut,
    required TResult Function(GetUserEvent value) getUserEvent,
    required TResult Function(SetCniImageAvant value) setCniImageAvant,
    required TResult Function(SetCniImageArriere value) setCniImageArriere,
    required TResult Function(SetCGImage value) setCGImage,
    required TResult Function(CompleteDevisInfo value) completeDevisInfo,
  }) {
    return signOut(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(SignInEvent value)? chooseExperience,
    TResult? Function(UserDataEvent value)? userData,
    TResult? Function(RegisterEvent value)? register,
    TResult? Function(AddInfoEntreprise value)? addInfoEntreprise,
    TResult? Function(AddInfoClient value)? addInfoClient,
    TResult? Function(SendCode value)? sendCode,
    TResult? Function(UpdateUserInfo value)? updateUserInfo,
    TResult? Function(VerifyCode value)? verifyCode,
    TResult? Function(SignOutEvent value)? signOut,
    TResult? Function(GetUserEvent value)? getUserEvent,
    TResult? Function(SetCniImageAvant value)? setCniImageAvant,
    TResult? Function(SetCniImageArriere value)? setCniImageArriere,
    TResult? Function(SetCGImage value)? setCGImage,
    TResult? Function(CompleteDevisInfo value)? completeDevisInfo,
  }) {
    return signOut?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SignInEvent value)? chooseExperience,
    TResult Function(UserDataEvent value)? userData,
    TResult Function(RegisterEvent value)? register,
    TResult Function(AddInfoEntreprise value)? addInfoEntreprise,
    TResult Function(AddInfoClient value)? addInfoClient,
    TResult Function(SendCode value)? sendCode,
    TResult Function(UpdateUserInfo value)? updateUserInfo,
    TResult Function(VerifyCode value)? verifyCode,
    TResult Function(SignOutEvent value)? signOut,
    TResult Function(GetUserEvent value)? getUserEvent,
    TResult Function(SetCniImageAvant value)? setCniImageAvant,
    TResult Function(SetCniImageArriere value)? setCniImageArriere,
    TResult Function(SetCGImage value)? setCGImage,
    TResult Function(CompleteDevisInfo value)? completeDevisInfo,
    required TResult orElse(),
  }) {
    if (signOut != null) {
      return signOut(this);
    }
    return orElse();
  }
}

abstract class SignOutEvent implements UserEvent {
  const factory SignOutEvent({required final BuildContext context}) =
      _$SignOutEventImpl;

  BuildContext get context;
  @JsonKey(ignore: true)
  _$$SignOutEventImplCopyWith<_$SignOutEventImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$GetUserEventImplCopyWith<$Res> {
  factory _$$GetUserEventImplCopyWith(
          _$GetUserEventImpl value, $Res Function(_$GetUserEventImpl) then) =
      __$$GetUserEventImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$GetUserEventImplCopyWithImpl<$Res>
    extends _$UserEventCopyWithImpl<$Res, _$GetUserEventImpl>
    implements _$$GetUserEventImplCopyWith<$Res> {
  __$$GetUserEventImplCopyWithImpl(
      _$GetUserEventImpl _value, $Res Function(_$GetUserEventImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$GetUserEventImpl implements GetUserEvent {
  const _$GetUserEventImpl();

  @override
  String toString() {
    return 'UserEvent.getUserEvent()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$GetUserEventImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String userName, String password)
        chooseExperience,
    required TResult Function() userData,
    required TResult Function(String fullName, String userName, String phone,
            String email, String password, String re_password)
        register,
    required TResult Function() addInfoEntreprise,
    required TResult Function() addInfoClient,
    required TResult Function(String data) sendCode,
    required TResult Function(Map<dynamic, dynamic> data) updateUserInfo,
    required TResult Function(String data, String code) verifyCode,
    required TResult Function(BuildContext context) signOut,
    required TResult Function() getUserEvent,
    required TResult Function(File? image) setCniImageAvant,
    required TResult Function(File? image) setCniImageArriere,
    required TResult Function(File? image) setCGImage,
    required TResult Function(FormData data) completeDevisInfo,
  }) {
    return getUserEvent();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String userName, String password)? chooseExperience,
    TResult? Function()? userData,
    TResult? Function(String fullName, String userName, String phone,
            String email, String password, String re_password)?
        register,
    TResult? Function()? addInfoEntreprise,
    TResult? Function()? addInfoClient,
    TResult? Function(String data)? sendCode,
    TResult? Function(Map<dynamic, dynamic> data)? updateUserInfo,
    TResult? Function(String data, String code)? verifyCode,
    TResult? Function(BuildContext context)? signOut,
    TResult? Function()? getUserEvent,
    TResult? Function(File? image)? setCniImageAvant,
    TResult? Function(File? image)? setCniImageArriere,
    TResult? Function(File? image)? setCGImage,
    TResult? Function(FormData data)? completeDevisInfo,
  }) {
    return getUserEvent?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String userName, String password)? chooseExperience,
    TResult Function()? userData,
    TResult Function(String fullName, String userName, String phone,
            String email, String password, String re_password)?
        register,
    TResult Function()? addInfoEntreprise,
    TResult Function()? addInfoClient,
    TResult Function(String data)? sendCode,
    TResult Function(Map<dynamic, dynamic> data)? updateUserInfo,
    TResult Function(String data, String code)? verifyCode,
    TResult Function(BuildContext context)? signOut,
    TResult Function()? getUserEvent,
    TResult Function(File? image)? setCniImageAvant,
    TResult Function(File? image)? setCniImageArriere,
    TResult Function(File? image)? setCGImage,
    TResult Function(FormData data)? completeDevisInfo,
    required TResult orElse(),
  }) {
    if (getUserEvent != null) {
      return getUserEvent();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SignInEvent value) chooseExperience,
    required TResult Function(UserDataEvent value) userData,
    required TResult Function(RegisterEvent value) register,
    required TResult Function(AddInfoEntreprise value) addInfoEntreprise,
    required TResult Function(AddInfoClient value) addInfoClient,
    required TResult Function(SendCode value) sendCode,
    required TResult Function(UpdateUserInfo value) updateUserInfo,
    required TResult Function(VerifyCode value) verifyCode,
    required TResult Function(SignOutEvent value) signOut,
    required TResult Function(GetUserEvent value) getUserEvent,
    required TResult Function(SetCniImageAvant value) setCniImageAvant,
    required TResult Function(SetCniImageArriere value) setCniImageArriere,
    required TResult Function(SetCGImage value) setCGImage,
    required TResult Function(CompleteDevisInfo value) completeDevisInfo,
  }) {
    return getUserEvent(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(SignInEvent value)? chooseExperience,
    TResult? Function(UserDataEvent value)? userData,
    TResult? Function(RegisterEvent value)? register,
    TResult? Function(AddInfoEntreprise value)? addInfoEntreprise,
    TResult? Function(AddInfoClient value)? addInfoClient,
    TResult? Function(SendCode value)? sendCode,
    TResult? Function(UpdateUserInfo value)? updateUserInfo,
    TResult? Function(VerifyCode value)? verifyCode,
    TResult? Function(SignOutEvent value)? signOut,
    TResult? Function(GetUserEvent value)? getUserEvent,
    TResult? Function(SetCniImageAvant value)? setCniImageAvant,
    TResult? Function(SetCniImageArriere value)? setCniImageArriere,
    TResult? Function(SetCGImage value)? setCGImage,
    TResult? Function(CompleteDevisInfo value)? completeDevisInfo,
  }) {
    return getUserEvent?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SignInEvent value)? chooseExperience,
    TResult Function(UserDataEvent value)? userData,
    TResult Function(RegisterEvent value)? register,
    TResult Function(AddInfoEntreprise value)? addInfoEntreprise,
    TResult Function(AddInfoClient value)? addInfoClient,
    TResult Function(SendCode value)? sendCode,
    TResult Function(UpdateUserInfo value)? updateUserInfo,
    TResult Function(VerifyCode value)? verifyCode,
    TResult Function(SignOutEvent value)? signOut,
    TResult Function(GetUserEvent value)? getUserEvent,
    TResult Function(SetCniImageAvant value)? setCniImageAvant,
    TResult Function(SetCniImageArriere value)? setCniImageArriere,
    TResult Function(SetCGImage value)? setCGImage,
    TResult Function(CompleteDevisInfo value)? completeDevisInfo,
    required TResult orElse(),
  }) {
    if (getUserEvent != null) {
      return getUserEvent(this);
    }
    return orElse();
  }
}

abstract class GetUserEvent implements UserEvent {
  const factory GetUserEvent() = _$GetUserEventImpl;
}

/// @nodoc
abstract class _$$SetCniImageAvantImplCopyWith<$Res> {
  factory _$$SetCniImageAvantImplCopyWith(_$SetCniImageAvantImpl value,
          $Res Function(_$SetCniImageAvantImpl) then) =
      __$$SetCniImageAvantImplCopyWithImpl<$Res>;
  @useResult
  $Res call({File? image});
}

/// @nodoc
class __$$SetCniImageAvantImplCopyWithImpl<$Res>
    extends _$UserEventCopyWithImpl<$Res, _$SetCniImageAvantImpl>
    implements _$$SetCniImageAvantImplCopyWith<$Res> {
  __$$SetCniImageAvantImplCopyWithImpl(_$SetCniImageAvantImpl _value,
      $Res Function(_$SetCniImageAvantImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? image = freezed,
  }) {
    return _then(_$SetCniImageAvantImpl(
      image: freezed == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as File?,
    ));
  }
}

/// @nodoc

class _$SetCniImageAvantImpl implements SetCniImageAvant {
  const _$SetCniImageAvantImpl({required this.image});

  @override
  final File? image;

  @override
  String toString() {
    return 'UserEvent.setCniImageAvant(image: $image)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SetCniImageAvantImpl &&
            (identical(other.image, image) || other.image == image));
  }

  @override
  int get hashCode => Object.hash(runtimeType, image);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SetCniImageAvantImplCopyWith<_$SetCniImageAvantImpl> get copyWith =>
      __$$SetCniImageAvantImplCopyWithImpl<_$SetCniImageAvantImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String userName, String password)
        chooseExperience,
    required TResult Function() userData,
    required TResult Function(String fullName, String userName, String phone,
            String email, String password, String re_password)
        register,
    required TResult Function() addInfoEntreprise,
    required TResult Function() addInfoClient,
    required TResult Function(String data) sendCode,
    required TResult Function(Map<dynamic, dynamic> data) updateUserInfo,
    required TResult Function(String data, String code) verifyCode,
    required TResult Function(BuildContext context) signOut,
    required TResult Function() getUserEvent,
    required TResult Function(File? image) setCniImageAvant,
    required TResult Function(File? image) setCniImageArriere,
    required TResult Function(File? image) setCGImage,
    required TResult Function(FormData data) completeDevisInfo,
  }) {
    return setCniImageAvant(image);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String userName, String password)? chooseExperience,
    TResult? Function()? userData,
    TResult? Function(String fullName, String userName, String phone,
            String email, String password, String re_password)?
        register,
    TResult? Function()? addInfoEntreprise,
    TResult? Function()? addInfoClient,
    TResult? Function(String data)? sendCode,
    TResult? Function(Map<dynamic, dynamic> data)? updateUserInfo,
    TResult? Function(String data, String code)? verifyCode,
    TResult? Function(BuildContext context)? signOut,
    TResult? Function()? getUserEvent,
    TResult? Function(File? image)? setCniImageAvant,
    TResult? Function(File? image)? setCniImageArriere,
    TResult? Function(File? image)? setCGImage,
    TResult? Function(FormData data)? completeDevisInfo,
  }) {
    return setCniImageAvant?.call(image);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String userName, String password)? chooseExperience,
    TResult Function()? userData,
    TResult Function(String fullName, String userName, String phone,
            String email, String password, String re_password)?
        register,
    TResult Function()? addInfoEntreprise,
    TResult Function()? addInfoClient,
    TResult Function(String data)? sendCode,
    TResult Function(Map<dynamic, dynamic> data)? updateUserInfo,
    TResult Function(String data, String code)? verifyCode,
    TResult Function(BuildContext context)? signOut,
    TResult Function()? getUserEvent,
    TResult Function(File? image)? setCniImageAvant,
    TResult Function(File? image)? setCniImageArriere,
    TResult Function(File? image)? setCGImage,
    TResult Function(FormData data)? completeDevisInfo,
    required TResult orElse(),
  }) {
    if (setCniImageAvant != null) {
      return setCniImageAvant(image);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SignInEvent value) chooseExperience,
    required TResult Function(UserDataEvent value) userData,
    required TResult Function(RegisterEvent value) register,
    required TResult Function(AddInfoEntreprise value) addInfoEntreprise,
    required TResult Function(AddInfoClient value) addInfoClient,
    required TResult Function(SendCode value) sendCode,
    required TResult Function(UpdateUserInfo value) updateUserInfo,
    required TResult Function(VerifyCode value) verifyCode,
    required TResult Function(SignOutEvent value) signOut,
    required TResult Function(GetUserEvent value) getUserEvent,
    required TResult Function(SetCniImageAvant value) setCniImageAvant,
    required TResult Function(SetCniImageArriere value) setCniImageArriere,
    required TResult Function(SetCGImage value) setCGImage,
    required TResult Function(CompleteDevisInfo value) completeDevisInfo,
  }) {
    return setCniImageAvant(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(SignInEvent value)? chooseExperience,
    TResult? Function(UserDataEvent value)? userData,
    TResult? Function(RegisterEvent value)? register,
    TResult? Function(AddInfoEntreprise value)? addInfoEntreprise,
    TResult? Function(AddInfoClient value)? addInfoClient,
    TResult? Function(SendCode value)? sendCode,
    TResult? Function(UpdateUserInfo value)? updateUserInfo,
    TResult? Function(VerifyCode value)? verifyCode,
    TResult? Function(SignOutEvent value)? signOut,
    TResult? Function(GetUserEvent value)? getUserEvent,
    TResult? Function(SetCniImageAvant value)? setCniImageAvant,
    TResult? Function(SetCniImageArriere value)? setCniImageArriere,
    TResult? Function(SetCGImage value)? setCGImage,
    TResult? Function(CompleteDevisInfo value)? completeDevisInfo,
  }) {
    return setCniImageAvant?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SignInEvent value)? chooseExperience,
    TResult Function(UserDataEvent value)? userData,
    TResult Function(RegisterEvent value)? register,
    TResult Function(AddInfoEntreprise value)? addInfoEntreprise,
    TResult Function(AddInfoClient value)? addInfoClient,
    TResult Function(SendCode value)? sendCode,
    TResult Function(UpdateUserInfo value)? updateUserInfo,
    TResult Function(VerifyCode value)? verifyCode,
    TResult Function(SignOutEvent value)? signOut,
    TResult Function(GetUserEvent value)? getUserEvent,
    TResult Function(SetCniImageAvant value)? setCniImageAvant,
    TResult Function(SetCniImageArriere value)? setCniImageArriere,
    TResult Function(SetCGImage value)? setCGImage,
    TResult Function(CompleteDevisInfo value)? completeDevisInfo,
    required TResult orElse(),
  }) {
    if (setCniImageAvant != null) {
      return setCniImageAvant(this);
    }
    return orElse();
  }
}

abstract class SetCniImageAvant implements UserEvent {
  const factory SetCniImageAvant({required final File? image}) =
      _$SetCniImageAvantImpl;

  File? get image;
  @JsonKey(ignore: true)
  _$$SetCniImageAvantImplCopyWith<_$SetCniImageAvantImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SetCniImageArriereImplCopyWith<$Res> {
  factory _$$SetCniImageArriereImplCopyWith(_$SetCniImageArriereImpl value,
          $Res Function(_$SetCniImageArriereImpl) then) =
      __$$SetCniImageArriereImplCopyWithImpl<$Res>;
  @useResult
  $Res call({File? image});
}

/// @nodoc
class __$$SetCniImageArriereImplCopyWithImpl<$Res>
    extends _$UserEventCopyWithImpl<$Res, _$SetCniImageArriereImpl>
    implements _$$SetCniImageArriereImplCopyWith<$Res> {
  __$$SetCniImageArriereImplCopyWithImpl(_$SetCniImageArriereImpl _value,
      $Res Function(_$SetCniImageArriereImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? image = freezed,
  }) {
    return _then(_$SetCniImageArriereImpl(
      image: freezed == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as File?,
    ));
  }
}

/// @nodoc

class _$SetCniImageArriereImpl implements SetCniImageArriere {
  const _$SetCniImageArriereImpl({required this.image});

  @override
  final File? image;

  @override
  String toString() {
    return 'UserEvent.setCniImageArriere(image: $image)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SetCniImageArriereImpl &&
            (identical(other.image, image) || other.image == image));
  }

  @override
  int get hashCode => Object.hash(runtimeType, image);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SetCniImageArriereImplCopyWith<_$SetCniImageArriereImpl> get copyWith =>
      __$$SetCniImageArriereImplCopyWithImpl<_$SetCniImageArriereImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String userName, String password)
        chooseExperience,
    required TResult Function() userData,
    required TResult Function(String fullName, String userName, String phone,
            String email, String password, String re_password)
        register,
    required TResult Function() addInfoEntreprise,
    required TResult Function() addInfoClient,
    required TResult Function(String data) sendCode,
    required TResult Function(Map<dynamic, dynamic> data) updateUserInfo,
    required TResult Function(String data, String code) verifyCode,
    required TResult Function(BuildContext context) signOut,
    required TResult Function() getUserEvent,
    required TResult Function(File? image) setCniImageAvant,
    required TResult Function(File? image) setCniImageArriere,
    required TResult Function(File? image) setCGImage,
    required TResult Function(FormData data) completeDevisInfo,
  }) {
    return setCniImageArriere(image);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String userName, String password)? chooseExperience,
    TResult? Function()? userData,
    TResult? Function(String fullName, String userName, String phone,
            String email, String password, String re_password)?
        register,
    TResult? Function()? addInfoEntreprise,
    TResult? Function()? addInfoClient,
    TResult? Function(String data)? sendCode,
    TResult? Function(Map<dynamic, dynamic> data)? updateUserInfo,
    TResult? Function(String data, String code)? verifyCode,
    TResult? Function(BuildContext context)? signOut,
    TResult? Function()? getUserEvent,
    TResult? Function(File? image)? setCniImageAvant,
    TResult? Function(File? image)? setCniImageArriere,
    TResult? Function(File? image)? setCGImage,
    TResult? Function(FormData data)? completeDevisInfo,
  }) {
    return setCniImageArriere?.call(image);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String userName, String password)? chooseExperience,
    TResult Function()? userData,
    TResult Function(String fullName, String userName, String phone,
            String email, String password, String re_password)?
        register,
    TResult Function()? addInfoEntreprise,
    TResult Function()? addInfoClient,
    TResult Function(String data)? sendCode,
    TResult Function(Map<dynamic, dynamic> data)? updateUserInfo,
    TResult Function(String data, String code)? verifyCode,
    TResult Function(BuildContext context)? signOut,
    TResult Function()? getUserEvent,
    TResult Function(File? image)? setCniImageAvant,
    TResult Function(File? image)? setCniImageArriere,
    TResult Function(File? image)? setCGImage,
    TResult Function(FormData data)? completeDevisInfo,
    required TResult orElse(),
  }) {
    if (setCniImageArriere != null) {
      return setCniImageArriere(image);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SignInEvent value) chooseExperience,
    required TResult Function(UserDataEvent value) userData,
    required TResult Function(RegisterEvent value) register,
    required TResult Function(AddInfoEntreprise value) addInfoEntreprise,
    required TResult Function(AddInfoClient value) addInfoClient,
    required TResult Function(SendCode value) sendCode,
    required TResult Function(UpdateUserInfo value) updateUserInfo,
    required TResult Function(VerifyCode value) verifyCode,
    required TResult Function(SignOutEvent value) signOut,
    required TResult Function(GetUserEvent value) getUserEvent,
    required TResult Function(SetCniImageAvant value) setCniImageAvant,
    required TResult Function(SetCniImageArriere value) setCniImageArriere,
    required TResult Function(SetCGImage value) setCGImage,
    required TResult Function(CompleteDevisInfo value) completeDevisInfo,
  }) {
    return setCniImageArriere(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(SignInEvent value)? chooseExperience,
    TResult? Function(UserDataEvent value)? userData,
    TResult? Function(RegisterEvent value)? register,
    TResult? Function(AddInfoEntreprise value)? addInfoEntreprise,
    TResult? Function(AddInfoClient value)? addInfoClient,
    TResult? Function(SendCode value)? sendCode,
    TResult? Function(UpdateUserInfo value)? updateUserInfo,
    TResult? Function(VerifyCode value)? verifyCode,
    TResult? Function(SignOutEvent value)? signOut,
    TResult? Function(GetUserEvent value)? getUserEvent,
    TResult? Function(SetCniImageAvant value)? setCniImageAvant,
    TResult? Function(SetCniImageArriere value)? setCniImageArriere,
    TResult? Function(SetCGImage value)? setCGImage,
    TResult? Function(CompleteDevisInfo value)? completeDevisInfo,
  }) {
    return setCniImageArriere?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SignInEvent value)? chooseExperience,
    TResult Function(UserDataEvent value)? userData,
    TResult Function(RegisterEvent value)? register,
    TResult Function(AddInfoEntreprise value)? addInfoEntreprise,
    TResult Function(AddInfoClient value)? addInfoClient,
    TResult Function(SendCode value)? sendCode,
    TResult Function(UpdateUserInfo value)? updateUserInfo,
    TResult Function(VerifyCode value)? verifyCode,
    TResult Function(SignOutEvent value)? signOut,
    TResult Function(GetUserEvent value)? getUserEvent,
    TResult Function(SetCniImageAvant value)? setCniImageAvant,
    TResult Function(SetCniImageArriere value)? setCniImageArriere,
    TResult Function(SetCGImage value)? setCGImage,
    TResult Function(CompleteDevisInfo value)? completeDevisInfo,
    required TResult orElse(),
  }) {
    if (setCniImageArriere != null) {
      return setCniImageArriere(this);
    }
    return orElse();
  }
}

abstract class SetCniImageArriere implements UserEvent {
  const factory SetCniImageArriere({required final File? image}) =
      _$SetCniImageArriereImpl;

  File? get image;
  @JsonKey(ignore: true)
  _$$SetCniImageArriereImplCopyWith<_$SetCniImageArriereImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SetCGImageImplCopyWith<$Res> {
  factory _$$SetCGImageImplCopyWith(
          _$SetCGImageImpl value, $Res Function(_$SetCGImageImpl) then) =
      __$$SetCGImageImplCopyWithImpl<$Res>;
  @useResult
  $Res call({File? image});
}

/// @nodoc
class __$$SetCGImageImplCopyWithImpl<$Res>
    extends _$UserEventCopyWithImpl<$Res, _$SetCGImageImpl>
    implements _$$SetCGImageImplCopyWith<$Res> {
  __$$SetCGImageImplCopyWithImpl(
      _$SetCGImageImpl _value, $Res Function(_$SetCGImageImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? image = freezed,
  }) {
    return _then(_$SetCGImageImpl(
      image: freezed == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as File?,
    ));
  }
}

/// @nodoc

class _$SetCGImageImpl implements SetCGImage {
  const _$SetCGImageImpl({required this.image});

  @override
  final File? image;

  @override
  String toString() {
    return 'UserEvent.setCGImage(image: $image)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SetCGImageImpl &&
            (identical(other.image, image) || other.image == image));
  }

  @override
  int get hashCode => Object.hash(runtimeType, image);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SetCGImageImplCopyWith<_$SetCGImageImpl> get copyWith =>
      __$$SetCGImageImplCopyWithImpl<_$SetCGImageImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String userName, String password)
        chooseExperience,
    required TResult Function() userData,
    required TResult Function(String fullName, String userName, String phone,
            String email, String password, String re_password)
        register,
    required TResult Function() addInfoEntreprise,
    required TResult Function() addInfoClient,
    required TResult Function(String data) sendCode,
    required TResult Function(Map<dynamic, dynamic> data) updateUserInfo,
    required TResult Function(String data, String code) verifyCode,
    required TResult Function(BuildContext context) signOut,
    required TResult Function() getUserEvent,
    required TResult Function(File? image) setCniImageAvant,
    required TResult Function(File? image) setCniImageArriere,
    required TResult Function(File? image) setCGImage,
    required TResult Function(FormData data) completeDevisInfo,
  }) {
    return setCGImage(image);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String userName, String password)? chooseExperience,
    TResult? Function()? userData,
    TResult? Function(String fullName, String userName, String phone,
            String email, String password, String re_password)?
        register,
    TResult? Function()? addInfoEntreprise,
    TResult? Function()? addInfoClient,
    TResult? Function(String data)? sendCode,
    TResult? Function(Map<dynamic, dynamic> data)? updateUserInfo,
    TResult? Function(String data, String code)? verifyCode,
    TResult? Function(BuildContext context)? signOut,
    TResult? Function()? getUserEvent,
    TResult? Function(File? image)? setCniImageAvant,
    TResult? Function(File? image)? setCniImageArriere,
    TResult? Function(File? image)? setCGImage,
    TResult? Function(FormData data)? completeDevisInfo,
  }) {
    return setCGImage?.call(image);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String userName, String password)? chooseExperience,
    TResult Function()? userData,
    TResult Function(String fullName, String userName, String phone,
            String email, String password, String re_password)?
        register,
    TResult Function()? addInfoEntreprise,
    TResult Function()? addInfoClient,
    TResult Function(String data)? sendCode,
    TResult Function(Map<dynamic, dynamic> data)? updateUserInfo,
    TResult Function(String data, String code)? verifyCode,
    TResult Function(BuildContext context)? signOut,
    TResult Function()? getUserEvent,
    TResult Function(File? image)? setCniImageAvant,
    TResult Function(File? image)? setCniImageArriere,
    TResult Function(File? image)? setCGImage,
    TResult Function(FormData data)? completeDevisInfo,
    required TResult orElse(),
  }) {
    if (setCGImage != null) {
      return setCGImage(image);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SignInEvent value) chooseExperience,
    required TResult Function(UserDataEvent value) userData,
    required TResult Function(RegisterEvent value) register,
    required TResult Function(AddInfoEntreprise value) addInfoEntreprise,
    required TResult Function(AddInfoClient value) addInfoClient,
    required TResult Function(SendCode value) sendCode,
    required TResult Function(UpdateUserInfo value) updateUserInfo,
    required TResult Function(VerifyCode value) verifyCode,
    required TResult Function(SignOutEvent value) signOut,
    required TResult Function(GetUserEvent value) getUserEvent,
    required TResult Function(SetCniImageAvant value) setCniImageAvant,
    required TResult Function(SetCniImageArriere value) setCniImageArriere,
    required TResult Function(SetCGImage value) setCGImage,
    required TResult Function(CompleteDevisInfo value) completeDevisInfo,
  }) {
    return setCGImage(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(SignInEvent value)? chooseExperience,
    TResult? Function(UserDataEvent value)? userData,
    TResult? Function(RegisterEvent value)? register,
    TResult? Function(AddInfoEntreprise value)? addInfoEntreprise,
    TResult? Function(AddInfoClient value)? addInfoClient,
    TResult? Function(SendCode value)? sendCode,
    TResult? Function(UpdateUserInfo value)? updateUserInfo,
    TResult? Function(VerifyCode value)? verifyCode,
    TResult? Function(SignOutEvent value)? signOut,
    TResult? Function(GetUserEvent value)? getUserEvent,
    TResult? Function(SetCniImageAvant value)? setCniImageAvant,
    TResult? Function(SetCniImageArriere value)? setCniImageArriere,
    TResult? Function(SetCGImage value)? setCGImage,
    TResult? Function(CompleteDevisInfo value)? completeDevisInfo,
  }) {
    return setCGImage?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SignInEvent value)? chooseExperience,
    TResult Function(UserDataEvent value)? userData,
    TResult Function(RegisterEvent value)? register,
    TResult Function(AddInfoEntreprise value)? addInfoEntreprise,
    TResult Function(AddInfoClient value)? addInfoClient,
    TResult Function(SendCode value)? sendCode,
    TResult Function(UpdateUserInfo value)? updateUserInfo,
    TResult Function(VerifyCode value)? verifyCode,
    TResult Function(SignOutEvent value)? signOut,
    TResult Function(GetUserEvent value)? getUserEvent,
    TResult Function(SetCniImageAvant value)? setCniImageAvant,
    TResult Function(SetCniImageArriere value)? setCniImageArriere,
    TResult Function(SetCGImage value)? setCGImage,
    TResult Function(CompleteDevisInfo value)? completeDevisInfo,
    required TResult orElse(),
  }) {
    if (setCGImage != null) {
      return setCGImage(this);
    }
    return orElse();
  }
}

abstract class SetCGImage implements UserEvent {
  const factory SetCGImage({required final File? image}) = _$SetCGImageImpl;

  File? get image;
  @JsonKey(ignore: true)
  _$$SetCGImageImplCopyWith<_$SetCGImageImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$CompleteDevisInfoImplCopyWith<$Res> {
  factory _$$CompleteDevisInfoImplCopyWith(_$CompleteDevisInfoImpl value,
          $Res Function(_$CompleteDevisInfoImpl) then) =
      __$$CompleteDevisInfoImplCopyWithImpl<$Res>;
  @useResult
  $Res call({FormData data});
}

/// @nodoc
class __$$CompleteDevisInfoImplCopyWithImpl<$Res>
    extends _$UserEventCopyWithImpl<$Res, _$CompleteDevisInfoImpl>
    implements _$$CompleteDevisInfoImplCopyWith<$Res> {
  __$$CompleteDevisInfoImplCopyWithImpl(_$CompleteDevisInfoImpl _value,
      $Res Function(_$CompleteDevisInfoImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
  }) {
    return _then(_$CompleteDevisInfoImpl(
      data: null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as FormData,
    ));
  }
}

/// @nodoc

class _$CompleteDevisInfoImpl implements CompleteDevisInfo {
  const _$CompleteDevisInfoImpl({required this.data});

  @override
  final FormData data;

  @override
  String toString() {
    return 'UserEvent.completeDevisInfo(data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CompleteDevisInfoImpl &&
            (identical(other.data, data) || other.data == data));
  }

  @override
  int get hashCode => Object.hash(runtimeType, data);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CompleteDevisInfoImplCopyWith<_$CompleteDevisInfoImpl> get copyWith =>
      __$$CompleteDevisInfoImplCopyWithImpl<_$CompleteDevisInfoImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String userName, String password)
        chooseExperience,
    required TResult Function() userData,
    required TResult Function(String fullName, String userName, String phone,
            String email, String password, String re_password)
        register,
    required TResult Function() addInfoEntreprise,
    required TResult Function() addInfoClient,
    required TResult Function(String data) sendCode,
    required TResult Function(Map<dynamic, dynamic> data) updateUserInfo,
    required TResult Function(String data, String code) verifyCode,
    required TResult Function(BuildContext context) signOut,
    required TResult Function() getUserEvent,
    required TResult Function(File? image) setCniImageAvant,
    required TResult Function(File? image) setCniImageArriere,
    required TResult Function(File? image) setCGImage,
    required TResult Function(FormData data) completeDevisInfo,
  }) {
    return completeDevisInfo(data);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String userName, String password)? chooseExperience,
    TResult? Function()? userData,
    TResult? Function(String fullName, String userName, String phone,
            String email, String password, String re_password)?
        register,
    TResult? Function()? addInfoEntreprise,
    TResult? Function()? addInfoClient,
    TResult? Function(String data)? sendCode,
    TResult? Function(Map<dynamic, dynamic> data)? updateUserInfo,
    TResult? Function(String data, String code)? verifyCode,
    TResult? Function(BuildContext context)? signOut,
    TResult? Function()? getUserEvent,
    TResult? Function(File? image)? setCniImageAvant,
    TResult? Function(File? image)? setCniImageArriere,
    TResult? Function(File? image)? setCGImage,
    TResult? Function(FormData data)? completeDevisInfo,
  }) {
    return completeDevisInfo?.call(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String userName, String password)? chooseExperience,
    TResult Function()? userData,
    TResult Function(String fullName, String userName, String phone,
            String email, String password, String re_password)?
        register,
    TResult Function()? addInfoEntreprise,
    TResult Function()? addInfoClient,
    TResult Function(String data)? sendCode,
    TResult Function(Map<dynamic, dynamic> data)? updateUserInfo,
    TResult Function(String data, String code)? verifyCode,
    TResult Function(BuildContext context)? signOut,
    TResult Function()? getUserEvent,
    TResult Function(File? image)? setCniImageAvant,
    TResult Function(File? image)? setCniImageArriere,
    TResult Function(File? image)? setCGImage,
    TResult Function(FormData data)? completeDevisInfo,
    required TResult orElse(),
  }) {
    if (completeDevisInfo != null) {
      return completeDevisInfo(data);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SignInEvent value) chooseExperience,
    required TResult Function(UserDataEvent value) userData,
    required TResult Function(RegisterEvent value) register,
    required TResult Function(AddInfoEntreprise value) addInfoEntreprise,
    required TResult Function(AddInfoClient value) addInfoClient,
    required TResult Function(SendCode value) sendCode,
    required TResult Function(UpdateUserInfo value) updateUserInfo,
    required TResult Function(VerifyCode value) verifyCode,
    required TResult Function(SignOutEvent value) signOut,
    required TResult Function(GetUserEvent value) getUserEvent,
    required TResult Function(SetCniImageAvant value) setCniImageAvant,
    required TResult Function(SetCniImageArriere value) setCniImageArriere,
    required TResult Function(SetCGImage value) setCGImage,
    required TResult Function(CompleteDevisInfo value) completeDevisInfo,
  }) {
    return completeDevisInfo(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(SignInEvent value)? chooseExperience,
    TResult? Function(UserDataEvent value)? userData,
    TResult? Function(RegisterEvent value)? register,
    TResult? Function(AddInfoEntreprise value)? addInfoEntreprise,
    TResult? Function(AddInfoClient value)? addInfoClient,
    TResult? Function(SendCode value)? sendCode,
    TResult? Function(UpdateUserInfo value)? updateUserInfo,
    TResult? Function(VerifyCode value)? verifyCode,
    TResult? Function(SignOutEvent value)? signOut,
    TResult? Function(GetUserEvent value)? getUserEvent,
    TResult? Function(SetCniImageAvant value)? setCniImageAvant,
    TResult? Function(SetCniImageArriere value)? setCniImageArriere,
    TResult? Function(SetCGImage value)? setCGImage,
    TResult? Function(CompleteDevisInfo value)? completeDevisInfo,
  }) {
    return completeDevisInfo?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SignInEvent value)? chooseExperience,
    TResult Function(UserDataEvent value)? userData,
    TResult Function(RegisterEvent value)? register,
    TResult Function(AddInfoEntreprise value)? addInfoEntreprise,
    TResult Function(AddInfoClient value)? addInfoClient,
    TResult Function(SendCode value)? sendCode,
    TResult Function(UpdateUserInfo value)? updateUserInfo,
    TResult Function(VerifyCode value)? verifyCode,
    TResult Function(SignOutEvent value)? signOut,
    TResult Function(GetUserEvent value)? getUserEvent,
    TResult Function(SetCniImageAvant value)? setCniImageAvant,
    TResult Function(SetCniImageArriere value)? setCniImageArriere,
    TResult Function(SetCGImage value)? setCGImage,
    TResult Function(CompleteDevisInfo value)? completeDevisInfo,
    required TResult orElse(),
  }) {
    if (completeDevisInfo != null) {
      return completeDevisInfo(this);
    }
    return orElse();
  }
}

abstract class CompleteDevisInfo implements UserEvent {
  const factory CompleteDevisInfo({required final FormData data}) =
      _$CompleteDevisInfoImpl;

  FormData get data;
  @JsonKey(ignore: true)
  _$$CompleteDevisInfoImplCopyWith<_$CompleteDevisInfoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$UserState {
  int? get isLoading => throw _privateConstructorUsedError;
  int? get isLoadingP => throw _privateConstructorUsedError;
  int? get isLoadingReg => throw _privateConstructorUsedError;
  String? get authenticationMessage => throw _privateConstructorUsedError;
  String? get eventMessage => throw _privateConstructorUsedError;
  String? get registerFailedMessage => throw _privateConstructorUsedError;
  User? get user => throw _privateConstructorUsedError;
  String? get newPassword => throw _privateConstructorUsedError;
  int? get isCode => throw _privateConstructorUsedError;
  File? get cniImageAvant => throw _privateConstructorUsedError;
  File? get cniImageArriere => throw _privateConstructorUsedError;
  File? get cartegriseImage => throw _privateConstructorUsedError;
  int? get isLoadingForgot => throw _privateConstructorUsedError;
  int? get isUpdateUserImage => throw _privateConstructorUsedError;
  int? get isCorrectCode => throw _privateConstructorUsedError;
  bool? get successReset => throw _privateConstructorUsedError;
  bool? get updating => throw _privateConstructorUsedError;
  TextEditingController? get name => throw _privateConstructorUsedError;
  TextEditingController? get email => throw _privateConstructorUsedError;
  TextEditingController? get phone => throw _privateConstructorUsedError;
  TextEditingController? get adress => throw _privateConstructorUsedError;
  TextEditingController? get city => throw _privateConstructorUsedError;
  TextEditingController? get numImpot => throw _privateConstructorUsedError;
  TextEditingController? get numContribuable =>
      throw _privateConstructorUsedError;
  TextEditingController? get webSite => throw _privateConstructorUsedError;
  TextEditingController? get country => throw _privateConstructorUsedError;
  TextEditingController? get registreCommerce =>
      throw _privateConstructorUsedError;
  TextEditingController? get rccaAA => throw _privateConstructorUsedError;
  TextEditingController? get nuiUser => throw _privateConstructorUsedError;
  TextEditingController? get uaya => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $UserStateCopyWith<UserState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserStateCopyWith<$Res> {
  factory $UserStateCopyWith(UserState value, $Res Function(UserState) then) =
      _$UserStateCopyWithImpl<$Res, UserState>;
  @useResult
  $Res call(
      {int? isLoading,
      int? isLoadingP,
      int? isLoadingReg,
      String? authenticationMessage,
      String? eventMessage,
      String? registerFailedMessage,
      User? user,
      String? newPassword,
      int? isCode,
      File? cniImageAvant,
      File? cniImageArriere,
      File? cartegriseImage,
      int? isLoadingForgot,
      int? isUpdateUserImage,
      int? isCorrectCode,
      bool? successReset,
      bool? updating,
      TextEditingController? name,
      TextEditingController? email,
      TextEditingController? phone,
      TextEditingController? adress,
      TextEditingController? city,
      TextEditingController? numImpot,
      TextEditingController? numContribuable,
      TextEditingController? webSite,
      TextEditingController? country,
      TextEditingController? registreCommerce,
      TextEditingController? rccaAA,
      TextEditingController? nuiUser,
      TextEditingController? uaya});
}

/// @nodoc
class _$UserStateCopyWithImpl<$Res, $Val extends UserState>
    implements $UserStateCopyWith<$Res> {
  _$UserStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = freezed,
    Object? isLoadingP = freezed,
    Object? isLoadingReg = freezed,
    Object? authenticationMessage = freezed,
    Object? eventMessage = freezed,
    Object? registerFailedMessage = freezed,
    Object? user = freezed,
    Object? newPassword = freezed,
    Object? isCode = freezed,
    Object? cniImageAvant = freezed,
    Object? cniImageArriere = freezed,
    Object? cartegriseImage = freezed,
    Object? isLoadingForgot = freezed,
    Object? isUpdateUserImage = freezed,
    Object? isCorrectCode = freezed,
    Object? successReset = freezed,
    Object? updating = freezed,
    Object? name = freezed,
    Object? email = freezed,
    Object? phone = freezed,
    Object? adress = freezed,
    Object? city = freezed,
    Object? numImpot = freezed,
    Object? numContribuable = freezed,
    Object? webSite = freezed,
    Object? country = freezed,
    Object? registreCommerce = freezed,
    Object? rccaAA = freezed,
    Object? nuiUser = freezed,
    Object? uaya = freezed,
  }) {
    return _then(_value.copyWith(
      isLoading: freezed == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as int?,
      isLoadingP: freezed == isLoadingP
          ? _value.isLoadingP
          : isLoadingP // ignore: cast_nullable_to_non_nullable
              as int?,
      isLoadingReg: freezed == isLoadingReg
          ? _value.isLoadingReg
          : isLoadingReg // ignore: cast_nullable_to_non_nullable
              as int?,
      authenticationMessage: freezed == authenticationMessage
          ? _value.authenticationMessage
          : authenticationMessage // ignore: cast_nullable_to_non_nullable
              as String?,
      eventMessage: freezed == eventMessage
          ? _value.eventMessage
          : eventMessage // ignore: cast_nullable_to_non_nullable
              as String?,
      registerFailedMessage: freezed == registerFailedMessage
          ? _value.registerFailedMessage
          : registerFailedMessage // ignore: cast_nullable_to_non_nullable
              as String?,
      user: freezed == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as User?,
      newPassword: freezed == newPassword
          ? _value.newPassword
          : newPassword // ignore: cast_nullable_to_non_nullable
              as String?,
      isCode: freezed == isCode
          ? _value.isCode
          : isCode // ignore: cast_nullable_to_non_nullable
              as int?,
      cniImageAvant: freezed == cniImageAvant
          ? _value.cniImageAvant
          : cniImageAvant // ignore: cast_nullable_to_non_nullable
              as File?,
      cniImageArriere: freezed == cniImageArriere
          ? _value.cniImageArriere
          : cniImageArriere // ignore: cast_nullable_to_non_nullable
              as File?,
      cartegriseImage: freezed == cartegriseImage
          ? _value.cartegriseImage
          : cartegriseImage // ignore: cast_nullable_to_non_nullable
              as File?,
      isLoadingForgot: freezed == isLoadingForgot
          ? _value.isLoadingForgot
          : isLoadingForgot // ignore: cast_nullable_to_non_nullable
              as int?,
      isUpdateUserImage: freezed == isUpdateUserImage
          ? _value.isUpdateUserImage
          : isUpdateUserImage // ignore: cast_nullable_to_non_nullable
              as int?,
      isCorrectCode: freezed == isCorrectCode
          ? _value.isCorrectCode
          : isCorrectCode // ignore: cast_nullable_to_non_nullable
              as int?,
      successReset: freezed == successReset
          ? _value.successReset
          : successReset // ignore: cast_nullable_to_non_nullable
              as bool?,
      updating: freezed == updating
          ? _value.updating
          : updating // ignore: cast_nullable_to_non_nullable
              as bool?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as TextEditingController?,
      email: freezed == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as TextEditingController?,
      phone: freezed == phone
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as TextEditingController?,
      adress: freezed == adress
          ? _value.adress
          : adress // ignore: cast_nullable_to_non_nullable
              as TextEditingController?,
      city: freezed == city
          ? _value.city
          : city // ignore: cast_nullable_to_non_nullable
              as TextEditingController?,
      numImpot: freezed == numImpot
          ? _value.numImpot
          : numImpot // ignore: cast_nullable_to_non_nullable
              as TextEditingController?,
      numContribuable: freezed == numContribuable
          ? _value.numContribuable
          : numContribuable // ignore: cast_nullable_to_non_nullable
              as TextEditingController?,
      webSite: freezed == webSite
          ? _value.webSite
          : webSite // ignore: cast_nullable_to_non_nullable
              as TextEditingController?,
      country: freezed == country
          ? _value.country
          : country // ignore: cast_nullable_to_non_nullable
              as TextEditingController?,
      registreCommerce: freezed == registreCommerce
          ? _value.registreCommerce
          : registreCommerce // ignore: cast_nullable_to_non_nullable
              as TextEditingController?,
      rccaAA: freezed == rccaAA
          ? _value.rccaAA
          : rccaAA // ignore: cast_nullable_to_non_nullable
              as TextEditingController?,
      nuiUser: freezed == nuiUser
          ? _value.nuiUser
          : nuiUser // ignore: cast_nullable_to_non_nullable
              as TextEditingController?,
      uaya: freezed == uaya
          ? _value.uaya
          : uaya // ignore: cast_nullable_to_non_nullable
              as TextEditingController?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$UserStateImplCopyWith<$Res>
    implements $UserStateCopyWith<$Res> {
  factory _$$UserStateImplCopyWith(
          _$UserStateImpl value, $Res Function(_$UserStateImpl) then) =
      __$$UserStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int? isLoading,
      int? isLoadingP,
      int? isLoadingReg,
      String? authenticationMessage,
      String? eventMessage,
      String? registerFailedMessage,
      User? user,
      String? newPassword,
      int? isCode,
      File? cniImageAvant,
      File? cniImageArriere,
      File? cartegriseImage,
      int? isLoadingForgot,
      int? isUpdateUserImage,
      int? isCorrectCode,
      bool? successReset,
      bool? updating,
      TextEditingController? name,
      TextEditingController? email,
      TextEditingController? phone,
      TextEditingController? adress,
      TextEditingController? city,
      TextEditingController? numImpot,
      TextEditingController? numContribuable,
      TextEditingController? webSite,
      TextEditingController? country,
      TextEditingController? registreCommerce,
      TextEditingController? rccaAA,
      TextEditingController? nuiUser,
      TextEditingController? uaya});
}

/// @nodoc
class __$$UserStateImplCopyWithImpl<$Res>
    extends _$UserStateCopyWithImpl<$Res, _$UserStateImpl>
    implements _$$UserStateImplCopyWith<$Res> {
  __$$UserStateImplCopyWithImpl(
      _$UserStateImpl _value, $Res Function(_$UserStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = freezed,
    Object? isLoadingP = freezed,
    Object? isLoadingReg = freezed,
    Object? authenticationMessage = freezed,
    Object? eventMessage = freezed,
    Object? registerFailedMessage = freezed,
    Object? user = freezed,
    Object? newPassword = freezed,
    Object? isCode = freezed,
    Object? cniImageAvant = freezed,
    Object? cniImageArriere = freezed,
    Object? cartegriseImage = freezed,
    Object? isLoadingForgot = freezed,
    Object? isUpdateUserImage = freezed,
    Object? isCorrectCode = freezed,
    Object? successReset = freezed,
    Object? updating = freezed,
    Object? name = freezed,
    Object? email = freezed,
    Object? phone = freezed,
    Object? adress = freezed,
    Object? city = freezed,
    Object? numImpot = freezed,
    Object? numContribuable = freezed,
    Object? webSite = freezed,
    Object? country = freezed,
    Object? registreCommerce = freezed,
    Object? rccaAA = freezed,
    Object? nuiUser = freezed,
    Object? uaya = freezed,
  }) {
    return _then(_$UserStateImpl(
      isLoading: freezed == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as int?,
      isLoadingP: freezed == isLoadingP
          ? _value.isLoadingP
          : isLoadingP // ignore: cast_nullable_to_non_nullable
              as int?,
      isLoadingReg: freezed == isLoadingReg
          ? _value.isLoadingReg
          : isLoadingReg // ignore: cast_nullable_to_non_nullable
              as int?,
      authenticationMessage: freezed == authenticationMessage
          ? _value.authenticationMessage
          : authenticationMessage // ignore: cast_nullable_to_non_nullable
              as String?,
      eventMessage: freezed == eventMessage
          ? _value.eventMessage
          : eventMessage // ignore: cast_nullable_to_non_nullable
              as String?,
      registerFailedMessage: freezed == registerFailedMessage
          ? _value.registerFailedMessage
          : registerFailedMessage // ignore: cast_nullable_to_non_nullable
              as String?,
      user: freezed == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as User?,
      newPassword: freezed == newPassword
          ? _value.newPassword
          : newPassword // ignore: cast_nullable_to_non_nullable
              as String?,
      isCode: freezed == isCode
          ? _value.isCode
          : isCode // ignore: cast_nullable_to_non_nullable
              as int?,
      cniImageAvant: freezed == cniImageAvant
          ? _value.cniImageAvant
          : cniImageAvant // ignore: cast_nullable_to_non_nullable
              as File?,
      cniImageArriere: freezed == cniImageArriere
          ? _value.cniImageArriere
          : cniImageArriere // ignore: cast_nullable_to_non_nullable
              as File?,
      cartegriseImage: freezed == cartegriseImage
          ? _value.cartegriseImage
          : cartegriseImage // ignore: cast_nullable_to_non_nullable
              as File?,
      isLoadingForgot: freezed == isLoadingForgot
          ? _value.isLoadingForgot
          : isLoadingForgot // ignore: cast_nullable_to_non_nullable
              as int?,
      isUpdateUserImage: freezed == isUpdateUserImage
          ? _value.isUpdateUserImage
          : isUpdateUserImage // ignore: cast_nullable_to_non_nullable
              as int?,
      isCorrectCode: freezed == isCorrectCode
          ? _value.isCorrectCode
          : isCorrectCode // ignore: cast_nullable_to_non_nullable
              as int?,
      successReset: freezed == successReset
          ? _value.successReset
          : successReset // ignore: cast_nullable_to_non_nullable
              as bool?,
      updating: freezed == updating
          ? _value.updating
          : updating // ignore: cast_nullable_to_non_nullable
              as bool?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as TextEditingController?,
      email: freezed == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as TextEditingController?,
      phone: freezed == phone
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as TextEditingController?,
      adress: freezed == adress
          ? _value.adress
          : adress // ignore: cast_nullable_to_non_nullable
              as TextEditingController?,
      city: freezed == city
          ? _value.city
          : city // ignore: cast_nullable_to_non_nullable
              as TextEditingController?,
      numImpot: freezed == numImpot
          ? _value.numImpot
          : numImpot // ignore: cast_nullable_to_non_nullable
              as TextEditingController?,
      numContribuable: freezed == numContribuable
          ? _value.numContribuable
          : numContribuable // ignore: cast_nullable_to_non_nullable
              as TextEditingController?,
      webSite: freezed == webSite
          ? _value.webSite
          : webSite // ignore: cast_nullable_to_non_nullable
              as TextEditingController?,
      country: freezed == country
          ? _value.country
          : country // ignore: cast_nullable_to_non_nullable
              as TextEditingController?,
      registreCommerce: freezed == registreCommerce
          ? _value.registreCommerce
          : registreCommerce // ignore: cast_nullable_to_non_nullable
              as TextEditingController?,
      rccaAA: freezed == rccaAA
          ? _value.rccaAA
          : rccaAA // ignore: cast_nullable_to_non_nullable
              as TextEditingController?,
      nuiUser: freezed == nuiUser
          ? _value.nuiUser
          : nuiUser // ignore: cast_nullable_to_non_nullable
              as TextEditingController?,
      uaya: freezed == uaya
          ? _value.uaya
          : uaya // ignore: cast_nullable_to_non_nullable
              as TextEditingController?,
    ));
  }
}

/// @nodoc

class _$UserStateImpl implements _UserState {
  const _$UserStateImpl(
      {this.isLoading,
      this.isLoadingP,
      this.isLoadingReg,
      this.authenticationMessage,
      this.eventMessage,
      this.registerFailedMessage,
      this.user,
      this.newPassword,
      this.isCode,
      this.cniImageAvant,
      this.cniImageArriere,
      this.cartegriseImage,
      this.isLoadingForgot,
      this.isUpdateUserImage,
      this.isCorrectCode,
      this.successReset,
      this.updating,
      this.name,
      this.email,
      this.phone,
      this.adress,
      this.city,
      this.numImpot,
      this.numContribuable,
      this.webSite,
      this.country,
      this.registreCommerce,
      this.rccaAA,
      this.nuiUser,
      this.uaya});

  @override
  final int? isLoading;
  @override
  final int? isLoadingP;
  @override
  final int? isLoadingReg;
  @override
  final String? authenticationMessage;
  @override
  final String? eventMessage;
  @override
  final String? registerFailedMessage;
  @override
  final User? user;
  @override
  final String? newPassword;
  @override
  final int? isCode;
  @override
  final File? cniImageAvant;
  @override
  final File? cniImageArriere;
  @override
  final File? cartegriseImage;
  @override
  final int? isLoadingForgot;
  @override
  final int? isUpdateUserImage;
  @override
  final int? isCorrectCode;
  @override
  final bool? successReset;
  @override
  final bool? updating;
  @override
  final TextEditingController? name;
  @override
  final TextEditingController? email;
  @override
  final TextEditingController? phone;
  @override
  final TextEditingController? adress;
  @override
  final TextEditingController? city;
  @override
  final TextEditingController? numImpot;
  @override
  final TextEditingController? numContribuable;
  @override
  final TextEditingController? webSite;
  @override
  final TextEditingController? country;
  @override
  final TextEditingController? registreCommerce;
  @override
  final TextEditingController? rccaAA;
  @override
  final TextEditingController? nuiUser;
  @override
  final TextEditingController? uaya;

  @override
  String toString() {
    return 'UserState(isLoading: $isLoading, isLoadingP: $isLoadingP, isLoadingReg: $isLoadingReg, authenticationMessage: $authenticationMessage, eventMessage: $eventMessage, registerFailedMessage: $registerFailedMessage, user: $user, newPassword: $newPassword, isCode: $isCode, cniImageAvant: $cniImageAvant, cniImageArriere: $cniImageArriere, cartegriseImage: $cartegriseImage, isLoadingForgot: $isLoadingForgot, isUpdateUserImage: $isUpdateUserImage, isCorrectCode: $isCorrectCode, successReset: $successReset, updating: $updating, name: $name, email: $email, phone: $phone, adress: $adress, city: $city, numImpot: $numImpot, numContribuable: $numContribuable, webSite: $webSite, country: $country, registreCommerce: $registreCommerce, rccaAA: $rccaAA, nuiUser: $nuiUser, uaya: $uaya)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UserStateImpl &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            (identical(other.isLoadingP, isLoadingP) ||
                other.isLoadingP == isLoadingP) &&
            (identical(other.isLoadingReg, isLoadingReg) ||
                other.isLoadingReg == isLoadingReg) &&
            (identical(other.authenticationMessage, authenticationMessage) ||
                other.authenticationMessage == authenticationMessage) &&
            (identical(other.eventMessage, eventMessage) ||
                other.eventMessage == eventMessage) &&
            (identical(other.registerFailedMessage, registerFailedMessage) ||
                other.registerFailedMessage == registerFailedMessage) &&
            (identical(other.user, user) || other.user == user) &&
            (identical(other.newPassword, newPassword) ||
                other.newPassword == newPassword) &&
            (identical(other.isCode, isCode) || other.isCode == isCode) &&
            (identical(other.cniImageAvant, cniImageAvant) ||
                other.cniImageAvant == cniImageAvant) &&
            (identical(other.cniImageArriere, cniImageArriere) ||
                other.cniImageArriere == cniImageArriere) &&
            (identical(other.cartegriseImage, cartegriseImage) ||
                other.cartegriseImage == cartegriseImage) &&
            (identical(other.isLoadingForgot, isLoadingForgot) ||
                other.isLoadingForgot == isLoadingForgot) &&
            (identical(other.isUpdateUserImage, isUpdateUserImage) ||
                other.isUpdateUserImage == isUpdateUserImage) &&
            (identical(other.isCorrectCode, isCorrectCode) ||
                other.isCorrectCode == isCorrectCode) &&
            (identical(other.successReset, successReset) ||
                other.successReset == successReset) &&
            (identical(other.updating, updating) ||
                other.updating == updating) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.phone, phone) || other.phone == phone) &&
            (identical(other.adress, adress) || other.adress == adress) &&
            (identical(other.city, city) || other.city == city) &&
            (identical(other.numImpot, numImpot) ||
                other.numImpot == numImpot) &&
            (identical(other.numContribuable, numContribuable) ||
                other.numContribuable == numContribuable) &&
            (identical(other.webSite, webSite) || other.webSite == webSite) &&
            (identical(other.country, country) || other.country == country) &&
            (identical(other.registreCommerce, registreCommerce) ||
                other.registreCommerce == registreCommerce) &&
            (identical(other.rccaAA, rccaAA) || other.rccaAA == rccaAA) &&
            (identical(other.nuiUser, nuiUser) || other.nuiUser == nuiUser) &&
            (identical(other.uaya, uaya) || other.uaya == uaya));
  }

  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        isLoading,
        isLoadingP,
        isLoadingReg,
        authenticationMessage,
        eventMessage,
        registerFailedMessage,
        user,
        newPassword,
        isCode,
        cniImageAvant,
        cniImageArriere,
        cartegriseImage,
        isLoadingForgot,
        isUpdateUserImage,
        isCorrectCode,
        successReset,
        updating,
        name,
        email,
        phone,
        adress,
        city,
        numImpot,
        numContribuable,
        webSite,
        country,
        registreCommerce,
        rccaAA,
        nuiUser,
        uaya
      ]);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UserStateImplCopyWith<_$UserStateImpl> get copyWith =>
      __$$UserStateImplCopyWithImpl<_$UserStateImpl>(this, _$identity);
}

abstract class _UserState implements UserState {
  const factory _UserState(
      {final int? isLoading,
      final int? isLoadingP,
      final int? isLoadingReg,
      final String? authenticationMessage,
      final String? eventMessage,
      final String? registerFailedMessage,
      final User? user,
      final String? newPassword,
      final int? isCode,
      final File? cniImageAvant,
      final File? cniImageArriere,
      final File? cartegriseImage,
      final int? isLoadingForgot,
      final int? isUpdateUserImage,
      final int? isCorrectCode,
      final bool? successReset,
      final bool? updating,
      final TextEditingController? name,
      final TextEditingController? email,
      final TextEditingController? phone,
      final TextEditingController? adress,
      final TextEditingController? city,
      final TextEditingController? numImpot,
      final TextEditingController? numContribuable,
      final TextEditingController? webSite,
      final TextEditingController? country,
      final TextEditingController? registreCommerce,
      final TextEditingController? rccaAA,
      final TextEditingController? nuiUser,
      final TextEditingController? uaya}) = _$UserStateImpl;

  @override
  int? get isLoading;
  @override
  int? get isLoadingP;
  @override
  int? get isLoadingReg;
  @override
  String? get authenticationMessage;
  @override
  String? get eventMessage;
  @override
  String? get registerFailedMessage;
  @override
  User? get user;
  @override
  String? get newPassword;
  @override
  int? get isCode;
  @override
  File? get cniImageAvant;
  @override
  File? get cniImageArriere;
  @override
  File? get cartegriseImage;
  @override
  int? get isLoadingForgot;
  @override
  int? get isUpdateUserImage;
  @override
  int? get isCorrectCode;
  @override
  bool? get successReset;
  @override
  bool? get updating;
  @override
  TextEditingController? get name;
  @override
  TextEditingController? get email;
  @override
  TextEditingController? get phone;
  @override
  TextEditingController? get adress;
  @override
  TextEditingController? get city;
  @override
  TextEditingController? get numImpot;
  @override
  TextEditingController? get numContribuable;
  @override
  TextEditingController? get webSite;
  @override
  TextEditingController? get country;
  @override
  TextEditingController? get registreCommerce;
  @override
  TextEditingController? get rccaAA;
  @override
  TextEditingController? get nuiUser;
  @override
  TextEditingController? get uaya;
  @override
  @JsonKey(ignore: true)
  _$$UserStateImplCopyWith<_$UserStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
