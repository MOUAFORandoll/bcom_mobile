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
    on<SelectSecteur>(selectSecteur);
    on<SelectPack>(selectPack);
    on<ChangeIndexDevis>(changeIndexDevis);
    on<SetIndexHistoryDevisEvent>((event, emit) async {
      print('-----------------SetindexHistory');
      emit(state.copyWith(indexHistory: event.index));
    });
  }
  changeIndexDevis(ChangeIndexDevis event, Emitter<DevisState> emit) async {
    emit(state.copyWith(
      indexDevis: event.val
          ? getVal(state.indexDevis! + 1)
          : getVal(state.indexDevis! - 1),
    ));
    print(state.pack!.libelle);
  }

  getVal(val) {
    return val < 0 ? 0 : val;
  }

  selectPack(SelectPack event, Emitter<DevisState> emit) async {
    emit(state.copyWith(
      pack: event.pack,
    ));
    print(state.pack!.libelle);
  }

  selectSecteur(SelectSecteur event, Emitter<DevisState> emit) async {
    emit(state.copyWith(
      secteur: event.secteur,
    ));
  }

  _getListPack(GetListPack event, Emitter<DevisState> emit) async {
    emit(state.copyWith(
      load_list_pack: 0,
    ));
    await devisRepo.getlistPack().then((response) {
      print('---------list_pack------${response.data['hydra:member']}');
      if (response.data != null) {
        emit(state.copyWith(
            load_list_pack: 1,
            list_pack: (response.data['hydra:member'] as List)
                .map((e) => PackModel.fromJson(e))
                .toList()));
        print('---------list_pack------${state.list_pack!.length}');
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
