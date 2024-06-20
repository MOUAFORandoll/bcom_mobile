class HomeInfoModel {
  String? whatsappPhone;
  String? emailContact;
  String? phone;
  int? id;
  String? location;

  HomeInfoModel({
    required this.whatsappPhone,
    required this.emailContact,
    required this.phone,
    required this.id,
    required this.location,
  });

  factory HomeInfoModel.fromJson(Map<String, dynamic> json) {
    return HomeInfoModel(
      whatsappPhone: json['whatsappPhone'] as String,
      emailContact: json['emailContact'] as String,
      phone: json['phone'] as String,
      id: json['id'] as int,
      location: json['location'] as String,
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'whatsappPhone': whatsappPhone,
      'emailContact': emailContact,
      'nationnalite': phone,
      'id': id,
      'location': location,
    };
  }
}
