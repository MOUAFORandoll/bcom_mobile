class PackModel {
  int id;
  String libelle;
  String description;

  PackModel({
    required this.id,
    required this.libelle,
    required this.description,
  });

  factory PackModel.fromJson(Map<String, dynamic> json) {
    return PackModel(
      id: json['id'] as int,
      libelle: json['libelle'] as String,
      description: json['description'] as String,
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'libelle': libelle,
      'description': description,
    };
  }
}
