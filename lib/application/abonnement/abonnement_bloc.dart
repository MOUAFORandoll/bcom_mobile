import 'package:Bcom/application/abonnement/repositories/abonnement_repo.dart';
import 'package:Bcom/application/database/database_cubit.dart';
import 'package:Bcom/application/model/data/AbonnementModel.dart';
import 'package:Bcom/application/model/data/UserAbonnementModel.dart';
import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'abonnement_bloc.freezed.dart';
part 'abonnement_event.dart';
part 'abonnement_state.dart';

class AbonnementBloc extends Bloc<AbonnementEvent, AbonnementState> {
  final DatabaseCubit database;
  final AbonnementRepo abonnementRepo;
  AbonnementBloc({required this.abonnementRepo, required this.database})
      : super(AbonnementState.initial()) {
    on<NewAbonnement>(newAbonnement);
    on<UserAbonnement>(userAbonnement);
    on<GetListAbonnement>(getListAbonnement);
    on<SelectAbonnement>(abonnement);
  }

  abonnement(SelectAbonnement event, Emitter<AbonnementState> emit) async {
    emit(state.copyWith(
      abonnement: event.abonnement,
    ));
    // print(state.abonnement!.title);
  }

  getListAbonnement(
      GetListAbonnement event, Emitter<AbonnementState> emit) async {
    emit(state.copyWith(
      loadListAbonnement: 0,
    ));
    await abonnementRepo.getlistAbonnement().then((response) {
      print('---------listAbonnement------${response.data['data']}');
      if (response.data != null) {
        emit(state.copyWith(
            loadListAbonnement: 1,
            listAbonnement: (response.data['data'] as List)
                .map((e) => AbonnementModel.fromJson(e))
                .toList()));
        print('---------listAbonnement------${state.listAbonnement!.length}');
      } else {
        emit(state.copyWith(
          loadListAbonnement: 2,
        ));
      }
    }).onError((e, s) {
      emit(state.copyWith(
        loadListAbonnement: 2,
      ));
    });
  }

  userAbonnement(UserAbonnement event, Emitter<AbonnementState> emit) async {
    emit(state.copyWith(
      loadUserAbonnement: 0,
    ));
    await abonnementRepo.userAbonnement().then((response) {
      print('---------listAbonnement------${response.data['data']}');
      if (response.data != null) {
        emit(state.copyWith(
            loadUserAbonnement: 1,
            userAbonnement:
                UserAbonnementModel.fromJson(response.data['data'])));
        print('---------listAbonnement------${state.listAbonnement!.length}');
      } else {
        emit(state.copyWith(
          loadUserAbonnement: 2,
        ));
      }
    }).onError((e, s) {
      emit(state.copyWith(
        loadUserAbonnement: 2,
      ));
    });
  }

  newAbonnement(NewAbonnement event, Emitter<AbonnementState> emit) async {
    emit(state.copyWith(
      loadRequest: 0,
    ));
    var data = {
      'userId': 11 /* database.getUser()!.userId */,
      'subscriptionId': state.abonnement!.id,
    };
    print(data);
    await abonnementRepo.newAbonnement(data).then((response) {
      print('---------listAbonnement------${response.data['data']}');
      if (response.data != null) {
        emit(state.copyWith(
            loadRequest: 1,
            userAbonnement:
                UserAbonnementModel.fromJson(response.data['data'])));
        print('---------listAbonnement------${state.listAbonnement!.length}');
        print('---------listAbonnement------${state.listAbonnement!.length}');
      } else {
        emit(state.copyWith(
          loadRequest: 2,
        ));
      }
    }).onError((e, s) {
      emit(state.copyWith(
        loadRequest: 2,
      ));
    });
  }
}
