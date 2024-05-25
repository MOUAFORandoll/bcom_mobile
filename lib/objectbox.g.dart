// GENERATED CODE - DO NOT MODIFY BY HAND
// This code was generated by ObjectBox. To update it run the generator again:
// With a Flutter package, run `flutter pub run build_runner build`.
// With a Dart package, run `dart run build_runner build`.
// See also https://docs.objectbox.io/getting-started#generate-objectbox-code

// ignore_for_file: camel_case_types, depend_on_referenced_packages
// coverage:ignore-file

import 'dart:typed_data';

import 'package:flat_buffers/flat_buffers.dart' as fb;
import 'package:objectbox/internal.dart'; // generated code can access "internal" functionality
import 'package:objectbox/objectbox.dart';
import 'package:objectbox_flutter_libs/objectbox_flutter_libs.dart';

import 'entity.dart';

export 'package:objectbox/objectbox.dart'; // so that callers only have to import this file

final _entities = <ModelEntity>[
  ModelEntity(
      id: const IdUid(7, 3111042122288968254),
      name: 'User',
      lastPropertyId: const IdUid(43, 3741596495629289161),
      flags: 0,
      properties: <ModelProperty>[
        ModelProperty(
            id: const IdUid(1, 1003019444414536860),
            name: 'id',
            type: 6,
            flags: 1),
        ModelProperty(
            id: const IdUid(2, 9030123287430456540),
            name: 'userId',
            type: 6,
            flags: 0),
        ModelProperty(
            id: const IdUid(7, 6408305374337865876),
            name: 'phone',
            type: 9,
            flags: 0),
        ModelProperty(
            id: const IdUid(13, 3401001642855875827),
            name: 'status',
            type: 1,
            flags: 0),
        ModelProperty(
            id: const IdUid(14, 3355045850498575016),
            name: 'isSick',
            type: 1,
            flags: 0),
        ModelProperty(
            id: const IdUid(15, 3980216349361617791),
            name: 'isMotoMan',
            type: 1,
            flags: 0),
        ModelProperty(
            id: const IdUid(16, 5933979292144529071),
            name: 'isSyndicat',
            type: 1,
            flags: 0),
        ModelProperty(
            id: const IdUid(17, 4852188744492943690),
            name: 'isYourBike',
            type: 1,
            flags: 0),
        ModelProperty(
            id: const IdUid(18, 7561429368695529717),
            name: 'isDeleted',
            type: 1,
            flags: 0),
        ModelProperty(
            id: const IdUid(19, 8151415384646149008),
            name: 'fullName',
            type: 9,
            flags: 0),
        ModelProperty(
            id: const IdUid(20, 4326069741753645873),
            name: 'email',
            type: 9,
            flags: 0),
        ModelProperty(
            id: const IdUid(21, 3819392880965898699),
            name: 'userName',
            type: 9,
            flags: 0),
        ModelProperty(
            id: const IdUid(23, 6909793690198580869),
            name: 'userTypeId',
            type: 6,
            flags: 0),
        ModelProperty(
            id: const IdUid(24, 7291341806094837529),
            name: 'updatedAt',
            type: 9,
            flags: 0),
        ModelProperty(
            id: const IdUid(25, 5487290923813258841),
            name: 'createdAt',
            type: 9,
            flags: 0),
        ModelProperty(
            id: const IdUid(26, 5878281319523098560),
            name: 'sex',
            type: 9,
            flags: 0),
        ModelProperty(
            id: const IdUid(27, 927519925250964199),
            name: 'age',
            type: 6,
            flags: 0),
        ModelProperty(
            id: const IdUid(28, 4420995561681679708),
            name: 'town',
            type: 9,
            flags: 0),
        ModelProperty(
            id: const IdUid(29, 5718868332370359433),
            name: 'country',
            type: 9,
            flags: 0),
        ModelProperty(
            id: const IdUid(30, 5152416787481922316),
            name: 'address',
            type: 9,
            flags: 0),
        ModelProperty(
            id: const IdUid(31, 1935959962171727176),
            name: 'numCni',
            type: 9,
            flags: 0),
        ModelProperty(
            id: const IdUid(32, 5813072405661990015),
            name: 'workingMoment',
            type: 9,
            flags: 0),
        ModelProperty(
            id: const IdUid(33, 5302669955350977623),
            name: 'birthDate',
            type: 9,
            flags: 0),
        ModelProperty(
            id: const IdUid(34, 7674517704743556602),
            name: 'syndicatName',
            type: 9,
            flags: 0),
        ModelProperty(
            id: const IdUid(35, 5342707977424880096),
            name: 'sickDescription',
            type: 9,
            flags: 0),
        ModelProperty(
            id: const IdUid(36, 7477666607877275040),
            name: 'cni1',
            type: 9,
            flags: 0),
        ModelProperty(
            id: const IdUid(37, 124146307760606359),
            name: 'cni2',
            type: 9,
            flags: 0),
        ModelProperty(
            id: const IdUid(38, 3943172827936421611),
            name: 'photoMoto',
            type: 9,
            flags: 0),
        ModelProperty(
            id: const IdUid(39, 979007762512491111),
            name: 'profile',
            type: 9,
            flags: 0),
        ModelProperty(
            id: const IdUid(40, 5621906145725468218),
            name: 'carteGrise',
            type: 9,
            flags: 0),
        ModelProperty(
            id: const IdUid(41, 8583686043951833615),
            name: 'serviceZoneId',
            type: 6,
            flags: 0),
        ModelProperty(
            id: const IdUid(42, 4097326965834676569),
            name: 'nuiNumber',
            type: 9,
            flags: 0),
        ModelProperty(
            id: const IdUid(43, 3741596495629289161),
            name: 'wokingPlace',
            type: 9,
            flags: 0)
      ],
      relations: <ModelRelation>[],
      backlinks: <ModelBacklink>[]),
  ModelEntity(
      id: const IdUid(9, 7658565384930245975),
      name: 'KeyUser',
      lastPropertyId: const IdUid(2, 6746820073982925451),
      flags: 0,
      properties: <ModelProperty>[
        ModelProperty(
            id: const IdUid(1, 2274870744129174688),
            name: 'id',
            type: 6,
            flags: 1),
        ModelProperty(
            id: const IdUid(2, 6746820073982925451),
            name: 'accessToken',
            type: 9,
            flags: 0)
      ],
      relations: <ModelRelation>[],
      backlinks: <ModelBacklink>[])
];

