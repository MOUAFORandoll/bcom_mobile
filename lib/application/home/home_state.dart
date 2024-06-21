part of 'home_bloc.dart';

@freezed
class HomeState with _$HomeState {
  const factory HomeState({
    required User? user,
    required int index,
    required int loadHomeInfo,
    required BcomInfo? bcomInfo,
    required bool? recupMailStatus,
    required bool? noOpen,
  }) = _HomeState;

  factory HomeState.initial() => HomeState(
      user: null,
      bcomInfo: null,
      index: 0,
      loadHomeInfo: 0,
      recupMailStatus: true,
      noOpen: false);
}
