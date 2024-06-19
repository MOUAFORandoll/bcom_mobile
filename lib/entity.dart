import 'package:objectbox/objectbox.dart';

@Entity()
class User {
  int id = 0;

  @Property()
  String fullName;

  @Property()
  String? email;

  @Property()
  String userName;

  @Property()
  String? sex;

  @Property()
  int? age;

  @Property()
  String? town;

  @Property()
  String? country;

  @Property()
  String phone;

  @Property()
  String? address;

  @Property()
  String? numCni;

  @Property()
  bool? status;

  @Property()
  String? workingMoment;

  @Property()
  String? birthDate;

  @Property()
  bool? isSick;

  @Property()
  bool? isMotoMan;

  @Property()
  bool? isSyndicat;

  @Property()
  bool? isYourBike;

  @Property()
  String? syndicatName;

  @Property()
  String? sickDescription;

  @Property()
  String? cni1;

  @Property()
  String? cni2;

  @Property()
  String? photoMoto;

  @Property()
  String? profile;

  @Property()
  String? carteGrise;

  @Property()
  int? userTypeId;

  @Property()
  int? serviceZoneId;

  @Property()
  bool? isDeleted;

  @Property()
  int? userId;

  @Property()
  String? nuiNumber;

  @Property()
  String? wokingPlace;

  @Property()
  String? createdAt;

  @Property()
  String? updatedAt;

  User({
    required this.fullName,
    this.email,
    required this.userName,
    this.sex,
    this.age,
    this.town,
    this.userId,
    this.country,
    required this.phone,
    this.address,
    this.numCni,
    this.status,
    this.workingMoment,
    this.birthDate,
    this.isSick,
    this.isMotoMan,
    this.isSyndicat,
    this.isYourBike,
    this.syndicatName,
    this.sickDescription,
    this.cni1,
    this.cni2,
    this.photoMoto,
    this.profile,
    this.carteGrise,
    this.userTypeId,
    this.serviceZoneId,
    this.isDeleted,
    this.nuiNumber,
    this.wokingPlace,
    this.createdAt,
    this.updatedAt,
  });

  Map<String, dynamic> toMap() {
    return {
      'fullName': fullName,
      'email': email,
      'userName': userName,
      'sex': sex,
      'age': age,
      'userId': userId,
      'town': town,
      'country': country,
      'phone': phone,
      'address': address,
      'numCni': numCni,
      'status': status,
      'workingMoment': workingMoment,
      'birthDate': birthDate,
      'isSick': isSick,
      'isMotoMan': isMotoMan,
      'isSyndicat': isSyndicat,
      'isYourBike': isYourBike,
      'syndicatName': syndicatName,
      'sickDescription': sickDescription,
      'cni1': cni1,
      'cni2': cni2,
      'photoMoto': photoMoto,
      'profile': profile,
      'carteGrise': carteGrise,
      'userTypeId': userTypeId,
      'serviceZoneId': serviceZoneId,
      'isDeleted': isDeleted,
      'nuiNumber': nuiNumber,
      'wokingPlace': wokingPlace,
      'createdAt': createdAt,
      'updatedAt': updatedAt,
    };
  }

  factory User.fromJson(Map<String, dynamic> json) {
    return User(
      fullName: json['fullName'],
      email: json['email'],
      userName: json['userName'],
      sex: json['sex'],
      age: json['age'],
      town: json['town'],
      country: json['country'],
      phone: json['phone'],
      userId: json['id'],
      address: json['address'],
      numCni: json['numCni'],
      status: json['status'],
      workingMoment: json['workingMoment'],
      birthDate: json['birthDate'],
      isSick: json['isSick'],
      isMotoMan: json['isMotoMan'],
      isSyndicat: json['isSyndicat'],
      isYourBike: json['isYourBike'],
      syndicatName: json['syndicatName'],
      sickDescription: json['sickDescription'],
      cni1: json['cni1'],
      cni2: json['cni2'],
      photoMoto: json['photoMoto'],
      profile: json['profile'],
      carteGrise: json['carteGrise'],
      userTypeId: json['userTypeId'],
      serviceZoneId: json['serviceZoneId'],
      isDeleted: json['isDeleted'],
      nuiNumber: json['nuiNumber'],
      wokingPlace: json['wokingPlace'] ?? '',
      createdAt: json['createdAt'],
      updatedAt: json['updatedAt'],
    );
  }
}

@Entity()
class KeyUser {
  int id = 0;

  @Property()
  String? accessToken;

  KeyUser({
    required this.accessToken,
  });

  Map<String, dynamic> toMap() {
    return {
      'accessToken': accessToken,
    };
  }

  factory KeyUser.fromJson(Map<String, dynamic> json) {
    return KeyUser(
      accessToken: json['accessToken'],
    );
  }
}

