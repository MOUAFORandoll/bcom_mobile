class DevisModel {
  int id;
  int? idPackaging;
  String? devisNumber;
  String amount;
  String? desciption;
  int? isDeleted;
  int? idClient;
  DateTime? createdAt;

  DevisModel({
    required this.id,
    required this.idPackaging,
    required this.devisNumber,
    required this.amount,
    required this.idClient,
    required this.createdAt,
    required this.desciption,
    required this.isDeleted,
  });

  factory DevisModel.fromJson(Map<String, dynamic> json) {
    return DevisModel(
      id: json['id'],
      idPackaging: json['idPackaging'],
      devisNumber: json['devisNumber'],
      amount: json['amount'],
      desciption: json['desciption'],
      isDeleted: json['isDeleted'],
      idClient: json['idClient'],
      createdAt: json['createdAt'] == null
          ? DateTime.now()
          : DateTime.parse(json['createdAt']),
    );
  }
}
