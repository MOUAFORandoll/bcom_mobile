class Mission {
  final int id;
  final String libelle;
  final String description;
  final String nbre_point;
  final String date_created;
  int nbre_session;
  final bool status;

  Mission({
    required this.libelle,
    required this.id,
    required this.date_created,
    required this.description,
    required this.nbre_session,
    required this.nbre_point,
    required this.status,
  });

  Mission.fromJson(Map<String, dynamic> json)
      : id = json['id'],
        libelle = json['libelle'],
        nbre_point = json['nbre_point'],
        date_created = json['date_created'],
        description = json['description'],
        nbre_session = json['nbre_session'],
        status = json['status'];

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'libelle': libelle,
      'description': description,
      'nbre_point': nbre_point,
      'nbre_session': nbre_session,
      'date_created': date_created,
      'status': status,
    };
  }
}
