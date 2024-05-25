class Speciality {
  final int? id;
  final String? libelle;
  final String? libelleEn;

  Speciality({
    this.id,
    this.libelle,
    this.libelleEn,
  });

  Speciality copyWith({
    int? id,
    String? libelle,
    String? libelleEn,
  }) =>
      Speciality(
        id: id ?? this.id,
        libelle: libelle ?? this.libelle,
        libelleEn: libelleEn ?? this.libelleEn,
      );

  factory Speciality.fromMap(Map<String, dynamic> json) => Speciality(
        id: json['id'],
        libelle: json['libelle'],
        libelleEn: json['libelle_en'],
      );

  Map<String, dynamic> toMap() => {
        'id': id,
        'libelle': libelle,
        'libelle_en': libelleEn,
      };
}
