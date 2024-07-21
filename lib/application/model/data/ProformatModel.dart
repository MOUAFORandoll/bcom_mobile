import 'package:Bcom/entity.dart';

class ProformatModel {
  final String devisNumber;
  final double amount;
  final String description;
  final User user;
  final List<Parametre2> parametre;

  ProformatModel({
    required this.devisNumber,
    required this.amount,
    required this.description,
    required this.user,
    required this.parametre,
  });

  factory ProformatModel.fromJson(Map<String, dynamic> json) {
    return ProformatModel(
      devisNumber: json['devisNumber'],
      amount: (json['amount'] is double)
          ? json['amount']
          : double.parse(json['amount'].toString()),
      description: json['description'] ?? '',
      user: User.fromJson(Map<String, dynamic>.from(json['user'])),
      parametre: (json['parametre'] as List)
          .map((item) => Parametre2.fromJson(Map<String, dynamic>.from(item)))
          .toList(),
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'devisNumber': devisNumber,
      'amount': amount,
      'description': description,
      'user': user.toMap(),
      'parametre': parametre.map((e) => e.toJson()).toList(),
    };
  }
}

class Parametre2 {
  String title;
  String value;

  Parametre2({
    required this.title,
    required this.value,
  });

  Parametre2.fromJson(Map<String, dynamic> json)
      : title = json['title'],
        value = json['value'];

  Map<String, dynamic> toJson() {
    return {
      'title': title,
      'value': value,
    };
  }
}
