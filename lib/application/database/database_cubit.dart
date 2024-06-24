import 'dart:developer';

import 'package:Bcom/entity.dart';
import 'package:Bcom/objectbox.g.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:path_provider/path_provider.dart';
import 'package:get_storage/get_storage.dart';
import 'package:path/path.dart' as p;
import 'package:freezed_annotation/freezed_annotation.dart';

part 'database_state.dart';
part 'database_cubit.freezed.dart';

class DatabaseCubit extends Cubit<DatabaseState> {
  final GetStorage box = GetStorage();
  final String linkDb = 'babana_express_local';
  late final Store _store;

  DatabaseCubit() : super(const DatabaseState.initial()) {
    _createInstance();
  }

  Future<void> _createInstance() async {
    emit(const DatabaseState.loading());

    try {
      final databasesPath = await getApplicationDocumentsDirectory();

      _store = await openStore(directory: p.join(databasesPath.path, linkDb));
      emit(DatabaseState.initialized(store: _store));
    } catch (e) {
      emit(DatabaseState.error(error: e.toString()));
    }
  }

  Future<bool> saveUser(User user) async {
    try {
      final userBox = _store.box<User>();
      print('----------------saveeeeeee');
      _store.box<User>().put(user);
      final users = userBox.getAll();
      print(users);
      log('----------------saveeeeeee-------------${users.last.toMap().toString()}');
      return true;
    } catch (e) {
      print('Error saving user: $e');
      return false;
    }
  }

  // Get operations
  User? getUser() {
    final userBox = _store.box<User>();

    final users = userBox.getAll();
    print(users.length);

    return users.isNotEmpty ? users.last : null;
  }

  Future<Map<String, dynamic>?> getKeyKen() async {
    final keyUserBox = _store.box<KeyUser>();
    final keyUsers = keyUserBox.getAll();
    return keyUsers.isNotEmpty ? keyUsers.first.toMap() : null;
  }

  saveKeyKen(value) async {
    print('---------------------Jwt.parseJwt )');
    print(value);
    _store.box<KeyUser>().put(KeyUser.fromJson(value));

    return true;
  }

  Future<void> disconnect() async {
    _store.box<KeyUser>().removeAll();
    _store.box<User>().removeAll();
    // _createInstance();
    // return super.close();
  }
}
