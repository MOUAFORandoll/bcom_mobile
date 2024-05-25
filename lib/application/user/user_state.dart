part of 'user_bloc.dart';

@freezed
class UserState with _$UserState {
  const factory UserState({
    int? isLoading,
    String? authenticationMessage,
    String? eventMessage,
    String? registerFailedMessage,
    String? villeUser,
    String? quartierUser,
    String? newPassword,
    int? isCode,
    File? cniImageAvant,
    File? cniImageArriere,
    File? cartegriseImage,
    int? isLoadingForgot,
    int? isUpdateUserImage,
    int? isCorrectCode,
    int? isVilleQuartier,
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
    
  }) = _UserState;

  factory UserState.initial() => UserState(
        isCode: 0,
        updating: false,
        isCorrectCode: 0,
        successReset: false,
        cniImageAvant: null,
        cniImageArriere: null,
        cartegriseImage: null,
        isLoading: 0,
        isUpdateUserImage: 0,
        villeUser: '',
        quartierUser: '',
        isVilleQuartier: 0,
        name: TextEditingController(),
        email: TextEditingController(),
        phone: TextEditingController(),
        adress: TextEditingController(),
        city: TextEditingController(),
        numImpot: TextEditingController(),
        numContribuable: TextEditingController(),
        webSite: TextEditingController(),
        country: TextEditingController(),
        registreCommerce: TextEditingController(),
      );

  factory UserState.authenticationFailed({
    required String message,
  }) =>
      UserState(
        authenticationMessage: message,
      );

  factory UserState.registerFailed({
    required String message,
  }) =>
      UserState(
        registerFailedMessage: message,
      );

  factory UserState.unauthenticated() => UserState.initial();

  factory UserState.checkingUser() => UserState.initial();

  factory UserState.loginIngUser() => UserState.initial();

  factory UserState.loginIngFailed({required String message}) =>
      UserState(authenticationMessage: message);

  factory UserState.authenticated() => UserState.initial();
}
