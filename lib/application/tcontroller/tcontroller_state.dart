part of 'tcontroller_bloc.dart';

@freezed
class TcontrollerState with _$TcontrollerState {
  const factory TcontrollerState(
      {required LatLng? position,
      required List<MissionControl>? list_mission,
      required int? load_list_mission,
      required MissionControl? mission_control,
      required int? isRequest,
      required int? isRequestNote,
      required int? load_list_mission_done,
      required List<MissionControl>? list_mission_done}) = _TcontrollerState;

  factory TcontrollerState.initial() => TcontrollerState(
      load_list_mission: null,
      load_list_mission_done: null,
      position: null,
      mission_control: null,
      isRequest: null,
      isRequestNote: null,
      list_mission: [],
      list_mission_done: []);
}
