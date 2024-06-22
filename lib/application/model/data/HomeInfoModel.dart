 

class BcomInfo {
  OnboardingData? onboardingVideo;
  List<OnboardingData>? onboardingImage;
  BcomHomeInfo? bcomHomeInfo;

  BcomInfo({required this.onboardingVideo, required this.onboardingImage, required this.bcomHomeInfo});

  factory BcomInfo.fromJson(Map<String, dynamic> json) {
    return BcomInfo(
      onboardingVideo: OnboardingData.fromJson(json['onbaordingVideo']),
      onboardingImage: List<OnboardingData>.from(json['onbaordingImage'].map((x) => OnboardingData.fromJson(x))),
      bcomHomeInfo: BcomHomeInfo.fromJson(json['bcomInfo']),
    );
  }
   
}

class OnboardingData {
  int? id;
  String ?title;
  String ?description;
  String ?linkFile;
  int? isOnboarding;
  int? isDeleted;
  String ?createdAt;
  String ?updatedAt;

  OnboardingData({
    required this.id,
    required this.title,
    required this.description,
    required this.linkFile,
    required this.isOnboarding,
    required this.isDeleted,
    required this.createdAt,
    required this.updatedAt,
  });

  factory OnboardingData.fromJson(Map<String, dynamic> json) {
    return OnboardingData(
      id: json['id'],
      title: json['title'],
      description: json['description'],
      linkFile: json['linkFile'],
      isOnboarding: json['isOnbaording'],
      isDeleted: json['isDeleted'],
      createdAt: json['createdAt'],
      updatedAt: json['updatedAt'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'title': title,
      'description': description,
      'linkFile': linkFile,
      'isOnbaording': isOnboarding,
      'isDeleted': isDeleted,
      'createdAt': createdAt,
      'updatedAt': updatedAt,
    };
  }
} 

class BcomHomeInfo {
  int? id;
  String ?phone;
  String ?whatsappPhone;
  String ?emailContact;
  String ?location;
  int? isDeleted;
  String ?createdAt;
  String ?updatedAt;
  
  BcomHomeInfo({
    required this.id,
    required this.phone,
    required this.whatsappPhone,
    required this.emailContact,
    required this.location,
    required this.isDeleted,
    required this.createdAt,
    required this.updatedAt,
  });

  factory BcomHomeInfo.fromJson(Map<String, dynamic> json) {
    return BcomHomeInfo(
      id: json['id'],
      phone: json['phone'],
      whatsappPhone: json['whatsappPhone'],
      emailContact: json['emailContact'],
      location: json['location'],
      isDeleted: json['isDeleted'],
      createdAt: json['createdAt'],
      updatedAt: json['updatedAt'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'phone': phone,
      'whatsappPhone': whatsappPhone,
      'emailContact': emailContact,
      'location': location,
      'isDeleted': isDeleted,
      'createdAt': createdAt,
      'updatedAt': updatedAt,
    };
  }
}
 