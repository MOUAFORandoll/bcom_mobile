class Parametre {
  final String title;
  final String? description;
  final String inputType;
  final String value;

  Parametre(
      {required this.title,
      this.description,
      required this.inputType,
      required this.value});

  Parametre.fromJson(Map<String, dynamic> json)
      : title = json['title'],
        description = json['description'],
        inputType = json['inputType'],
        value = json['value'];

  Map<String, dynamic> toJson() {
    return {
      'title': title,
      'description': description,
      'inputType': inputType,
      'value': value,
    };
  }
}
