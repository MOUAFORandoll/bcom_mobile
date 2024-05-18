part of 'devis_bloc.dart';

@freezed
class DevisEvent with _$DevisEvent {
  const factory DevisEvent.getListPack() = GetListPack;
  const factory DevisEvent.getListDevis() = GetListDevis;
  const factory DevisEvent.startMissionDevis() = StartMissionDevis;
  const factory DevisEvent.endMissionDevis() = EndMissionDevis;
  const factory DevisEvent.startDisponibiliteDevis() = StartDisponibiliteDevis;
  const factory DevisEvent.getListVille() = GetListVille;
  const factory DevisEvent.savePositionForMissionDevis() =
      SavePositionForMissionDevis;
  const factory DevisEvent.newDevis() = NewDevis;
  const factory DevisEvent.setIndexHistoryDevis({required dynamic index}) =
      SetIndexHistoryDevisEvent;
  const factory DevisEvent.selectPack({required PackModel pack}) = SelectPack;
  const factory DevisEvent.selectVille({required VilleModel ville}) =
      SelectVille;
  const factory DevisEvent.changeIndexDevis({required bool val}) =
      ChangeIndexDevis;
  const factory DevisEvent.fieldChanged(
      {required String fieldKey, required String? value}) = FieldChanged;
  const factory DevisEvent.demandeMission() = DemandeMission;
  const factory DevisEvent.getListSecteurDevis() = GetListSecteurDevis;
  const factory DevisEvent.selectSecteur({required Secteur secteur}) =
      SelectSecteur;
}
