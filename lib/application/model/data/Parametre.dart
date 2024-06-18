class Parametre {
  final String title;
  final String? description;
  final String inputType;
  final String value;
  final String itemsValue;

  Parametre(
      {required this.title,
      this.description,
      required this.inputType,
      required this.itemsValue,
      required this.value});

  Parametre.fromJson(Map<String, dynamic> json)
      : title = json['title'],
        description = json['description'],
        inputType = json['inputType'],
        itemsValue = json['value'],
        value = '';

  Map<String, dynamic> toJson() {
    return {
      'title': title,
      'description': description,
      'inputType': inputType,
      'itemsValue': itemsValue,
      'value': value,
    };
  }
}
