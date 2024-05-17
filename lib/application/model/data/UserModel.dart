class UserModel {
  String nom;
  String prenom;
  String nationalite;
  int phone;
  bool status;
  String codeParrainage;

  UserModel({
    required this.nom,
    required this.prenom,
    required this.nationalite,
    required this.phone,
    required this.status,
    required this.codeParrainage,
  });

  factory UserModel.fromJson(Map<String, dynamic> json) {
    return UserModel(
      nom: json['nom'] as String,
      prenom: json['prenom'] as String,
      nationalite: json['nationnalite'] as String,
      phone: json['phone'] as int,
      status: json['status'] as bool,
      codeParrainage: json['codeParrainage'] as String,
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'nom': nom,
      'prenom': prenom,
      'nationnalite': nationalite,
      'phone': phone,
      'status': status,
      'codeParrainage': codeParrainage,
    };
  }
}
