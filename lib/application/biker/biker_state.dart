part of 'biker_bloc.dart';

@freezed
class BikerState with _$BikerState {
  const factory BikerState(
      {required LatLng? position,
      required Mission? mission,
      required MissionSession? missionSession,
      required int? missionsession_id,
      required List<Mission>? list_mission,
      required List<MissionSession>? list_mission_session,
      required List<MissionBiker>? list_mission_done,
      required int indexHistory,
      required int? isRequest,
      required int? load_list_mission,
      required int? load_list_mission_done,
      required int? load_list_mission_encours,
      required bool? sendPosition,
      required int? load_list_mission_session,
      required int? time,
      required List<MissionBiker>? list_mission_encours}) = _BikerState;

  factory BikerState.initial() => BikerState(
      missionsession_id: null,
      time: 0,
      sendPosition: null,
      load_list_mission: 0,
      missionSession: null,
      load_list_mission_done: 0,
      load_list_mission_encours: 0,
      indexHistory: 0,
      load_list_mission_session: null,
      isRequest: null,
      list_mission_session: [],
      mission: null,
      position: null,
      list_mission: [],
      list_mission_encours: [],
      list_mission_done: []);
}