/// Shortcut for [Store.new] that passes [getObjectBoxModel] and for Flutter
/// apps by default a [directory] using `defaultStoreDirectory()` from the
/// ObjectBox Flutter library.
///
/// Note: for desktop apps it is recommended to specify a unique [directory].
///
/// See [Store.new] for an explanation of all parameters.
Future<Store> openStore(
        {String? directory,
        int? maxDBSizeInKB,
        int? fileMode,
        int? maxReaders,
        bool queriesCaseSensitiveDefault = true,
        String? macosApplicationGroup}) async =>
    Store(getObjectBoxModel(),
        directory: directory ?? (await defaultStoreDirectory()).path,
        maxDBSizeInKB: maxDBSizeInKB,
        fileMode: fileMode,
        maxReaders: maxReaders,
        queriesCaseSensitiveDefault: queriesCaseSensitiveDefault,
        macosApplicationGroup: macosApplicationGroup);

/// Returns the ObjectBox model definition for this project for use with
/// [Store.new].
ModelDefinition getObjectBoxModel() {
  final model = ModelInfo(
      entities: _entities,
      lastEntityId: const IdUid(9, 7658565384930245975),
      lastIndexId: const IdUid(0, 0),
      lastRelationId: const IdUid(0, 0),
      lastSequenceId: const IdUid(0, 0),
      retiredEntityUids: const [
        4969518057203688213,
        8984566840537087468,
        528970694863214740,
        5589971371954137280,
        1113314405807969848,
        8515091795137785474,
        6314683099039113893
      ],
      retiredIndexUids: const [],
      retiredPropertyUids: const [
        754203462009673773,
        7104273356431650241,
        1288215193080885177,
        7194923917911908307,
        1981058460113358940,
        7884356085899434437,
        1202883639022673218,
        4427249840446802544,
        4088015423610740637,
        5127329087435583877,
        3733723678809820577,
        3733861273943814581,
        1395444994505962781,
        6348612253164974944,
        3624252355606891287,
        8832846444064727260,
        34511884449713588,
        3050349477534242606,
        5758480994236200392,
        7392225789609482597,
        576028652935433197,
        7973789328410402377,
        3296741169851625451,
        994297135078503455,
        421267395549205444,
        4893917620272064576,
        1939509048529786318,
        898959819284985380,
        5624160313008426624,
        550131433720045414,
        4387494669297644908,
        6670894605406842718
      ],
      retiredRelationUids: const [],
      modelVersion: 5,
      modelVersionParserMinimum: 5,
      version: 1);

  final bindings = <Type, EntityDefinition>{
    User: EntityDefinition<User>(
        model: _entities[0],
        toOneRelations: (User object) => [],
        toManyRelations: (User object) => {},
        getId: (User object) => object.id,
        setId: (User object, int id) {
          object.id = id;
        },
        objectToFB: (User object, fb.Builder fbb) {
          final phoneOffset = fbb.writeString(object.phone);
          final fullNameOffset = fbb.writeString(object.fullName);
          final emailOffset = fbb.writeString(object.email);
          final userNameOffset = fbb.writeString(object.userName);
          final updatedAtOffset = fbb.writeString(object.updatedAt);
          final createdAtOffset = fbb.writeString(object.createdAt);
          final sexOffset = fbb.writeString(object.sex);
          final townOffset = fbb.writeString(object.town);
          final countryOffset = fbb.writeString(object.country);
          final addressOffset = fbb.writeString(object.address);
          final numCniOffset = fbb.writeString(object.numCni);
          final workingMomentOffset = fbb.writeString(object.workingMoment);
          final birthDateOffset = fbb.writeString(object.birthDate);
          final syndicatNameOffset = fbb.writeString(object.syndicatName);
          final sickDescriptionOffset = object.sickDescription == null
              ? null
              : fbb.writeString(object.sickDescription!);
          final cni1Offset = fbb.writeString(object.cni1);
          final cni2Offset = fbb.writeString(object.cni2);
          final photoMotoOffset = object.photoMoto == null
              ? null
              : fbb.writeString(object.photoMoto!);
          final profileOffset =
              object.profile == null ? null : fbb.writeString(object.profile!);
          final carteGriseOffset = object.carteGrise == null
              ? null
              : fbb.writeString(object.carteGrise!);
          final nuiNumberOffset = object.nuiNumber == null
              ? null
              : fbb.writeString(object.nuiNumber!);
          final wokingPlaceOffset = fbb.writeString(object.wokingPlace);
          fbb.startTable(44);
          fbb.addInt64(0, object.id);
          fbb.addInt64(1, object.userId);
          fbb.addOffset(6, phoneOffset);
          fbb.addBool(12, object.status);
          fbb.addBool(13, object.isSick);
          fbb.addBool(14, object.isMotoMan);
          fbb.addBool(15, object.isSyndicat);
          fbb.addBool(16, object.isYourBike);
          fbb.addBool(17, object.isDeleted);
          fbb.addOffset(18, fullNameOffset);
          fbb.addOffset(19, emailOffset);
          fbb.addOffset(20, userNameOffset);
          fbb.addInt64(22, object.userTypeId);
          fbb.addOffset(23, updatedAtOffset);
          fbb.addOffset(24, createdAtOffset);
          fbb.addOffset(25, sexOffset);
          fbb.addInt64(26, object.age);
          fbb.addOffset(27, townOffset);
          fbb.addOffset(28, countryOffset);
          fbb.addOffset(29, addressOffset);
          fbb.addOffset(30, numCniOffset);
          fbb.addOffset(31, workingMomentOffset);
          fbb.addOffset(32, birthDateOffset);
          fbb.addOffset(33, syndicatNameOffset);
          fbb.addOffset(34, sickDescriptionOffset);
          fbb.addOffset(35, cni1Offset);
          fbb.addOffset(36, cni2Offset);
          fbb.addOffset(37, photoMotoOffset);
          fbb.addOffset(38, profileOffset);
          fbb.addOffset(39, carteGriseOffset);
          fbb.addInt64(40, object.serviceZoneId);
          fbb.addOffset(41, nuiNumberOffset);
          fbb.addOffset(42, wokingPlaceOffset);
          fbb.finish(fbb.endTable());
          return object.id;
        },
        objectFromFB: (Store store, ByteData fbData) {
          final buffer = fb.BufferContext(fbData);
          final rootOffset = buffer.derefObject(0);
          final fullNameParam = const fb.StringReader(asciiOptimization: true)
              .vTableGet(buffer, rootOffset, 40, '');
          final emailParam = const fb.StringReader(asciiOptimization: true)
              .vTableGet(buffer, rootOffset, 42, '');
          final userNameParam = const fb.StringReader(asciiOptimization: true)
              .vTableGet(buffer, rootOffset, 44, '');
          final sexParam = const fb.StringReader(asciiOptimization: true)
              .vTableGet(buffer, rootOffset, 54, '');
          final ageParam =
              const fb.Int64Reader().vTableGet(buffer, rootOffset, 56, 0);
          final townParam = const fb.StringReader(asciiOptimization: true)
              .vTableGet(buffer, rootOffset, 58, '');
          final userIdParam =
              const fb.Int64Reader().vTableGet(buffer, rootOffset, 6, 0);
          final countryParam = const fb.StringReader(asciiOptimization: true)
              .vTableGet(buffer, rootOffset, 60, '');
          final phoneParam = const fb.StringReader(asciiOptimization: true)
              .vTableGet(buffer, rootOffset, 16, '');
          final addressParam = const fb.StringReader(asciiOptimization: true)
              .vTableGet(buffer, rootOffset, 62, '');
          final numCniParam = const fb.StringReader(asciiOptimization: true)
              .vTableGet(buffer, rootOffset, 64, '');
          final statusParam =
              const fb.BoolReader().vTableGet(buffer, rootOffset, 28, false);
          final workingMomentParam =
              const fb.StringReader(asciiOptimization: true)
                  .vTableGet(buffer, rootOffset, 66, '');
          final birthDateParam = const fb.StringReader(asciiOptimization: true)
              .vTableGet(buffer, rootOffset, 68, '');
          final isSickParam =
              const fb.BoolReader().vTableGet(buffer, rootOffset, 30, false);
          final isMotoManParam =
              const fb.BoolReader().vTableGet(buffer, rootOffset, 32, false);
          final isSyndicatParam =
              const fb.BoolReader().vTableGet(buffer, rootOffset, 34, false);
          final isYourBikeParam =
              const fb.BoolReader().vTableGet(buffer, rootOffset, 36, false);
          final syndicatNameParam =
              const fb.StringReader(asciiOptimization: true)
                  .vTableGet(buffer, rootOffset, 70, '');
          final sickDescriptionParam =
              const fb.StringReader(asciiOptimization: true)
                  .vTableGetNullable(buffer, rootOffset, 72);
          final cni1Param = const fb.StringReader(asciiOptimization: true)
              .vTableGet(buffer, rootOffset, 74, '');
          final cni2Param = const fb.StringReader(asciiOptimization: true)
              .vTableGet(buffer, rootOffset, 76, '');
          final photoMotoParam = const fb.StringReader(asciiOptimization: true)
              .vTableGetNullable(buffer, rootOffset, 78);
          final profileParam = const fb.StringReader(asciiOptimization: true)
              .vTableGetNullable(buffer, rootOffset, 80);
          final carteGriseParam = const fb.StringReader(asciiOptimization: true)
              .vTableGetNullable(buffer, rootOffset, 82);
          final userTypeIdParam =
              const fb.Int64Reader().vTableGet(buffer, rootOffset, 48, 0);
          final serviceZoneIdParam =
              const fb.Int64Reader().vTableGetNullable(buffer, rootOffset, 84);
          final isDeletedParam =
              const fb.BoolReader().vTableGet(buffer, rootOffset, 38, false);
          final nuiNumberParam = const fb.StringReader(asciiOptimization: true)
              .vTableGetNullable(buffer, rootOffset, 86);
          final wokingPlaceParam =
              const fb.StringReader(asciiOptimization: true)
                  .vTableGet(buffer, rootOffset, 88, '');
          final createdAtParam = const fb.StringReader(asciiOptimization: true)
              .vTableGet(buffer, rootOffset, 52, '');
          final updatedAtParam = const fb.StringReader(asciiOptimization: true)
              .vTableGet(buffer, rootOffset, 50, '');
          final object = User(
              fullName: fullNameParam,
              email: emailParam,
              userName: userNameParam,
              sex: sexParam,
              age: ageParam,
              town: townParam,
              userId: userIdParam,
              country: countryParam,
              phone: phoneParam,
              address: addressParam,
              numCni: numCniParam,
              status: statusParam,
              workingMoment: workingMomentParam,
              birthDate: birthDateParam,
              isSick: isSickParam,
              isMotoMan: isMotoManParam,
              isSyndicat: isSyndicatParam,
              isYourBike: isYourBikeParam,
              syndicatName: syndicatNameParam,
              sickDescription: sickDescriptionParam,
              cni1: cni1Param,
              cni2: cni2Param,
              photoMoto: photoMotoParam,
              profile: profileParam,
              carteGrise: carteGriseParam,
              userTypeId: userTypeIdParam,
              serviceZoneId: serviceZoneIdParam,
              isDeleted: isDeletedParam,
              nuiNumber: nuiNumberParam,
              wokingPlace: wokingPlaceParam,
              createdAt: createdAtParam,
              updatedAt: updatedAtParam)
            ..id = const fb.Int64Reader().vTableGet(buffer, rootOffset, 4, 0);

          return object;
        }),
    KeyUser: EntityDefinition<KeyUser>(
        model: _entities[1],
        toOneRelations: (KeyUser object) => [],
        toManyRelations: (KeyUser object) => {},
        getId: (KeyUser object) => object.id,
        setId: (KeyUser object, int id) {
          object.id = id;
        },
        objectToFB: (KeyUser object, fb.Builder fbb) {
          final accessTokenOffset = fbb.writeString(object.accessToken);
          fbb.startTable(3);
          fbb.addInt64(0, object.id);
          fbb.addOffset(1, accessTokenOffset);
          fbb.finish(fbb.endTable());
          return object.id;
        },
        objectFromFB: (Store store, ByteData fbData) {
          final buffer = fb.BufferContext(fbData);
          final rootOffset = buffer.derefObject(0);
          final accessTokenParam =
              const fb.StringReader(asciiOptimization: true)
                  .vTableGet(buffer, rootOffset, 6, '');
          final object = KeyUser(accessToken: accessTokenParam)
            ..id = const fb.Int64Reader().vTableGet(buffer, rootOffset, 4, 0);

          return object;
        })
  };

  return ModelDefinition(model, bindings);
}

