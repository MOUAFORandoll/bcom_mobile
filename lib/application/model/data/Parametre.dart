class Parametre {
  int id;

  String title;
  final String? description;
  final String inputType;
  final String itemsValue;
  final String montants;

  Parametre({
    required this.id,
    required this.title,
    this.description,
    required this.inputType,
    required this.itemsValue,
    required this.montants,
  });

  Parametre.fromJson(Map<String, dynamic> json)
      : id = json['id'],
        title = json['title'],
        description = json['description'],
        inputType = json['inputType'].toString(),
        itemsValue = json['value'],
        montants = json['amount'];

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'title': title,
      'description': description,
      'inputType': inputType,
      'itemsValue': itemsValue,
      'montants': montants
    };
  }
}
