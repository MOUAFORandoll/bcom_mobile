import 'dart:async';

import 'package:Bcom/application/database/database_cubit.dart';
import 'package:Bcom/application/devis/repositories/devis_repo.dart';
import 'package:Bcom/application/model/data/DevisModel.dart';
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
    on<FieldChanged>(_fieldChanged);

    on<GetListSecteurDevis>(_getListSecteurDevis);
    on<GetListDevis>(_getListDevis);
    on<GetListVille>(_getListVille);
    on<NewDevis>(_newDevis);
    on<SelectSecteur>(selectSecteur);
    on<SelectVille>(selectVille);
    on<SelectPack>(selectPack);
    on<ChangeIndexDevis>(changeIndexDevis);
    on<SetIndexHistoryDevisEvent>((event, emit) async {
      print('-----------------SetindexHistory');
      emit(state.copyWith(indexHistory: event.index));
    });
  }

  selectVille(SelectVille event, Emitter<DevisState> emit) async {
    emit(state.copyWith(
      ville: event.ville,
    ));
  }

  _getListVille(GetListVille event, Emitter<DevisState> emit) async {
    emit(state.copyWith(
      load_list_pack: 0,
    ));
    await devisRepo.getVille().then((response) {
      print('---------list_ville------${response.data['hydra:member']}');
      if (response.data != null) {
        emit(state.copyWith(
            list_ville: (response.data['hydra:member'] as List)
                .map((e) => VilleModel.fromJson(e))
                .toList()));
        print('---------list_ville------${state.list_ville!.length}');
      } else {
        emit(state.copyWith());
      }
    }).onError((e, s) {
      emit(state.copyWith());
    });
  }

  void _fieldChanged(FieldChanged event, Emitter<DevisState> emit) async {
    String? value = event.value;
    if (value == null) return;
    switch (event.fieldKey) {
      case 'inQuartier':
        if (value.isEmpty) {
        } else {
          emit(state.copyWith(inQuartier: int.parse(event.value!)));
        }

        break;
      case 'horaireStart':
        if (value.isEmpty) {
        } else {
          emit(state.copyWith(
              horaireStart: TimeOfDay(
                  hour: int.parse(event.value!.split(':')[0]),
                  minute: int.parse(event.value!.split(':')[0]))));
        }

        break;
      case 'horaireEnd':
        if (value.isEmpty) {
        } else {
          emit(state.copyWith(
              horaireEnd: TimeOfDay(
                  hour: int.parse(event.value!.split(':')[0]),
                  minute: int.parse(event.value!.split(':')[0]))));
        }

        break;
      case 'typeCommunication':
        if (value.isEmpty) {
        } else {
          emit(state.copyWith(typeCommunication: event.value));
        }

        break;
      case 'typeTravail':
        if (value.isEmpty) {
        } else {
          emit(state.copyWith(typeTravail: int.parse(event.value!)));
        }

        break;
    }
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

  _newDevis(NewDevis event, Emitter<DevisState> emit) async {
    emit(state.copyWith(
      load_list_pack: 0,
    ));
    var id = await database.getId();
    var data = {
      'inQuartier': state.inQuartier == 0,
      'typeTravail': state.typeTravail,
      'typeProjet': state.typeProjet.text,
      'nombreBiker': state.nombreBiker.text,
      'zone': state.zone.text,
      'horaire':
          '${state.horaireStart.hour}:${state.horaireStart.minute} - ${state.horaireEnd.hour}:${state.horaireEnd.minute}',
      'pack': 'api/packs/${state.pack!.id}',
      'client': 'api/user_plateforms/${id}',
      'dureeTravail': state.dureeTravail.text
    };
    emit(state.copyWith(
      isRequest: 0,
    ));
    print(data);
    await devisRepo.newDevis(data).then((response) {
      print('---------list_pack------${response.data['hydra:member']}');
      if (response.data != null) {
        emit(state.copyWith(
            isRequest: 1,
            list_pack: (response.data['hydra:member'] as List)
                .map((e) => PackModel.fromJson(e))
                .toList()));
        emit(state.copyWith(
          isRequest: null,
        ));
        // add(GetListDevis());
        print('---------list_pack------${state.list_pack!.length}');
      } else {
        emit(state.copyWith(
          isRequest: 2,
        ));
        emit(state.copyWith(
          isRequest: null,
        ));
      }
    }).onError((e, s) {
      emit(state.copyWith(
        isRequest: 2,
      ));
      emit(state.copyWith(
        isRequest: null,
      ));
    });
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

  _getListDevis(GetListDevis event, Emitter<DevisState> emit) async {
    emit(state.copyWith(
      load_list_devis: 0,
    ));
    await devisRepo.getlistDevis().then((response) {
      if (response.data != null) {
        emit(state.copyWith(
            load_list_devis: 1,
            list_devis: (response.data['data'] as List)
                .map((e) => DevisModel.fromJson(e))
                .toList()));
      } else {
        emit(state.copyWith(
          load_list_devis: 2,
        ));
      }
    }).onError((e, s) {
      emit(state.copyWith(
        load_list_devis: 2,
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
