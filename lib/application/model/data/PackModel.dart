class PackModel {
  int id;
  String title;
  String description;
  String filePackage;

  PackModel({
    required this.id,
    required this.title,
    required this.description,
    required this.filePackage,
  });

  factory PackModel.fromJson(Map<String, dynamic> json) {
    return PackModel(
      id: json['id'] as int,
      title: json['title'] as String,
      description: json['description'] as String,
      filePackage: json['filePackage'] as String,
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'title': title,
      'description': description,
      'filePackage': filePackage,
    };
  }
}
