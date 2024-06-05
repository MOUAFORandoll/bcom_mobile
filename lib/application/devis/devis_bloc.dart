import 'dart:async';

import 'package:Bcom/application/database/database_cubit.dart';
import 'package:Bcom/application/devis/repositories/devis_repo.dart';
import 'package:Bcom/application/model/data/DevisModel.dart';
import 'package:Bcom/application/model/data/MissionSession.dart';
import 'package:Bcom/application/model/data/PackModel.dart';
import 'package:Bcom/application/model/data/Parametre.dart';
import 'package:Bcom/application/model/exportmodel.dart';
import 'package:Bcom/presentation/components/Widget/InputComment.dart';
import 'package:Bcom/presentation/components/Widget/app_dropdown.dart';
import 'package:Bcom/presentation/components/Widget/app_input_description.dart';
import 'package:Bcom/presentation/components/exportcomponent.dart';
import 'package:Bcom/utils/Services/validators.dart';
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

    on<GetListParametre>(_getListParametre);
    on<GetListDevis>(_getListDevis);
    // on<GetListVille>(_getListVille);
    on<NewDevis>(_newDevis);
    on<SelectParametre>(selectParametre);
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

  // _getListVille(GetListVille event, Emitter<DevisState> emit) async {
  //   emit(state.copyWith(
  //     load_list_ville: 0,
  //   ));
  //   await devisRepo.getVille().then((response) {
  //     print('---------list_ville------${response.data['hydra:member']}');
  //     if (response.data != null) {
  //       emit(state.copyWith(
  //           load_list_ville: 1,
  //           list_ville: (response.data['hydra:member'] as List)
  //               .map((e) => VilleModel.fromJson(e))
  //               .toList()));
  //       print('---------list_ville------${state.list_ville!.length}');
  //     } else {
  //       emit(state.copyWith(
  //         load_list_ville: 2,
  //       ));
  //     }
  //   }).onError((e, s) {
  //     emit(state.copyWith(load_list_ville: 2));
  //   });
  // }

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

  Widget createWidget({required String field, required String title}) {
    switch (field) {
      case 'INPUTTEXT':
        TextEditingController _controller = TextEditingController();
        return AppInput(
          controller: _controller,
          textInputType: TextInputType.text,
          onChanged: (value) {},
          placeholder: title,
          validator: (value) {
            return Validators.isValidUsername(value!);
          },
        );

      case 'INPUTDESCRIPTION':
        TextEditingController _controller = TextEditingController();
        return AppInputDescription(
          controller: _controller,
          textInputType: TextInputType.text,
          onChanged: (value) {},
          placeholder: title,
          validator: (value) {
            return Validators.isValidUsername(value!);
          },
        );

      case 'INPUTNUMBER':
        TextEditingController _controller = TextEditingController();
        return AppInput(
          controller: _controller,
          textInputType: TextInputType.number,
          onChanged: (value) {},
          placeholder: title,
          validator: (value) {
            return Validators.isValidNumber(value!);
          },
        );

      case 'INPUTDROPDOWN':
        var value = 'Option 1';
        var items = ['Option 1', 'Option 2', 'Option 3'];
        return AppDropdown(
          value: value,
          items: items,
          onChanged: (value) {},
          label: title,
        );
      case 'INPUTRADIO':
        var value = 'Option 1';
        var items = ['Option 1', 'Option 2', 'Option 3'];
        return AppDropdown(
          value: value,
          items: items,
          onChanged: (value) {},
          label: title,
        );

      default:
        return SizedBox.shrink();
    }
  }

  changeIndexDevis(ChangeIndexDevis event, Emitter<DevisState> emit) async {
    emit(state.copyWith(
      indexDevis: event.val
          ? getVal(state.indexDevis! + 1)
          : getVal(state.indexDevis! - 1),
    ));
    print(state.pack!.title);
  }

  getVal(val) {
    return val < 0 ? 0 : val;
  }

  selectPack(SelectPack event, Emitter<DevisState> emit) async {
    emit(state.copyWith(
      pack: event.pack,
    ));
    print(state.pack!.title);
  }

  selectParametre(SelectParametre event, Emitter<DevisState> emit) async {
    emit(state.copyWith(
      parametre: event.parametre,
    ));
  }

  _newDevis(NewDevis event, Emitter<DevisState> emit) async {
    emit(state.copyWith(
      load_list_pack: 0,
    ));
    var user = await database.getUser();
    var data = {
      'inQuartier': state.inQuartier == 0,
      'typeTravail': state.typeTravail,
      'typeProjet': state.typeProjet.text,
      'nombreBiker': state.nombreBiker.text,
      'zone': state.zone.text,
      'horaire':
          '${state.horaireStart.hour}:${state.horaireStart.minute} - ${state.horaireEnd.hour}:${state.horaireEnd.minute}',
      'pack': 'api/packs/${state.pack!.id}',
      'client': user!.id,
      'ville': 'api/villes/${state.ville!.id}',
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
          /* list_pack: (response.data['hydra:member'] as List)
                .map((e) => PackModel.fromJson(e))
                .toList() */
        ));
        emit(state.copyWith(
          isRequest: null,
        ));
        //  emit(state.copyWith(
        //     isRequest: 5,
        //     isDownloadFacture: 0,
        //     paiement_url: response.data['paiement_url']));
        add(GetListDevis());
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
      print('---------list_pack------${response.data['data']}');
      if (response.data != null) {
        emit(state.copyWith(
            load_list_pack: 1,
            list_pack: (response.data['data'] as List)
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
            list_devis: (response.data['hydra:member'] as List)
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

  _getListParametre(GetListParametre event, Emitter<DevisState> emit) async {
    emit(state.copyWith(list_parametre: [
      new Parametre(
          title: 'Nombre de Biker', inputType: 'INPUTDROPDOWN', value: '1,2,3'),
      new Parametre(title: 'Biker', inputType: 'INPUTDESCRIPTION', value: ''),
      new Parametre(title: 'Biker', inputType: 'INPUTNUMBER', value: ''),
      new Parametre(title: 'Biker', inputType: 'INPUTTEXT', value: '')
    ]));

    emit(state.copyWith(
      load_list_parametre: 0,
    ));
    await devisRepo.getlistParametre().then((response) {
      if (response.data != null) {
        emit(state.copyWith(
            load_list_parametre: 1,
            list_parametre: (response.data['data'] as List)
                .map((e) => Parametre.fromJson(e))
                .toList()));
      } else {
        emit(state.copyWith(
          load_list_parametre: 2,
        ));
      }
    }).onError((e, s) {
      emit(state.copyWith(
        load_list_parametre: 2,
      ));
    });
  }
}
// context.read<DevisBloc>().add(GetImageColisGalerie())
