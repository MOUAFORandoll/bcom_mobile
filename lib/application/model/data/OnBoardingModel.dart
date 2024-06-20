class OnBoardingModel {
  String? title;
  String? description;
  String? linkFile;
  int? id;
  String? location;

  OnBoardingModel({
    required this.title,
    required this.description,
    required this.linkFile,
    required this.id,
    required this.location,
  });

  factory OnBoardingModel.fromJson(Map<String, dynamic> json) {
    return OnBoardingModel(
      title: json['title'] as String,
      description: json['description'] as String,
      linkFile: json['linkFile'],
      id: json['id'] as int,
      location: json['location'] ,
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'title': title,
      'description': description,
      'linkFile': linkFile,
      'id': id,
      'location': location,
    };
  }
}
