part of 'abonnement_bloc.dart';

@freezed
class AbonnementEvent with _$AbonnementEvent {
  const factory AbonnementEvent.started() = _Started;

  const factory AbonnementEvent.selectAbonnement(
      {required AbonnementModel abonnement}) = SelectAbonnement;
  const factory AbonnementEvent.getListAbonnement() = GetListAbonnement;
  const factory AbonnementEvent.userAbonnement() = UserAbonnement;
  const factory AbonnementEvent.newAbonnement() = NewAbonnement;
  const factory AbonnementEvent.payAbonnement() = PayAbonnement;
 

  const factory AbonnementEvent.verifyPayement() = VerifyPayement;
  const factory AbonnementEvent.renouvellerAbonnement() =
      RenouvellerPayAbonnement;

  const factory AbonnementEvent.verifyRenouvellementPayement() =
      VerifyRenouvellementPayement;
}
