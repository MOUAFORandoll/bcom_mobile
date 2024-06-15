part of 'devis_bloc.dart';

@freezed
class DevisState with _$DevisState {
  const factory DevisState({
    
    required int? indexDevis,
    required List<DevisModel>? list_devis,
    required List<VilleModel>? list_ville,
    VilleModel? ville,
    required List? listTypeCommunication,
    required int indexHistory,
    required int? isRequest,
    required int? load_list_pack,
    required int? load_list_devis,
    String? paiement_url,
    required int? load_list_ville,
    required bool? updateData,
    required List<Parametre>? list_parametre,
    required int? load_list_parametre,
    required Parametre? parametre,
    required int? inQuartier,
    required TimeOfDay horaireStart,
    required TimeOfDay horaireEnd,
    String? typeCommunication,
    required int? typeTravail, // jour nuit jour et nuit
    required TextEditingController typeProjet,
    required TextEditingController nombreBiker,
    required TextEditingController zone,
    required TextEditingController dureeTravail,
    required TextEditingController nom_produit,
    required TextEditingController type_produit,
    required TextEditingController description_produit,
  }) = _DevisState;

  factory DevisState.initial() => DevisState(
        horaireStart: TimeOfDay(hour: 08, minute: 00),
        horaireEnd: TimeOfDay(hour: 18, minute: 00),
        dureeTravail: new TextEditingController(),
        nombreBiker: new TextEditingController(),
        zone: new TextEditingController(),
        paiement_url: '',
        typeProjet: new TextEditingController(),
        nom_produit: new TextEditingController(),
        type_produit: new TextEditingController(),
        description_produit: new TextEditingController(),
        list_parametre: [],
        list_ville: [],
        listTypeCommunication: ['Type1', 'Type2', ',Type3', ',Type4'],
        load_list_parametre: null,
        parametre: null,
        indexDevis: 0,
        typeTravail: 0,
        inQuartier: null,
        updateData: null,
        load_list_pack: 0,
        load_list_devis: 0,
        load_list_ville: null,
        indexHistory: 0,
        isRequest: null,
        list_devis: [],
     
      );
}
