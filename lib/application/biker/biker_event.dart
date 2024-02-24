part of 'biker_bloc.dart';

@freezed
class BikerEvent with _$BikerEvent {
  const factory BikerEvent.getListMissionBiker() = GetListMissionBiker;
  const factory BikerEvent.getListMissionBikerDone() = GetListMissionBikerDone;
  const factory BikerEvent.getListMissionBikerEncours() =
      GetListMissionBikerEncours;
  const factory BikerEvent.startMissionBiker() = StartMissionBiker;
  const factory BikerEvent.endMissionBiker({required int missionsession_id}) =
      EndMissionBiker;
  const factory BikerEvent.savePositionForMissionBiker() =
      SavePositionForMissionBiker;
  const factory BikerEvent.setIndexHistoryBiker({required dynamic index}) =
      SetIndexHistoryBikerEvent;
  const factory BikerEvent.selectMission({required Mission mission}) =
      SelectMission;
}
