import 'dart:async';

import 'package:Bcom/application/database/database_cubit.dart';
import 'package:Bcom/application/devis/repositories/devis_repo.dart';
import 'package:Bcom/application/model/data/MissionSession.dart';
import 'package:Bcom/application/model/data/PackModel.dart';
import 'package:Bcom/application/model/data/Secteur.dart';
import 'package:Bcom/application/model/exportmodel.dart';
import 'package:Bcom/entity.dart';
import 'package:Bcom/presentation/components/exportcomponent.dart';
import 'package:cron/cron.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'devis_event.dart';
part 'devis_state.dart';
part 'devis_bloc.freezed.dart';

class DevisBloc extends Bloc<DevisEvent, DevisState> {
  final DevisRepo devisRepo;
  final DatabaseCubit database;
  DevisBloc({required this.devisRepo, required this.database})
      : super(DevisState.initial()) {
    on<GetListPack>(_getListPack);

    on<GetListSecteurDevis>(_getListSecteurDevis);
    on<IncrementTimer>(_incrementTimer);
    on<DemandeMission>(_demandeMission);
    on<SelectSecteur>(selectSecteur);
    on<SetIndexHistoryDevisEvent>((event, emit) async {
      print('-----------------SetindexHistory');
      emit(state.copyWith(indexHistory: event.index));
    });
  }

  selectSecteur(SelectSecteur event, Emitter<DevisState> emit) async {
    emit(state.copyWith(
      secteur: event.secteur,
    ));
  }

  _demandeMission(DemandeMission event, Emitter<DevisState> emit) async {
    var key = await database.getKey();

    emit(state.copyWith(
      isRequest: 0,
    ));
    await devisRepo.demandeMission(key).then((response) async {
      print('-------------------------------------------------');
      print(response.data);

      if (response.statusCode == 200) {
        print(response.data);

        emit(state.copyWith(
          isRequest: 1,
        ));
        emit(state.copyWith(
          isRequest: null,
        ));
      } else {
        emit(state.copyWith(isRequest: 2));
      }
    }).onError((e, s) async {
      emit(state.copyWith(isRequest: 2));
    }).catchError((e) async {
      // await cron.close();

      emit(state.copyWith(isRequest: 2));
    });
  }

  _incrementTimer(IncrementTimer event, Emitter<DevisState> emit) async {
    if (state.sendPosition == true) {
      var time = state.time! + 1;
      emit(state.copyWith(isRequest: null, time: time));
    }
  }

  _getListPack(GetListPack event, Emitter<DevisState> emit) async {
    var key = await database.getKey();
    emit(state.copyWith(
      load_list_pack: 0,
    ));
    await devisRepo.getlistPack().then((response) {
      if (response.data != null) {
        emit(state.copyWith(
            load_list_pack: 1,
            list_pack: (response.data['data'] as List)
                .map((e) => PackModel.fromJson(e))
                .toList()));
      } else {
        emit(state.copyWith(
          load_list_pack: 2,
        ));
      }
    }).onError((e, s) {
      emit(state.copyWith(
        load_list_pack: 2,
      ));
    });
  }

  _getListSecteurDevis(
      GetListSecteurDevis event, Emitter<DevisState> emit) async {
    emit(state.copyWith(
      load_list_secteur: 0,
    ));
    await devisRepo.getlistSecteurDevis().then((response) {
      if (response.data != null) {
        emit(state.copyWith(
            load_list_secteur: 1,
            list_secteur: (response.data['data'] as List)
                .map((e) => Secteur.fromJson(e))
                .toList()));
      } else {
        emit(state.copyWith(
          load_list_secteur: 2,
        ));
      }
    }).onError((e, s) {
      emit(state.copyWith(
        load_list_secteur: 2,
      ));
    });
  }
}
// context.read<DevisBloc>().add(GetImageColisGalerie())
