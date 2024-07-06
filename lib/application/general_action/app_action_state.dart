part of 'app_action_cubit.dart';

@freezed
class AppActionState with _$AppActionState {
  const factory AppActionState(
      {required int index,
      required bool isInternetConnection}) = _AppActionState;
  factory AppActionState.initial() =>
      AppActionState(index: 0, isInternetConnection: true);
}
