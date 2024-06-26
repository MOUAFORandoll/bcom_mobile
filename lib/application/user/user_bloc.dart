import 'dart:async';
import 'dart:io';
import 'package:Bcom/application/database/database_cubit.dart';

import 'package:Bcom/application/user/repositories/user_repository.dart';
import 'package:Bcom/routes/app_router.gr.dart';

import 'package:bloc/bloc.dart';
import 'package:dio/dio.dart';
import 'package:Bcom/presentation/components/exportcomponent.dart';

import '/entity.dart';
import '../export_bloc.dart';

import 'package:freezed_annotation/freezed_annotation.dart';
part 'user_event.dart';
part 'user_state.dart';
part 'user_bloc.freezed.dart';

class UserBloc extends Bloc<UserEvent, UserState> {
  final UserRepo userRepo;
  final DatabaseCubit database;
  UserBloc({required this.userRepo, required this.database})
      : super(UserState.initial()) {
    on<SignInEvent>(_Login);
    on<SignOutEvent>(_OnSignOut);
    on<RegisterEvent>(_Register);
    on<GetUserEvent>(_GetUser);

    on<AddInfoClient>(_addInfoClient);
    on<UserDataEvent>((event, emit) async {
      var user = await database.getUser();
      emit(state.copyWith(user: user));
    });
  }

  _GetUser(GetUserEvent event, Emitter<UserState> emit) async {
    await userRepo.getUser().then((response) async {
      if (response.statusCode == 200) {
        print(response.data);
        var _UserSave = User.fromJson(response.data['data']);

        await database.saveUser(_UserSave);
        emit(state.copyWith(user: _UserSave));
      } else {}
    }).onError((error, s) {});
  }

  getState1() =>
      state.name!.text.isEmpty ||
      state.email!.text.isEmpty ||
      state.phone!.text.isEmpty ||
      state.adress!.text.isEmpty /* ||
      state.webSite!.text.isEmpty */
      ;
  getState2() =>
      state.city!.text.isEmpty ||
      state.numImpot!.text.isEmpty ||
      state.numContribuable!.text.isEmpty ||
      state.registreCommerce!.text.isEmpty ||
      state.country!.text.isEmpty;

  _OnSignOut(SignOutEvent event, Emitter<UserState> emit) async {
    var loader = AppLoader.bounceLargeColorLoaderController();
    loader.open(event.context);
    await Future.delayed(Duration(seconds: 5), () {
      database.disconnect();

      AutoRouter.of(event.context).replaceAll([AuthRoute()]);
    });
    try {
      // database.saveKeyKen( );
    } catch (e) {}
  }

  _Login(SignInEvent event, Emitter<UserState> emit) async {
    var data = {
      'userName': event.userName,
      'password': event.password,
    };
    print(data);
    emit(state.copyWith(isLoading: 1));
    await userRepo.Login(data).then((response) async {
      if (response.statusCode == 200) {
        emit(state.copyWith(
            isLoading: 2, authenticationMessage: response.data['message']));
        emit(UserState.authenticated());

        var _UserSave = User.fromJson(response.data['data']);

        await database.saveKeyKen(response.data);
        emit(state.copyWith(authenticationMessage: '', isLoading: null));
        await database.saveUser(_UserSave);
      } else {
        emit(state.copyWith(
            isLoading: 3, authenticationMessage: response.data['message']));
        emit(state.copyWith(authenticationMessage: '', isLoading: null));
      }
    }).onError((error, s) {
      // print('----${s}-----');
      // print('------${error}---');
      emit(state.copyWith(
          isLoading: 3,
          authenticationMessage: 'Phone ou mot de passe incorrect'));
      emit(state.copyWith(authenticationMessage: '', isLoading: null));
    });
  }

