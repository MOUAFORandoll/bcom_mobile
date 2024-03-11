class Secteur {
  final int id;
  final String libelle;
  final String dateCreated;
  final bool status;

  Secteur({
    required this.libelle,
    required this.id,
    required this.dateCreated,
    required this.status,
  });

  Secteur.fromJson(Map<String, dynamic> json)
      : id = json['id'],
        libelle = json['libelle'],
        dateCreated = json['dateCreated'],
        status = json['status'];

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'libelle': libelle,
      'dateCreated': dateCreated,
      'status': status,
    };
  }
}
