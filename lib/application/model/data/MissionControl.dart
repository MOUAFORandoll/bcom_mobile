class MissionControl {
  final int id;
  final int status;
  final int? note;
  final Mission mission;
  final Controller controller;
  final String dateCreated;
  final Map<String, dynamic>? bikerPosition;
  final String? dateEnd;
  final String? dateStart;

  MissionControl({
    required this.id,
    required this.status,
    this.note,
    required this.mission,
    required this.controller,
    required this.dateCreated,
    this.bikerPosition,
    this.dateEnd,
    this.dateStart,
  });

  factory MissionControl.fromJson(Map<String, dynamic> json) => MissionControl(
        id: json['id'],
        status: json['status'],
        note: json['note'],
        mission: Mission.fromJson(json['mission']),
        controller: Controller.fromJson(json['controller']),
        dateCreated: json['date_created'],
        bikerPosition: json['biker_position'],
        dateEnd: json['date_end'],
        dateStart: json['date_start'],
      );
}

class Mission {
  final int id;
  final String libelle;
  final String dateCreated;
  final String description;
  final String nbrePoint;
  final bool status;

  Mission({
    required this.id,
    required this.libelle,
    required this.dateCreated,
    required this.description,
    required this.nbrePoint,
    required this.status,
  });

  factory Mission.fromJson(Map<String, dynamic> json) => Mission(
        id: json['id'],
        libelle: json['libelle'],
        dateCreated: json['date_created'],
        description: json['description'],
        nbrePoint: json['nbre_point'],
        status: json['status'],
      );
}

class Controller {
  final int id;
  final String name;
  final String image;
  final String phone;

  Controller({
    required this.id,
    required this.name,
    required this.image,
    required this.phone,
  });

  factory Controller.fromJson(Map<String, dynamic> json) => Controller(
        id: json['id'],
        name: json['name'],
        image: json['image'],
        phone: json['phone'],
      );
}