  _addInfoClient(AddInfoClient event, Emitter<UserState> emit) async {
    var user = await database.getUser();

    var data = {
      'name': state.name!.text,
      'email': state.email!.text,
      'phone': state.phone!.text,
      'adress': state.adress!.text,
      'webSite': state.webSite!.text.isEmpty ? 'aucun' : state.webSite!.text,
      'city': state.city!.text,
      'numImpot': state.numImpot!.text,
      'numContribuable': state.numContribuable!.text,
      'registreCommerce': state.registreCommerce!.text,
      'country': state.country!.text,
      'userId': user!.userId,
    };
    print(data);
    emit(state.copyWith(isLoading: null));
    emit(state.copyWith(isLoading: 1));
    await userRepo.addInfoClient(data).then((response) async {
      if (response.statusCode == 201) {
        add(GetUserEvent());
        if (response.data['data'] != null) {
          if (response.data['status'] == true) {
            emit(state.copyWith(isLoading: 2, eventMessage: ''));
            add(GetUserEvent());
            User? _user = state.user;
            var nUser = User(
              fullName: _user?.fullName ?? '',
              userName: _user?.userName ?? '',
              phone: _user?.phone ?? '',
              status: true,
              email: _user?.email,
              sex: _user?.sex,
              age: _user?.age,
              town: _user?.town,
              userId: _user?.userId,
              country: _user?.country,
              address: _user?.address,
              numCni: _user?.numCni,
              workingMoment: _user?.workingMoment,
              birthDate: _user?.birthDate,
              isSick: _user?.isSick,
              isMotoMan: _user?.isMotoMan,
              isSyndicat: _user?.isSyndicat,
              isYourBike: _user?.isYourBike,
              syndicatName: _user?.syndicatName,
              sickDescription: _user?.sickDescription,
              cni1: _user?.cni1,
              cni2: _user?.cni2,
              photoMoto: _user?.photoMoto,
              profile: _user?.profile,
              carteGrise: _user?.carteGrise,
              userTypeId: _user?.userTypeId,
              serviceZoneId: _user?.serviceZoneId,
              isDeleted: _user?.isDeleted,
              nuiNumber: _user?.nuiNumber,
              wokingPlace: _user?.wokingPlace,
              createdAt: _user?.createdAt,
              updatedAt: _user?.updatedAt,
            );

            await database.saveUser(nUser);
            emit(state.copyWith(user: nUser));

            emit(state.copyWith(eventMessage: '', isLoading: null));
          }
        }
      } else {
        emit(state.copyWith(
            isLoading: 3, eventMessage: response.data['message']));
        emit(state.copyWith(eventMessage: '', isLoading: null));
      }
    }).onError((error, s) {
      emit(state.copyWith(
          isLoading: 3, eventMessage: 'Une erreur est servenue'));
      emit(state.copyWith(eventMessage: '', isLoading: null));
    });
  }

  _Register(RegisterEvent event, Emitter<UserState> emit) async {
    var data = {
      'userName': event.userName,
      'fullName': event.fullName,
      'email': event.email,
      'phone': int.parse(event.phone),
      'password': event.password,
      'userTypeId': 5,
    };
    print(data);
    emit(state.copyWith(isLoadingReg: 1));
    // emit(UserState.loginIngUser());

    try {
      Response response = await userRepo.SignUp(data);

      if (response.statusCode == 201) {
        emit(state.copyWith(
            isLoadingReg: 2, authenticationMessage: response.data['message']));
        emit(state.copyWith(authenticationMessage: '', isLoadingReg: null));
      } else {
        emit(state.copyWith(
            isLoadingReg: 3, authenticationMessage: response.data['message']));
        emit(state.copyWith(authenticationMessage: '', isLoadingReg: null));
      }
    } catch (e) {
      emit(state.copyWith(
          isLoadingReg: 3,
          authenticationMessage: 'Une erreur est survenue recommencer'));
      emit(state.copyWith(authenticationMessage: '', isLoadingReg: null));
    }
  }

  Future<bool> connected() async {
    var isConnected = await database.getUser() != null;

    print('-----isConnected-----***----------${isConnected}');
    return isConnected;
  }

  var fn = new ViewFunctions();

  @override
  Future<void> close() async {
    await super.close();
  }
}
