part of 'devis_bloc.dart';

@freezed
class DevisEvent with _$DevisEvent {
  const factory DevisEvent.getListPack() = GetListPack;
  const factory DevisEvent.getListDevis() = GetListDevis;
  const factory DevisEvent.startMissionDevis() = StartMissionDevis;
  const factory DevisEvent.endMissionDevis() = EndMissionDevis;
  const factory DevisEvent.startDisponibiliteDevis() = StartDisponibiliteDevis;

  const factory DevisEvent.savePositionForMissionDevis() =
      SavePositionForMissionDevis;
  const factory DevisEvent.newDevis() = NewDevis;
  const factory DevisEvent.setIndexHistoryDevis({required dynamic index}) =
      SetIndexHistoryDevisEvent;

  const factory DevisEvent.changeIndexDevis({required bool val}) =
      ChangeIndexDevis;
  const factory DevisEvent.fieldChanged(
      {required String fieldKey, required String? value}) = FieldChanged;

  const factory DevisEvent.getListParametre() = GetListParametre;
  const factory DevisEvent.updateParametre(
      {required String label, required String value}) = UpdateParametre;
}
