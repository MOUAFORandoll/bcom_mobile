part of 'devis_bloc.dart';

@freezed
class DevisEvent with _$DevisEvent {
  const factory DevisEvent.getListPack() = GetListPack;
  const factory DevisEvent.getListMissionDevisEffectue() =
      GetListMissionDevisEffectue;
  const factory DevisEvent.startMissionDevis() = StartMissionDevis;
  const factory DevisEvent.endMissionDevis() = EndMissionDevis;
  const factory DevisEvent.startDisponibiliteDevis() = StartDisponibiliteDevis;
  const factory DevisEvent.endDisponibiliteDevis() = EndDisponibiliteDevis;
  const factory DevisEvent.savePositionForMissionDevis() =
      SavePositionForMissionDevis;
  const factory DevisEvent.incrementTimer() = IncrementTimer;
  const factory DevisEvent.setIndexHistoryDevis({required dynamic index}) =
      SetIndexHistoryDevisEvent;
  const factory DevisEvent.selectMission({required Mission mission}) =
      SelectMission;
  
  const factory DevisEvent.demandeMission() = DemandeMission;
  const factory DevisEvent.getListSecteurDevis() = GetListSecteurDevis;
  const factory DevisEvent.selectSecteur({required Secteur secteur}) =
      SelectSecteur;
}
