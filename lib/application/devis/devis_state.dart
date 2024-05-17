part of 'devis_bloc.dart';

@freezed
class DevisState with _$DevisState {
  const factory DevisState({
    required LatLng? position,
    required Mission? mission,
    required MissionSession? missionSession,
    required int? missionsession_id,
    required List<PackModel>? list_pack,
    required List<MissionSession>? list_mission_session,
    required int indexHistory,
    required int? isRequest,
    required int? load_list_pack,
    required int? load_list_mission_done,
    required int? load_list_mission_encours,
    required bool? sendPosition,
    required int? load_list_mission_session,
    required int? time,
    required bool? updateData,
    required List<Secteur>? list_secteur,
    required int? load_list_secteur,
    required Secteur? secteur,
  }) = _DevisState;

  factory DevisState.initial() => DevisState(
        list_secteur: [],
        load_list_secteur: null,
        secteur: null,
        missionsession_id: null,
        time: 0,
        sendPosition: null,
        updateData: null,
        load_list_pack: 0,
        missionSession: null,
        load_list_mission_done: 0,
        load_list_mission_encours: 0,
        indexHistory: 0,
        load_list_mission_session: null,
        isRequest: null,
        list_mission_session: [],
        mission: null,
        position: null,
        list_pack: [],
      );
}
