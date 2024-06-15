part of 'abonnement_bloc.dart';

@freezed
class AbonnementState with _$AbonnementState {
  const factory AbonnementState(
      {required List<AbonnementModel>? listAbonnement,
      required AbonnementModel? abonnement,
      required UserAbonnementModel? userAbonnement,
      required int? loadListAbonnement,
      String? ref_transactiopn,
      String? paiement_url,
      required int? loadUserAbonnement,
      required bool isClosePaiementView,
      required int? loadsuccessPay,
      required int? loadRequest}) = _AbonnementState;
  factory AbonnementState.initial() => AbonnementState(
      listAbonnement: [],
      userAbonnement: null,
      paiement_url: '',
      isClosePaiementView: false,
      loadsuccessPay: null,
      ref_transactiopn: '',
      loadListAbonnement: 0,
      loadUserAbonnement: 0,
      loadRequest: null,
      abonnement: null);
}