/// [User] entity fields to define ObjectBox queries.
class User_ {
  /// see [User.id]
  static final id = QueryIntegerProperty<User>(_entities[0].properties[0]);

  /// see [User.userId]
  static final userId = QueryIntegerProperty<User>(_entities[0].properties[1]);

  /// see [User.phone]
  static final phone = QueryStringProperty<User>(_entities[0].properties[2]);

  /// see [User.status]
  static final status = QueryBooleanProperty<User>(_entities[0].properties[3]);

  /// see [User.isSick]
  static final isSick = QueryBooleanProperty<User>(_entities[0].properties[4]);

  /// see [User.isMotoMan]
  static final isMotoMan =
      QueryBooleanProperty<User>(_entities[0].properties[5]);

  /// see [User.isSyndicat]
  static final isSyndicat =
      QueryBooleanProperty<User>(_entities[0].properties[6]);

  /// see [User.isYourBike]
  static final isYourBike =
      QueryBooleanProperty<User>(_entities[0].properties[7]);

  /// see [User.isDeleted]
  static final isDeleted =
      QueryBooleanProperty<User>(_entities[0].properties[8]);

  /// see [User.fullName]
  static final fullName = QueryStringProperty<User>(_entities[0].properties[9]);

  /// see [User.email]
  static final email = QueryStringProperty<User>(_entities[0].properties[10]);

