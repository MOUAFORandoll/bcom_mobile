// To parse this JSON data, do
//
//     final globleResponse = globleResponseFromMap(jsonString);

import 'dart:convert';

GlobalResponse globleResponseFromMap(String str) =>
    GlobalResponse.fromMap(json.decode(str));

String globleResponseToMap(GlobalResponse data) => json.encode(data.toMap());

class GlobalResponse {
  String? messageFr;
  String? messageEn;
  
  GlobalResponse({
    this.messageFr,
    this.messageEn,
  });

  GlobalResponse copyWith({
    String? messageFr,
    String? messageEn,
  }) =>
      GlobalResponse(
        messageFr: messageFr ?? this.messageFr,
        messageEn: messageEn ?? this.messageEn,
      );

  factory GlobalResponse.fromMap(Map<String, dynamic> json) => GlobalResponse(
        messageFr: json['message_fr'],
        messageEn: json['message_en'],
      );

  Map<String, dynamic> toMap() => {
        'message_fr': messageFr,
        'message_en': messageEn,
      };
}
