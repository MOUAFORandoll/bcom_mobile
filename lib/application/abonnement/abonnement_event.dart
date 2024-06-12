part of 'abonnement_bloc.dart';

@freezed
class AbonnementEvent with _$AbonnementEvent {
  const factory AbonnementEvent.started() = _Started;

  const factory AbonnementEvent.selectAbonnement(
      {required AbonnementModel abonnement}) = SelectAbonnement;
  const factory AbonnementEvent.getListAbonnement() = GetListAbonnement;
  const factory AbonnementEvent.userAbonnement() = UserAbonnement;
  const factory AbonnementEvent.newAbonnement() = NewAbonnement;
}
