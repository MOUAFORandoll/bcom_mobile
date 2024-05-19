// import 'package:Bcom/application/model/data/VilleModel.dart';

// class DevisModel {
//   String id;
//   String typeProjet;
//   String nombreBiker;
//   String dureeTravail;
//   String zone;
//   String horaire;
//   int typeTravail;
//   int status;
//   int montant;
//   Pack pack;
//   bool inQuartier;
//   Client client;
//   VilleModel ville;
//   DateTime dateCreated;

//   DevisModel({
//     required this.id,
//     required this.typeProjet,
//     required this.nombreBiker,
//     required this.dureeTravail,
//     required this.zone,
//     required this.horaire,
//     required this.typeTravail,
//     required this.status,
//     required this.montant,
//     required this.pack,
//     required this.inQuartier,
//     required this.client,
//     required this.ville,
//     required this.dateCreated,
//   });

//   factory DevisModel.fromJson(Map<String, dynamic> json) {
//     return DevisModel(
//       id: json['id'],
//       typeProjet: json['typeProjet'],
//       status: json['status'],
//       montant: json['montant'],
//       nombreBiker: json['nombreBiker'],
//       dureeTravail: json['duree_travail'],
//       zone: json['zone'],
//       horaire: json['horaire'],
//       typeTravail: json['typeTravail'],
//       pack: Pack.fromJson(json['pack']),
//       inQuartier: json['inQuartier'],
//       client: Client.fromJson(json['client']),
//       ville: VilleModel.fromJson(json['ville']),
//       dateCreated: DateTime.parse(json['dateCreated']),
//     );
//   }

//   Map<String, dynamic> toJson() {
//     return {
//       'id': id,
//       'typeProjet': typeProjet,
//       'nombreBiker': nombreBiker,
//       'duree_travail': dureeTravail,
//       'zone': zone,
//       'horaire': horaire,
//       'typeTravail': typeTravail,
//       'pack': pack.toJson(),
//       'inQuartier': inQuartier,
//       'client': client.toJson(),
//       'dateCreated': dateCreated.toIso8601String(),
//     };
//   }
// }

// class Pack {
//   String libelle;
//   String description;

//   Pack({
//     required this.libelle,
//     required this.description,
//   });

//   factory Pack.fromJson(Map<String, dynamic> json) {
//     return Pack(
//       libelle: json['libelle'],
//       description: json['description'],
//     );
//   }

//   Map<String, dynamic> toJson() {
//     return {
//       'libelle': libelle,
//       'description': description,
//     };
//   }
// }

// class Client {
//   String nom;
//   String prenom;
//   int phone;

//   Client({
//     required this.nom,
//     required this.prenom,
//     required this.phone,
//   });

//   factory Client.fromJson(Map<String, dynamic> json) {
//     return Client(
//       nom: json['nom'],
//       prenom: json['prenom'],
//       phone: json['phone'],
//     );
//   }

//   Map<String, dynamic> toJson() {
//     return {
//       'nom': nom,
//       'prenom': prenom,
//       'phone': phone,
//     };
//   }
// }

class DevisModel {
  int id;
  String? typeProjet;
  String? nombreBiker;
  String? dureeTravail;
  String? zone;
  String? horaire;
  int? typeTravail;
  Pack? pack;
  bool? inQuartier;
  Client? client;
  dynamic status;
  DateTime? dateCreated;
  dynamic montant;
  Ville? ville;

  DevisModel({
    required this.id,
    required this.typeProjet,
    required this.nombreBiker,
    required this.dureeTravail,
    required this.zone,
    required this.horaire,
    required this.typeTravail,
    required this.pack,
    required this.inQuartier,
    required this.client,
    this.status,
    required this.dateCreated,
    this.montant,
    required this.ville,
  });

  factory DevisModel.fromJson(Map<String, dynamic> json) {
    return DevisModel(
      id: json['id'],
      typeProjet: json['typeProjet'],
      nombreBiker: json['nombreBiker'],
      dureeTravail: json['duree_travail'],
      zone: json['zone'],
      horaire: json['horaire'],
      typeTravail: json['typeTravail'],
      pack: Pack.fromJson(json['pack']),
      inQuartier: json['inQuartier'],
      client: Client.fromJson(json['client']),
      status: json['status'],
      dateCreated: json['dateCreated'] == null
          ? DateTime.now()
          : DateTime.parse(json['dateCreated']),
      montant: json['montant'],
      ville: json['ville'] == null
          ? Ville(id: 0, libelle: 'Inconnu')
          : Ville.fromJson(json['ville']),
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'typeProjet': typeProjet,
      'nombreBiker': nombreBiker,
      'duree_travail': dureeTravail,
      'zone': zone,
      'horaire': horaire,
      'typeTravail': typeTravail,
      'pack': pack!.toJson(),
      'inQuartier': inQuartier,
      'client': client!.toJson(),
      'status': status,
      'dateCreated': dateCreated!.toIso8601String(),
      'montant': montant,
      'ville': ville!.toJson(),
    };
  }
}

class Pack {
  String libelle;
  String description;

  Pack({
    required this.libelle,
    required this.description,
  });

  factory Pack.fromJson(Map<String, dynamic> json) {
    return Pack(
      libelle: json['libelle'],
      description: json['description'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'libelle': libelle,
      'description': description,
    };
  }
}

class Client {
  String nom;
  String prenom;
  String phone;

  Client({
    required this.nom,
    required this.prenom,
    required this.phone,
  });

  factory Client.fromJson(Map<String, dynamic> json) {
    return Client(
      nom: json['nom'],
      prenom: json['prenom'],
      phone: json['phone'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'nom': nom,
      'prenom': prenom,
      'phone': phone,
    };
  }
}

class Ville {
  int id;
  String libelle;

  Ville({
    required this.id,
    required this.libelle,
  });

  factory Ville.fromJson(Map<String, dynamic> json) {
    return Ville(
      id: json['id'],
      libelle: json['libelle'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'libelle': libelle,
    };
  }
}
