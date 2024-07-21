part of 'devis_bloc.dart';

@freezed
class DevisState with _$DevisState {
  const factory DevisState(
      {required int? indexDevis,
      required List<DevisModel>? listDevis,
      required List<Widget>? list_widget_devis,
      required List<ParamSaveModel>? listdataSave,
      required List? listTypeCommunication,
      required int indexHistory,
      required int? isRequest,
      required int? load_list_pack,
      required int? load_listDevis,
      required int? montantDevis,
      String? paiement_url,
      required bool? updateData,
      required List<Parametre>? list_parametre,
      required int? load_list_parametre,
      required TextEditingController description_produit,
      required Parametre? parametre,
      List<Map<dynamic, dynamic>>? dataDevis,
      dynamic formKey}) = _DevisState;

  factory DevisState.initial() => DevisState(
        dataDevis: [],
        description_produit: new TextEditingController(),
        formKey: GlobalKey<FormState>(),
        montantDevis: 0,
        listdataSave: [],
        paiement_url: '',
        list_parametre: [],
        listTypeCommunication: ['Type1', 'Type2', ',Type3', ',Type4'],
        load_list_parametre: null,
        parametre: null,
        indexDevis: 0,
        updateData: null,
        load_list_pack: 0,
        load_listDevis: 0,
        indexHistory: 0,
        isRequest: null,
        listDevis: [],
        list_widget_devis: [],
      );
}
