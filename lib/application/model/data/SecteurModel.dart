import 'package:intl/intl.dart';

class ParametreModel {
  int id;
  String libelle;
  DateTime dateCreated;

  ParametreModel({
    required this.id,
    required this.libelle,
    required this.dateCreated,
  });

  factory ParametreModel.fromJson(Map<String, dynamic> json) {
    return ParametreModel(
      id: json['id'] as int,
      libelle: json['libelle'] as String,
      dateCreated: DateTime.parse(json['dateCreated']),
    );
  }

  Map<String, dynamic> toJson() {
    final DateFormat formatter = DateFormat('yyyy-MM-ddTHH:mm:ss.SSSZ');
    final String formattedDate = formatter.format(dateCreated);

    return {
      'id': id,
      'libelle': libelle,
      'dateCreated': formattedDate,
    };
  }
}
