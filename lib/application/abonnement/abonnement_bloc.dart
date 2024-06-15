import 'dart:developer';

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
    on<PayAbonnement>(payAbonnement);
    on<VerifyPayement>(verifyPayement);
    on<EventPayementView>(eventPayementView);
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
    var user = await database.getUser();
    emit(state.copyWith(
      loadUserAbonnement: 0,
    ));
    var data = {'userId': user!.userId};
    await abonnementRepo.userAbonnement(data).then((response) {
      print(
          '----userAbonnement-----listAbonnement------${response.data['data']}');
      if (response.data != null) {
        emit(state.copyWith(
            loadUserAbonnement: 1,
            userAbonnement:
                UserAbonnementModel.fromJson(response.data['data'][0])));
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

  payAbonnement(PayAbonnement event, Emitter<AbonnementState> emit) async {
    emit(state.copyWith(
      loadRequest: 0,
    ));
    var data = {
      'currency': 'XAF',
      'amount': state.abonnement!.amount,
      'email': database.getUser()!.email!.isNotEmpty
          ? database.getUser()!.email
          : 'steveskamdem6@gmail.com',
      'phone': database.getUser()!.phone,
      'userId': database.getUser()!.userId,
      'subscriptionId': state.abonnement!.id
    };

    await abonnementRepo.payAbonnement(data).then((response) {
      if (response.data != null) {
        log(
          response.data['data']['transaction'].toString(),
        );
        if (response.data['data'] != null) {
          if (response.data['data']['transaction'] != null) {
            log(
              response.data['data']['authorization_url'].toString(),
            );
            log(
              response.data['data']['transaction']['reference'].toString(),
            );
            emit(state.copyWith(
              loadRequest: 1,
              paiement_url: response.data['data']['authorization_url'],
              ref_transactiopn: response.data['data']['transaction']
                  ['reference'],
            ));
            emit(state.copyWith(
              loadRequest: null,
            ));
          } else {
            emit(state.copyWith(
              loadRequest: 2,
            ));
            emit(state.copyWith(
              loadRequest: null,
            ));
          }
        } else {
          emit(state.copyWith(
            loadRequest: 2,
          ));
          emit(state.copyWith(
            loadRequest: null,
          ));
        }
      } else {
        emit(state.copyWith(
          loadRequest: 2,
        ));
        emit(state.copyWith(
          loadRequest: null,
        ));
      }
    }).onError((e, s) {
      emit(state.copyWith(
        loadRequest: 2,
      ));
      emit(state.copyWith(
        loadRequest: null,
      ));
    });
  }

  eventPayementView(
      EventPayementView event, Emitter<AbonnementState> emit) async {
    emit(state.copyWith(
      isClosePaiementView: event.value,
    ));
    emit(state.copyWith(
      isClosePaiementView: false,
    ));

    // print(state.abonnement!.title);
  }

  verifyPayement(VerifyPayement event, Emitter<AbonnementState> emit) async {
    emit(state.copyWith(
      loadsuccessPay: 0,
      loadRequest: null,
    ));
    var data = {'ref': state.ref_transactiopn};
    print(data);
    await abonnementRepo.verifyPayement(data).then((response) {
      if (response.data != null) {
        if (response.data['data'] != null) {
          if (response.data['data']['status'] == 'complete') {
            add(NewAbonnement());
            add(UserAbonnement());
            emit(state.copyWith(
              paiement_url: null,
              loadsuccessPay: 1,
            ));
          } else if (response.data['data']['status'] == 'pending') {
            emit(state.copyWith(
              loadsuccessPay: 3,
            ));
          } else {
            emit(state.copyWith(loadsuccessPay: 2));
          }
        } else {
          emit(state.copyWith(
            loadsuccessPay: 2,
          ));
        }
      } else {
        emit(state.copyWith(
          loadsuccessPay: 2,
        ));
      }
    }).onError((e, s) {
      emit(state.copyWith(
        loadsuccessPay: 2,
      ));
    });
  }

  newAbonnement(NewAbonnement event, Emitter<AbonnementState> emit) async {
    emit(state.copyWith(
      loadRequest: 0,
    ));
    var data = {
      'userId': database.getUser()!.userId,
      'subscriptionId': state.abonnement!.id,
    };
    print(data);
    await abonnementRepo.newAbonnement(data).then((response) {
      print('------ddddd---listAbonnement------${response.data['data']}');
      print('------ddddd---listAbonnem[0]ent------${response.data['data'][0]}');
      if (response.data != null) {
        emit(state.copyWith(
            loadRequest: 1,
            loadUserAbonnement: 1,
            userAbonnement:
                UserAbonnementModel.fromJson(response.data['data'][0])));
        emit(state.copyWith(
          loadRequest: null,
        ));
        print('---------loadUserAbonnement------${state.loadUserAbonnement}');
        print(
            '---------loadUserAbonnement------${state.listAbonnement!.length}');
      } else {
        emit(state.copyWith(
          loadRequest: 2,
        ));
      }
    }).onError((e, s) {
      emit(state.copyWith(
        loadRequest: 2,
      ));
      emit(state.copyWith(
        loadRequest: null,
      ));
    });
  }

/**
 * renouveller paiement 
 */

  renouvellerAbonnement(
      RenouvellerPayAbonnement event, Emitter<AbonnementState> emit) async {
    emit(state.copyWith(
      loadRequest: 0,
    ));
    var data = {
      'userId': database.getUser()!.userId,
      'subscriptionId': state.abonnement!.id
    };

    await abonnementRepo.renouvellerAbonnement(data).then((response) {
      if (response.data != null) {
        log(
          response.data['data']['transaction'].toString(),
        );
        if (response.data['data'] != null) {
          if (response.data['data']['transaction'] != null) {
            log(
              response.data['data']['authorization_url'].toString(),
            );
            log(
              response.data['data']['transaction']['reference'].toString(),
            );
            emit(state.copyWith(
              loadRequest: 1,
              paiement_url: response.data['data']['authorization_url'],
              ref_transactiopn: response.data['data']['transaction']
                  ['reference'],
            ));
            emit(state.copyWith(
              loadRequest: null,
            ));
          } else {
            emit(state.copyWith(
              loadRequest: 2,
            ));
            emit(state.copyWith(
              loadRequest: null,
            ));
          }
        } else {
          emit(state.copyWith(
            loadRequest: 2,
          ));
          emit(state.copyWith(
            loadRequest: null,
          ));
        }
      } else {
        emit(state.copyWith(
          loadRequest: 2,
        ));
        emit(state.copyWith(
          loadRequest: null,
        ));
      }
    }).onError((e, s) {
      emit(state.copyWith(
        loadRequest: 2,
      ));
      emit(state.copyWith(
        loadRequest: null,
      ));
    });
  }

  verifyRenouvellementPayement(
      VerifyRenouvellementPayement event, Emitter<AbonnementState> emit) async {
    emit(state.copyWith(
      loadsuccessPay: 0,
      loadRequest: null,
    ));
    var data = {'ref': state.ref_transactiopn};
    print(data);
    await abonnementRepo.verifyRenouvellementPayement(data).then((response) {
      if (response.data != null) {
        if (response.data['data'] != null) {
          if (response.data['data']['status'] == 'complete') {
            add(NewAbonnement());
            add(UserAbonnement());
            emit(state.copyWith(
              paiement_url: null,
              loadsuccessPay: 1,
            ));
          } else if (response.data['data']['status'] == 'pending') {
            emit(state.copyWith(
              loadsuccessPay: 3,
            ));
          } else {
            emit(state.copyWith(loadsuccessPay: 2));
          }
        } else {
          emit(state.copyWith(
            loadsuccessPay: 2,
          ));
        }
      } else {
        emit(state.copyWith(
          loadsuccessPay: 2,
        ));
      }
    }).onError((e, s) {
      emit(state.copyWith(
        loadsuccessPay: 2,
      ));
    });
  }
}
