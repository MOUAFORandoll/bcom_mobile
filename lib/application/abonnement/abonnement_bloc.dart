import 'dart:developer';

import 'package:Bcom/application/abonnement/repositories/abonnement_repo.dart';
import 'package:Bcom/application/database/database_cubit.dart';
import 'package:Bcom/application/export_bloc.dart';
import 'package:Bcom/application/model/data/AbonnementModel.dart';
import 'package:Bcom/application/model/data/UserAbonnementModel.dart';
import 'package:Bcom/application/model/exportmodel.dart';
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
    on<UserAbonnement>(userAbonnement);
    on<GetListAbonnement>(getListAbonnement);
    on<SelectAbonnement>(abonnement);
    on<PayAbonnement>(payAbonnement);
    on<VerifyPayement>(verifyPayement);
    on<ReNewCurrentAbonnement>(reNewCurrentAbonnement);

    on<GetListTransaction>(getListTransaction);
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
      if (response.data != null) {
        if (response.data['data'] != null &&
            response.data['data'].length != 0) {
          if (response.data['data'][0] != null) {
            emit(state.copyWith(
                loadUserAbonnement: 1,
                userAbonnement:
                    UserAbonnementModel.fromJson(response.data['data'][0])));
            print(
                '---------listAbonnement------${state.listAbonnement!.length}');
          } else {
            emit(state.copyWith(
              loadUserAbonnement: 2,
            ));
          }
        } else {
          emit(state.copyWith(
            loadUserAbonnement: 2,
          ));
        }
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

  getListTransaction(
      GetListTransaction event, Emitter<AbonnementState> emit) async {
    emit(state.copyWith(
      loadTransaction: 2,
    ));
    log('----userHasSubscriptionId---------------${state.userHasSubscriptionId}--');
    await abonnementRepo.getlistTransactions().then((response) {
      log('----userHasSubscriptionId---------------${response.data['data'].toString()}--');
      if (response.data != null) {
        emit(state.copyWith(
            loadTransaction: 1,
            listTransaction: (response.data['data'] as List)
                .map((e) => TransactionModel.fromJson(e))
                .toList()));
        if (state.listTransaction!.isNotEmpty)
          emit(state.copyWith(
            userHasSubscriptionId:
                state.listTransaction!.last.userHasSubscriptionId,
          ));
        log('----userHasSubscriptionId---------------${state.userHasSubscriptionId}--');
      } else {
        emit(state.copyWith(
          loadTransaction: 2,
        ));
      }
    }).onError((e, s) {
      emit(state.copyWith(
        loadTransaction: 2,
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
      'subscriptionDuration': state.abonnement!.duration,
      'subscriptionId': state.abonnement!.id,
      'userHasSubscriptionId': state.userHasSubscriptionId
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

  reNewCurrentAbonnement(
      ReNewCurrentAbonnement event, Emitter<AbonnementState> emit) async {
    emit(state.copyWith(
      loadRequest: 0,
    ));
    log(state.listTransaction!.length.toString());
    var data = {
      'currency': 'XAF',
      'amount': state.listTransaction!.last.amount,
      'email': database.getUser()!.email!.isNotEmpty
          ? database.getUser()!.email
          : 'steveskamdem6@gmail.com',
      'phone': database.getUser()!.phone,
      'userId': database.getUser()!.userId,
      'subscriptionDuration': 12 /* state.listTransaction!.last.duration */,
      'subscriptionId': state.listTransaction!.last.subscriptionId,
      'userHasSubscriptionId': state.listTransaction!.last.userHasSubscriptionId
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

  verifyPayement(VerifyPayement event, Emitter<AbonnementState> emit) async {
    emit(state.copyWith(
      loadsuccessPay: 0,
      loadRequest: null,
    ));
    var data = {'ref': state.ref_transactiopn};
    print(data);
    await abonnementRepo.verifyPayement(data).then((response) {
      if (response.data != null) {
        if (response.data['isSuccess'] == true) {
          emit(state.copyWith(
            paiement_url: null,
            loadsuccessPay: 1,
            loadRequest: 1,
            loadUserAbonnement: 1,
          ));
          add(UserAbonnement());
          add(GetListTransaction());
          emit(state.copyWith(
            loadRequest: null,
            loadsuccessPay: null,
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
    }).onError((e, s) {
      emit(state.copyWith(
        loadsuccessPay: 2,
      ));
    });
  }
}
