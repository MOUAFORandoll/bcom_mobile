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
      required List<TransactionModel>? listTransaction,
      int? userHasSubscriptionId,
      required int? loadUserAbonnement,
      required bool isClosePaiementView,
      required int? loadsuccessPay,
      required int? loadTransaction,
      required int? loadRequest}) = _AbonnementState;
  factory AbonnementState.initial() => AbonnementState(
      listAbonnement: [],
      listTransaction: [],
      loadTransaction: 0,
      userAbonnement: null,
      paiement_url: '',
      userHasSubscriptionId: null,
      isClosePaiementView: false,
      loadsuccessPay: null,
      ref_transactiopn: '',
      loadListAbonnement: 0,
      loadUserAbonnement: 0,
      loadRequest: null,
      abonnement: null);
}
