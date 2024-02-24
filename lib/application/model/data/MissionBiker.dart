class MissionBiker {
  int id;
  String libelle;
  String description;
  String nbre_point;
  String date_created;
  int nbre_session;
  bool status;

  MissionBiker({
    required this.libelle,
    required this.id,
    required this.description,
    required this.nbre_point,
    required this.date_created,
    required this.status,
    required this.nbre_session,
  });

  MissionBiker.fromJson(Map<String, dynamic> json)
      : id = json['id'],
        libelle = json['libelle'],
        description = json['description'],
        nbre_point = json['nbre_point'],
        date_created = json['date_created'],
        nbre_session = json['nbre_session'],
        status = json['status'];

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'libelle': libelle,
      'description': description,
      'nbre_point': nbre_point,
      'date_created': date_created,
      'nbre_session': nbre_session,
      'status': status,
    };
  }
}
