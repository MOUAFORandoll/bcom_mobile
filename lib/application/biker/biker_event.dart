part of 'biker_bloc.dart';

@freezed
class BikerEvent with _$BikerEvent {
  const factory BikerEvent.getListMissionBiker() = GetListMissionBiker;
  const factory BikerEvent.getListMissionBikerEffectue() =
      GetListMissionBikerEffectue;
  const factory BikerEvent.startMissionBiker() = StartMissionBiker;
  const factory BikerEvent.endMissionBiker() = EndMissionBiker;
  const factory BikerEvent.startDisponibiliteBiker() = StartDisponibiliteBiker;
  const factory BikerEvent.endDisponibiliteBiker() = EndDisponibiliteBiker;
  const factory BikerEvent.savePositionForMissionBiker() =
      SavePositionForMissionBiker;
  const factory BikerEvent.incrementTimer() = IncrementTimer;
  const factory BikerEvent.setIndexHistoryBiker({required dynamic index}) =
      SetIndexHistoryBikerEvent;
  const factory BikerEvent.selectMission({required Mission mission}) =
      SelectMission;
  const factory BikerEvent.listSessionMission({required MissionBiker mission}) =
      ListSessionMission;
  const factory BikerEvent.demandeMission() = DemandeMission;
  const factory BikerEvent.getListSecteurBiker() = GetListSecteurBiker;
  const factory BikerEvent.selectSecteur({required Secteur secteur}) =
      SelectSecteur;
}
