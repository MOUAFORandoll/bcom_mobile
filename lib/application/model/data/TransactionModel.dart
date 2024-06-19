class TransactionModel {
  int? id;
  int? userId;
  int? subscriptionId;
  int? amountTotal;
  int? fee;
  String reference;
  String merchantReference;
  String authorizationUrl;
  String status;
  int? userHasSubscriptionId;
  int? subscriptionDuration;
  String title;
  String? fileService;
  String description;
  String amount;
  int? isDeleted;
  String? duration;

  TransactionModel({
    required this.id,
    required this.userId,
    required this.subscriptionId,
    required this.amountTotal,
    required this.fee,
    required this.reference,
    required this.merchantReference,
    required this.authorizationUrl,
    required this.status,
    required this.userHasSubscriptionId,
    required this.subscriptionDuration,
    required this.title,
    this.fileService,
    required this.description,
    required this.amount,
    required this.isDeleted,
    this.duration,
  });

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'userId': userId,
      'subscriptionId': subscriptionId,
      'amountTotal': amountTotal,
      'fee': fee,
      'reference': reference,
      'merchantReference': merchantReference,
      'authorizationUrl': authorizationUrl,
      'status': status,
      'userHasSubscriptionId': userHasSubscriptionId,
      'subscriptionDuration': subscriptionDuration,
      'title': title,
      'fileService': fileService,
      'description': description,
      'amount': amount,
      'isDeleted': isDeleted,
      'duration': duration,
    };
  }

  factory TransactionModel.fromJson(Map<String, dynamic> json) {
    return TransactionModel(
      id: json['id'],
      userId: json['userId'],
      subscriptionId: json['subscriptionId'],
      amountTotal: json['amount_total'],
      fee: json['fee'],
      reference: json['reference'],
      merchantReference: json['merchant_reference'],
      authorizationUrl: json['authorization_url'],
      status: json['status'],
      userHasSubscriptionId: json['userHasSubscriptionId'],
      subscriptionDuration: json['subscriptionDuration'],
      title: json['title'],
      fileService: json['fileService'],
      description: json['description'],
      amount: json['amount'],
      isDeleted: json['isDeleted'],
      duration: json['duration'],
    );
  }
}
