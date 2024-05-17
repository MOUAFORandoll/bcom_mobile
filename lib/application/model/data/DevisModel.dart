class DevisModel {
  int id;
  String typeProjet;
  String nombreDevis;
  String dureeTravail;
  String zone;
  String horaire;
  int typeTravail;
  String pack;
  bool inQuartier;

  DevisModel({
    required this.id,
    required this.typeProjet,
    required this.nombreDevis,
    required this.dureeTravail,
    required this.zone,
    required this.horaire,
    required this.typeTravail,
    required this.pack,
    required this.inQuartier,
  });

  factory DevisModel.fromJson(Map<String, dynamic> json) {
    return DevisModel(
      id: json['id'] as int,
      typeProjet: json['typeProjet'] as String,
      nombreDevis: json['nombreDevis'] as String,
      dureeTravail: json['duree_travail'] as String,
      zone: json['zone'] as String,
      horaire: json['horaire'] as String,
      typeTravail: json['typeTravail'] as int,
      pack: json['pack'] as String,
      inQuartier: json['inQuartier'] as bool,
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'typeProjet': typeProjet,
      'nombreDevis': nombreDevis,
      'duree_travail': dureeTravail,
      'zone': zone,
      'horaire': horaire,
      'typeTravail': typeTravail,
      'pack': pack,
      'inQuartier': inQuartier,
    };
  }
}
