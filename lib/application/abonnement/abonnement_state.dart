part of 'abonnement_bloc.dart';

@freezed
class AbonnementState with _$AbonnementState {
  const factory AbonnementState(
      {required List<AbonnementModel>? listAbonnement,
      required AbonnementModel? abonnement,
      required UserAbonnementModel? userAbonnement,
      required int? loadListAbonnement,
      String? paiement_url,
      required int? loadUserAbonnement,
      required int? loadRequest}) = _AbonnementState;
  factory AbonnementState.initial() => AbonnementState(
      listAbonnement: [],
      userAbonnement: null,
      paiement_url: '',
      loadListAbonnement: 0,
      loadUserAbonnement: 0,
      loadRequest: null,
      abonnement: null);
}
