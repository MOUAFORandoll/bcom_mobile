class ParamSaveModel {
  String title;
  String value;
  ParamSaveModel({
    required this.title,
    required this.value,
  });

  factory ParamSaveModel.fromJson(Map<String, dynamic> json) {
    return ParamSaveModel(
      title: json['title'] as String,
      value: json['value'] as String,
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'title': title,
      'value': value,
    };
  }
}
