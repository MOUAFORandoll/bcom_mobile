part of 'home_bloc.dart';

@freezed
class HomeState with _$HomeState {
  const factory HomeState({
    required User? user,
    required int index,
    required int loadHomeInfo,
    required HomeInfoModel? homeInfo,
    required List<OnBoardingModel>? onboardingDataImage,
    required OnBoardingModel? onboardingDataVideo,
    required bool? recupMailStatus,
    required bool? noOpen,
  }) = _HomeState;

  factory HomeState.initial() => HomeState(
      user: null,
      homeInfo: null,
      onboardingDataVideo: null,
      onboardingDataImage: [],
      index: 0,
      loadHomeInfo: 0,
      recupMailStatus: true,
      noOpen: false);
}
