part of 'tcontroller_bloc.dart';

@freezed
class TcontrollerState with _$TcontrollerState {
  const factory TcontrollerState(
      {required LatLng? position,
      required List? list_mission,
      required int? load_list_mission,
      required int? load_list_mission_done,
      required List? list_mission_done}) = _TcontrollerState;

  factory TcontrollerState.initial() => TcontrollerState(
      load_list_mission: null,
      load_list_mission_done: null,
      position: null,
      list_mission: [],
      list_mission_done: []);
}
