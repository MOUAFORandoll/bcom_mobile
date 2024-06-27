import 'dart:async';
import 'dart:developer';

import 'package:Bcom/application/database/database_cubit.dart';
import 'package:Bcom/application/devis/repositories/devis_repo.dart';
import 'package:Bcom/application/model/data/DevisModel.dart';
import 'package:Bcom/application/model/data/ParamSaveModel.dart';
import 'package:Bcom/application/model/data/Parametre.dart';
import 'package:Bcom/application/model/exportmodel.dart'; 
import 'package:Bcom/presentation/components/Widget/app_dropdown.dart'; 
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
  
  void _fieldChanged(FieldChanged event, Emitter<DevisState> emit) async {
    // String? value = event.value;
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

  changeIndexDevis(ChangeIndexDevis event, Emitter<DevisState> emit) async {
    var _data = formatDataToDevis();

    log(_data.toString());
    emit(state.copyWith(indexDevis: event.val ? 1 : 0));
  }

  _newDevis(NewDevis event, Emitter<DevisState> emit) async {
    var user = await database.getUser();
    var _data = formatDataToDevis();
    
    log(_data.toString());
    var data = {
      'idClient': user!.userId,
      'amount': state.montantDevis,
      'desciption': state.description_produit.text
    };
    emit(state.copyWith(
      isRequest: 0,
    ));

    await devisRepo.addDevis(data).then((response) async {
      print('---------addDevis------${response.data['data']}');
      if (response.data != null) {
        _data.forEach((e) async {
          log(e['id'].toString());
          log(e['value'].toString());

          var dataDevisContent = {
            'idDevis': response.data['data']['id'],
            'idParameter': e['id'],
            'value': e['value'],
          };
          await devisRepo.addDevisContent(dataDevisContent).then((response) {});
        });
        emit(state.copyWith(
          isRequest: 1,
        ));
        emit(state.copyWith(
          isRequest: null,
        ));

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
      load_listDevis: 0,
    ));
    await devisRepo.getlistDevis().then((response) {
      if (response.data != null) {
        emit(state.copyWith(
            load_listDevis: 1,
            listDevis: (response.data['data'] as List)
                .map((e) => DevisModel.fromJson(e))
                .toList()));
      } else {
        emit(state.copyWith(
          load_listDevis: 2,
        ));
      }
    }).onError((e, s) {
      emit(state.copyWith(
        load_listDevis: 2,
      ));
    });
  }

  _getListParametre(GetListParametre event, Emitter<DevisState> emit) async {
    emit(state.copyWith(
      load_list_parametre: 0,
      montantDevis: 0,
      listdataSave: [],
    ));
    emit(state.copyWith(list_parametre: [
      new Parametre(
          id: 1,
          title: 'Nombre de Biker',
          inputType: 'DROPDOWN',
          itemsValue: '1,2,3',
          montants: '1000,2000,3000'),
      new Parametre(
          id: 2,
          title: 'Ville',
          inputType: 'TEXT',
          itemsValue: '',
          montants: ''),
      new Parametre(
          id: 3,
          title: 'Quartier',
          inputType: 'TEXT',
          itemsValue: '',
          montants: ''),
      new Parametre(
          id: 4,
          title: 'Choisir',
          inputType: 'RADIO',
          itemsValue: 'Option 1,Option 2,Option 3',
          montants: '500,2000,30000')
    ]));
    log('--${state.list_parametre!.length}');
    List<Widget> _data = state.list_parametre!.map((element) {
      return createWidget(
        inputType: element.inputType,
        title: element.title,
        itemsValue: element.itemsValue,
        montants: element.montants,
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
    required String montants,
  }) {
    switch (inputType) {
      case 'TEXT':
        TextEditingController _controller = TextEditingController(text: '');
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
      case 'null':
        TextEditingController _controller = TextEditingController(text: '');
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
          value: '',
          items: items,
          onChanged: (newValue) =>
              add(UpdateParametre(label: title, value: newValue)),
          label: title,
        );
      case 'RADIO':
        List<String> items = itemsValue.split(',');
        return AppRadioGroup(
          value: '',
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

      emit(state.copyWith(formKey: GlobalKey<FormState>()));
      int index = state.list_parametre!
          .indexWhere((param) => param.title == event.label);

      var datta = state.list_parametre![index];
      var indexFind = datta.itemsValue.split(',').indexOf(event.value);
      List<ParamSaveModel>? listdataSave = List.from(state.listdataSave!);
      if (indexFind != -1) {
        var indexFindParam =
            listdataSave.indexWhere((element) => element.title == event.label);
        if (indexFindParam != -1) {
          log('-find----${listdataSave.length}');
          emit(state.copyWith(
              montantDevis: state.montantDevis! -
                  int.parse(listdataSave[indexFindParam].value)));
          listdataSave.removeAt(indexFindParam);
        }
        var montantDevis = state.montantDevis!.toString();
        var montant = datta.montants.split(',')[indexFind];
        emit(state.copyWith(
            montantDevis: int.parse(montantDevis) +
                int.parse((montant.length == 0 ? 0 : montant).toString())));
        listdataSave
            .add(new ParamSaveModel(title: event.label, value: montant));
        emit(state.copyWith(
          listdataSave: listdataSave,
        ));
        log('-find----${listdataSave.toList()}');
      }

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

      int index = state.list_parametre!
          .indexWhere((param) => param.title == event.label);

      var datta = state.list_parametre![index];
      var indexFind = datta.itemsValue.split(',').indexOf(event.value);
      List<ParamSaveModel>? listdataSave = List.from(state.listdataSave!);
      if (indexFind != -1) {
        var indexFindParam =
            listdataSave.indexWhere((element) => element.title == event.label);
        if (indexFindParam != -1) {
          emit(state.copyWith(
              montantDevis: state.montantDevis! -
                  int.parse(listdataSave[indexFindParam].value)));
          listdataSave.removeAt(indexFindParam);
        }
        var montantDevis = state.montantDevis!.toString();
        var montant = datta.montants.split(',')[indexFind];
        emit(state.copyWith(
            montantDevis: int.parse(montantDevis) +
                int.parse((montant.length == 0 ? 0 : montant).toString())));
        listdataSave
            .add(new ParamSaveModel(title: event.label, value: montant));
        emit(state.copyWith(
          listdataSave: listdataSave,
        ));
      }

      emit(state.copyWith(formKey: state.formKey.currentState!.save()));
      emit(state.copyWith(formKey: GlobalKey<FormState>()));
    }
  }
  
  List<Map<dynamic, dynamic>> formatDataToDevis() {
    List<Map<dynamic, dynamic>> dataList = [];

    state.list_parametre!.forEach((element) {
      var value = findWidget(element.title);
      if (value != null) {
        dataList.add({'id': element.id, 'value': value});
      }
    });

    return dataList;
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
