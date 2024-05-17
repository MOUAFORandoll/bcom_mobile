part of 'user_bloc.dart';

@freezed
class UserEvent with _$UserEvent {
  const factory UserEvent.chooseExperience({
    required String phone,
    required String password,
  }) = SignInEvent;

  const factory UserEvent.register(
      {required String nom,
      required String prenom,
      required String nationnalite,
      required String phone,
      required String password,
      required String re_password}) = RegisterEvent;
  const factory UserEvent.addInfoEntreprise({
    required String titre,
    required String numRegCommerce,
  }) = AddInfoEntreprise;

  const factory UserEvent.sendCode({required String data}) = SendCode;
  const factory UserEvent.updateUserInfo({required Map data}) = UpdateUserInfo;
  const factory UserEvent.verifyCode(
      {required String data, required String code}) = VerifyCode;
  const factory UserEvent.resetpassword(
      {required String data, required String password}) = ResetPassword;
  // Uncomment and customize these events as needed
  const factory UserEvent.signOut({required BuildContext context}) =
      SignOutEvent;
  // const factory UserEvent.getDataBase() = GetDataBateEvent;
  // const factory UserEvent.checkUserIsConnected() = CheckUserIsConnectedEvent;
  const factory UserEvent.getUserEvent() = GetUserEvent;
  const factory UserEvent.getVilleQuartier() = GetVilleQuartier;
  const factory UserEvent.updateUserImage() = UpdateUserImage;

  const factory UserEvent.setCniImageAvant({required File? image}) =
      SetCniImageAvant;
  const factory UserEvent.setCniImageArriere({required File? image}) =
      SetCniImageArriere;

  const factory UserEvent.setCGImage({required File? image}) = SetCGImage;
  const factory UserEvent.completeDevisInfo({required FormData data}) =
      CompleteDevisInfo;
}