  /// see [User.userName]
  static final userName =
      QueryStringProperty<User>(_entities[0].properties[11]);

  /// see [User.userTypeId]
  static final userTypeId =
      QueryIntegerProperty<User>(_entities[0].properties[12]);

  /// see [User.updatedAt]
  static final updatedAt =
      QueryStringProperty<User>(_entities[0].properties[13]);

  /// see [User.createdAt]
  static final createdAt =
      QueryStringProperty<User>(_entities[0].properties[14]);

  /// see [User.sex]
  static final sex = QueryStringProperty<User>(_entities[0].properties[15]);

  /// see [User.age]
  static final age = QueryIntegerProperty<User>(_entities[0].properties[16]);

  /// see [User.town]
  static final town = QueryStringProperty<User>(_entities[0].properties[17]);

  /// see [User.country]
  static final country = QueryStringProperty<User>(_entities[0].properties[18]);

  /// see [User.address]
  static final address = QueryStringProperty<User>(_entities[0].properties[19]);

  /// see [User.numCni]
  static final numCni = QueryStringProperty<User>(_entities[0].properties[20]);

  /// see [User.workingMoment]
  static final workingMoment =
      QueryStringProperty<User>(_entities[0].properties[21]);

  /// see [User.birthDate]
  static final birthDate =
      QueryStringProperty<User>(_entities[0].properties[22]);

