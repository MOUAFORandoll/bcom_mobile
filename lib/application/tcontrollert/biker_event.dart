part of 'biker_bloc.dart';

@freezed
class BikerEvent with _$BikerEvent {
  const factory BikerEvent.getListMissionBiker() = GetListMissionBiker;
  const factory BikerEvent.getListMissionBikerDone() = GetListMissionBikerDone;
  const factory BikerEvent.startMissionBiker({required int mission}) =
      StartMissionBiker;
  const factory BikerEvent.endMissionBiker({required int mission}) =
      EndMissionBiker;
  const factory BikerEvent.savePositionForMissionBiker() =
      SavePositionForMissionBiker;
}
