import 'dart:async';
import 'dart:developer';

import 'package:Bcom/application/database/database_cubit.dart';
import 'package:Bcom/application/devis/repositories/devis_repo.dart';
import 'package:Bcom/application/model/data/DevisModel.dart';
import 'package:Bcom/application/model/data/Parametre.dart';
import 'package:Bcom/application/model/exportmodel.dart';
import 'package:Bcom/presentation/components/Widget/app_dropdown.dart';
import 'package:Bcom/presentation/components/Widget/app_input_description.dart';
import 'package:Bcom/presentation/components/Widget/app_radio.dart';
import 'package:Bcom/presentation/components/exportcomponent.dart';
import 'package:Bcom/utils/Services/validators.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'devis_bloc.freezed.dart';
part 'devis_event.dart';
part 'devis_state.dart';

class DevisBloc extends Bloc<DevisEvent, DevisState> {
  final DevisRepo devisRepo;
  final DatabaseCubit database;
  DevisBloc({required this.devisRepo, required this.database})
      : super(DevisState.initial()) {
    on<FieldChanged>(_fieldChanged);

    on<GetListParametre>(_getListParametre);
    on<GetListDevis>(_getListDevis);

    on<NewDevis>(_newDevis);
    on<UpdateParametre>(updateParametre);

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
  
  void _fieldChanged(FieldChanged event, Emitter<DevisState> emit) async {
    String? value = event.value;
    /*   switch (event.fieldKey) {
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
  */
  }

  // changeIndexDevis(ChangeIndexDevis event, Emitter<DevisState> emit) async {
  //   emit(state.copyWith(
  //     indexDevis: event.val
  //         ? getVal(state.indexDevis! + 1)
  //         : getVal(state.indexDevis! - 1),
  //   ));
  // }

  getVal(val) {
    return val < 0 ? 0 : val;
  }

  _newDevis(NewDevis event, Emitter<DevisState> emit) async {
    emit(state.copyWith(
      load_list_pack: 0,
    ));
    var user = await database.getUser();
    var _data = formatDataToDevis();

    log(_data.toString());
    var data = {
      'inQuartier': state.inQuartier == 0,
      'typeTravail': state.typeTravail,
      'typeProjet': state.typeProjet.text,
      'nombreBiker': state.nombreBiker.text,
      'zone': state.zone.text,
      'horaire':
          '${state.horaireStart.hour}:${state.horaireStart.minute} - ${state.horaireEnd.hour}:${state.horaireEnd.minute}',
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
    emit(state.copyWith(
      load_list_parametre: 0,
    ));
    emit(state.copyWith(list_parametre: [
      new Parametre(
          title: 'Nombre de Biker',
          inputType: 'DROPDOWN',
          itemsValue: '1,2,3',
          value: '1,2,3'),
      new Parametre(
          title: 'Ville', inputType: 'TEXT', itemsValue: '', value: ''),
      new Parametre(
          title: 'Quartier', inputType: 'TEXT', itemsValue: '', value: ''),
      new Parametre(
          title: 'Choisir',
          inputType: 'RADIO',
          itemsValue: 'Option 1,Option 2,Option 3',
          value: '')
    ]));
    log('--${state.list_parametre!.length}');
    List<Widget> _data = state.list_parametre!.map((element) {
      return createWidget(
        inputType: element.inputType,
        title: element.title,
        itemsValue: element.itemsValue,
        value: element.value,
      );
    }).toList();
    emit(state.copyWith(
      list_widget_devis: _data,
    ));
    log('----${state.list_widget_devis!.length}');

    emit(state.copyWith(
      load_list_parametre: 1,
    ));
    // await devisRepo.getlistParametre().then((response) {
    //   if (response.data != null) {
    //     emit(state.copyWith(
    //         load_list_parametre: 1,
    //         list_parametre: (response.data['data'] as List)
    //             .map((e) => Parametre.fromJson(e))
    //             .toList()));

    //     List<Widget> _data = state.list_parametre!.map((element) {
    //       return createWidget(
    //           inputType: element.inputType,
    //           title: element.title,
    //           value: element.value);
    //     }).toList();
    //     emit(state.copyWith(
    //       list_widget_devis: _data,
    //     ));
    //   } else {
    //     emit(state.copyWith(
    //       load_list_parametre: 2,
    //     ));
    //   }
    // }).onError((e, s) {
    //   emit(state.copyWith(
    //     load_list_parametre: 2,
    //   ));
    // });
  }

  Widget createWidget({
    required String inputType,
    required String title,
    required String itemsValue,
    required String value,
  }) {
    switch (inputType) {
      case 'TEXT':
        TextEditingController _controller = TextEditingController(text: value);
        return AppInput(
          key: ValueKey(title),
          controller: _controller,
          textInputType: TextInputType.text,
          onChanged: (newValue) =>
              add(UpdateParametre(label: title, value: newValue)),
          placeholder: title,
          validator: (newValue) {
            return Validators.isValidUsername(newValue!);
          },
        );

      case 'DROPDOWN':
        List<String> items = itemsValue.split(',');
        return AppDropdown(
          key: ValueKey(title),
          value: value,
          items: items,
          onChanged: (newValue) =>
              add(UpdateParametre(label: title, value: newValue)),
          label: title,
        );
      case 'RADIO':
        List<String> items = itemsValue.split(',');
        return AppRadioGroup(
          value: value,
          key: ValueKey(title),
          items: items,
          onChanged: (newValue) =>
              add(UpdateParametre(label: title, value: newValue)),
          label: title,
        );

      default:
        return SizedBox.shrink();
    }
  }

  void updateParametre(UpdateParametre event, Emitter<DevisState> emit) {
    List<Widget> updatedList = List.from(state.list_widget_devis!);
    log('----${event.label}---------${event.value}---');
    int foundIndex = updatedList.indexWhere((widget) =>
        (widget is AppInput) && (widget.key as ValueKey).value == event.label);
    if (foundIndex != -1) {
      (updatedList[foundIndex] as AppInput).controller.text = event.value;

      emit(state.copyWith(list_widget_devis: updatedList));
    }

    int foundIndex0 = updatedList.indexWhere((widget) =>
        (widget is AppDropdown) &&
        (widget.key as ValueKey).value == event.label);
    if (foundIndex0 != -1) {
      (updatedList[foundIndex0] as AppDropdown).value = event.value;
      emit(state.copyWith(list_widget_devis: updatedList));
      state.formKey.currentState!.save();
      emit(state.copyWith(formKey: state.formKey.currentState!.save()));
      emit(state.copyWith(formKey: GlobalKey<FormState>()));
    }

    int foundIndex1 = updatedList.indexWhere((widget) =>
        (widget is AppRadioGroup) &&
        (widget.key as ValueKey).value == event.label);
    if (foundIndex1 != -1) {
      (updatedList[foundIndex1] as AppRadioGroup).value = event.value;
      emit(state.copyWith(list_widget_devis: updatedList));
      state.formKey.currentState!.save();
      emit(state.copyWith(formKey: state.formKey.currentState!.save()));
      emit(state.copyWith(formKey: GlobalKey<FormState>()));
    }
  }

  formatDataToDevis() {
    Map<String, dynamic> _data = {};

    state.list_parametre!.forEach((element) {
      var value = findWidget(element.title);
      if (value != null) {
        _data[element.title] = value;
      }
    });

    return _data;
  }

  findWidget(label) {
    log('----${label}--------- ---');
    int foundIndex = state.list_widget_devis!.indexWhere((widget) =>
        (widget is AppInput) && (widget.key as ValueKey).value == label);
    if (foundIndex != -1) {
      return (state.list_widget_devis![foundIndex] as AppInput).controller.text;
    }

    int foundIndex0 = state.list_widget_devis!.indexWhere((widget) =>
        (widget is AppDropdown) && (widget.key as ValueKey).value == label);
    if (foundIndex0 != -1) {
      return (state.list_widget_devis![foundIndex0] as AppDropdown).value;
    }

    int foundIndex1 = state.list_widget_devis!.indexWhere((widget) =>
        (widget is AppRadioGroup) && (widget.key as ValueKey).value == label);
    if (foundIndex1 != -1) {
      return (state.list_widget_devis![foundIndex1] as AppRadioGroup).value;
    }
  }
}
// context.read<DevisBloc>().add(GetImageColisGalerie())