  /// see [User.syndicatName]
  static final syndicatName =
      QueryStringProperty<User>(_entities[0].properties[23]);

  /// see [User.sickDescription]
  static final sickDescription =
      QueryStringProperty<User>(_entities[0].properties[24]);

  /// see [User.cni1]
  static final cni1 = QueryStringProperty<User>(_entities[0].properties[25]);

  /// see [User.cni2]
  static final cni2 = QueryStringProperty<User>(_entities[0].properties[26]);

  /// see [User.photoMoto]
  static final photoMoto =
      QueryStringProperty<User>(_entities[0].properties[27]);

  /// see [User.profile]
  static final profile = QueryStringProperty<User>(_entities[0].properties[28]);

  /// see [User.carteGrise]
  static final carteGrise =
      QueryStringProperty<User>(_entities[0].properties[29]);

  /// see [User.serviceZoneId]
  static final serviceZoneId =
      QueryIntegerProperty<User>(_entities[0].properties[30]);

  /// see [User.nuiNumber]
  static final nuiNumber =
      QueryStringProperty<User>(_entities[0].properties[31]);

  /// see [User.wokingPlace]
  static final wokingPlace =
      QueryStringProperty<User>(_entities[0].properties[32]);
}

/// [KeyUser] entity fields to define ObjectBox queries.
class KeyUser_ {
  /// see [KeyUser.id]
  static final id = QueryIntegerProperty<KeyUser>(_entities[1].properties[0]);

  /// see [KeyUser.accessToken]
  static final accessToken =
      QueryStringProperty<KeyUser>(_entities[1].properties[1]);
}
