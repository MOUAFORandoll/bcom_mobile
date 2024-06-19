class UserAbonnementModel {
  int userId;
  int subscriptionId;
  String startDate;
  String endDate;
  int isPay;

  UserAbonnementModel({
    required this.userId,
    required this.subscriptionId,
    required this.startDate,
    required this.endDate,
    required this.isPay,
  });

  // Factory constructor to create a UserAbonnementModel from JSON
  factory UserAbonnementModel.fromJson(Map<String, dynamic> json) {
    return UserAbonnementModel(
      userId: json['userId'],
      subscriptionId: json['subscriptionId'],
      startDate: json['startDate'],
      endDate: json['endDate'],
      isPay: json['isPay'],
    );
  }

  // Method to convert a UserAbonnementModel instance to JSON
  Map<String, dynamic> toJson() {
    return {
      'userId': userId,
      'subscriptionId': subscriptionId,
      'startDate': startDate,
      'endDate': endDate,
      'isPay': isPay,
    };
  }
}
