class EntrepriseModel {
  int id;
  String titre;
  String numRegCommerce;
  String proprietaire;

  EntrepriseModel({
    required this.id,
    required this.titre,
    required this.numRegCommerce,
    required this.proprietaire,
  });

  factory EntrepriseModel.fromJson(Map<String, dynamic> json) {
    return EntrepriseModel(
      id: json['id'] as int,
      titre: json['titre'] as String,
      numRegCommerce: json['num_reg_commerce'] as String,
      proprietaire: json['proprietaire'] as String,
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'titre': titre,
      'num_reg_commerce': numRegCommerce,
      'proprietaire': proprietaire,
    };
  }
}
