class AbonnementModel {
  int? id;
  String? title;
  dynamic fileService;
  String? description;
  String? amount;
  bool? isDeleted;
  DateTime? createdAt;
  DateTime? updatedAt;

  AbonnementModel({
   required this.id,
   required this.title,
   required this.fileService,
   required this.description,
   required this.amount,
   required this.isDeleted,
   required this.createdAt,
   required this.updatedAt,
  });

  factory AbonnementModel.fromJson(Map<String, dynamic> json) => AbonnementModel(
        id: json['id'] as int,
        title: json['title'] as String,
        fileService: json['fileService'] as dynamic,
        description: json['description'] as String,
        amount: json['amount'] as String,
        isDeleted: json['isDeleted'] as bool,
        createdAt: json['createdAt'] == null
            ? null
            : DateTime.parse(json['createdAt'] as String),
        updatedAt: json['updatedAt'] == null
            ? null
            : DateTime.parse(json['updatedAt'] as String),
      );

  Map<String, dynamic> toJson() => {
        'id': id,
        'title': title,
        'fileService': fileService,
        'description': description,
        'amount': amount,
        'isDeleted': isDeleted,
        'createdAt': createdAt?.toIso8601String(),
        'updatedAt': updatedAt?.toIso8601String(),
      };
}
