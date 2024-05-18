// ignore_for_file: must_be_immutable

import 'package:Bcom/application/model/exportmodel.dart';
import 'package:Bcom/presentation/components/Widget/entry_time_field.dart';
import 'package:Bcom/utils/Services/validators.dart';

import 'package:Bcom/application/export_bloc.dart';
import 'package:Bcom/presentation/components/exportcomponent.dart';

class InfoDevis extends StatefulWidget {
  @override
  State<InfoDevis> createState() => _InfoDevisState();
}

class _InfoDevisState extends State<InfoDevis> {
  TextEditingController activite = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<DevisBloc, DevisState>(
        listener: (context, state) {
          // if (state.isLoading == 1) {
          //   EasyLoading.show(
          //       dismissOnTap: true,
          //       status: 'En cours',
          //       maskType: EasyLoadingMaskType.black);
          // } else if (state.isLoading == 3) {
          //   EasyLoading.dismiss();
          //   showError(state.authenticationFailedMessage!, context);
          // } else if (state.isLoading == 2) {
          //   EasyLoading.dismiss();

          //   showSuccess('Mise a jour effectuee', context);
          //   initLoad(context);
          //   print('-----44--------*********');
          // }
        },
        builder: (context, state) => Container(
            margin: EdgeInsets.symmetric(horizontal: kMarginX),
            child: SingleChildScrollView(
              child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      margin: EdgeInsets.only(
                        top: kMarginY,
                      ),
                      child: Text(
                        'Renseignez nous les informations de votre commande'
                            .tr(),
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 15,
                          // color: ColorsApp.orange,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                    ),
                    Container(
                        margin:
                            EdgeInsets.only(top: kMarginY, bottom: kMarginY),
                        child: Column(children: [
                          AppInput(
                            controller: state.nombreBiker,
                            textInputType: TextInputType.number,
                            onChanged: (value) {},
                            placeholder: 'Nombre de biker'.tr(),
                            validator: (value) {
                              return Validators.isValidUsername(value!);
                            },
                          ),
                          AppInput(
                            controller: state.dureeTravail,
                            textInputType: TextInputType.number,
                            onChanged: (value) {},
                            placeholder: 'Duree du travail(en jours )'.tr(),
                            validator: (value) {
                              return Validators.isValidUsername(value!);
                            },
                          ),
                          Container(
                              alignment: Alignment.centerLeft,
                              margin: EdgeInsets.symmetric(
                                  vertical: kMarginY, horizontal: kMarginX),
                              child: Text(
                                'Horaire de travail'.tr(),
                                style: TextStyle(
                                  fontWeight: FontWeight.w500,
                                  // color: ColorsApp.tird,
                                  fontSize: 12,
                                  fontFamily: 'Lato',
                                ),
                              )),
                          Padding(
                            padding:
                                const EdgeInsets.symmetric(horizontal: 15.0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Container(
                                  width: getWith(context) * .35,
                                  child: EntryTimeField(
                                    label: 'Debut',
                                    initialeTime: state.horaireStart!,
                                    onPressed: (time) {
                                      BlocProvider.of<DevisBloc>(context).add(
                                          FieldChanged(
                                              fieldKey: 'horaireStart',
                                              value: time!.format(context)));
                                    },
                                  ),
                                ),
                                Container(
                                  width: getWith(context) * .35,
                                  child: EntryTimeField(
                                    label: 'Fin',
                                    initialeTime: state.horaireEnd!,
                                    onPressed: (time) {
                                      BlocProvider.of<DevisBloc>(context).add(
                                          FieldChanged(
                                              fieldKey: 'horaireEnd',
                                              value: time!.format(context)));
                                    },
                                  ),
                                )
                              ],
                            ),
                          ),
                          Container(
                              margin: EdgeInsets.symmetric(
                                  horizontal: kMarginX, vertical: kMarginY / 2),
                              decoration: BoxDecoration(),
                              child: SingleChildScrollView(
                                  child: Column(children: [
                                Container(
                                    padding: EdgeInsets.only(
                                      top: kMarginY,
                                    ),
                                    alignment: Alignment.centerLeft,
                                    child: Text(
                                      'Choisir le type de communication'.tr(),
                                      style: TextStyle(
                                        fontWeight: FontWeight.w500,
                                        // color: ColorsApp.tird,
                                        fontSize: 12,
                                        fontFamily: 'Lato',
                                      ),
                                    )),
                                Container(
                                  decoration: BoxDecoration(
                                    border: Border.all(
                                        color: ColorsApp.grey, width: 1),
                                    borderRadius: BorderRadius.circular(8),
                                  ),
                                  height: getHeight(context) * .06,
                                  width: getWith(context),
                                  margin: EdgeInsets.only(
                                    top: kMarginY * 1.5,
                                  ),
                                  alignment: Alignment.center,
                                  child: DropdownButton(
                                    value: state.typeCommunication,
                                    icon: Container(
                                      // padding: EdgeInsets.only(top: 4),
                                      child: Icon(
                                        Icons.keyboard_arrow_down_outlined,
                                      ),
                                    ),
                                    hint: Container(
                                      width: getWith(context) * .65,
                                      alignment: Alignment.center,
                                      padding: EdgeInsets.symmetric(
                                        horizontal: 0,
                                      ),
                                      child: Text(
                                        'Choisir le type de communication'.tr(),
                                        style: TextStyle(
                                            fontWeight: FontWeight.w500,
                                            // color: ColorsApp.tird,
                                            fontSize: 12,
                                            fontFamily: 'Lato',
                                            overflow: TextOverflow.ellipsis),
                                      ),
                                    ),
                                    iconSize: 25,
                                    underline: SizedBox(),
                                    style: TextStyle(
                                        color: ColorsApp.primary, fontSize: 12),
                                    onChanged: (newValue) {
                                      BlocProvider.of<DevisBloc>(context).add(
                                          FieldChanged(
                                              fieldKey: 'typeCommunication',
                                              value: newValue.toString()));
                                    },
                                    items: state.listTypeCommunication!
                                        .map((value) {
                                      return DropdownMenuItem(
                                        value: value,
                                        child: Center(
                                          child: Text(
                                            value!,
                                          ),
                                        ),
                                      );
                                    }).toList(),
                                  ),
                                ),
                                Container(
                                    padding: EdgeInsets.only(
                                      top: kMarginY,
                                    ),
                                    alignment: Alignment.centerLeft,
                                    child: Text(
                                      'Choisir votre ville'.tr(),
                                      style: TextStyle(
                                        fontWeight: FontWeight.w500,
                                        // color: ColorsApp.tird,
                                        fontSize: 12,
                                        fontFamily: 'Lato',
                                      ),
                                    )),
                                Container(
                                  decoration: BoxDecoration(
                                    border: Border.all(
                                        color: ColorsApp.grey, width: 1),
                                    borderRadius: BorderRadius.circular(8),
                                  ),
                                  height: getHeight(context) * .06,
                                  width: getWith(context),
                                  margin: EdgeInsets.only(
                                    top: kMarginY * 1.5,
                                  ),
                                  alignment: Alignment.center,
                                  child: DropdownButton(
                                    value: state.ville,
                                    icon: Container(
                                      // padding: EdgeInsets.only(top: 4),
                                      child: Icon(
                                        Icons.keyboard_arrow_down_outlined,
                                      ),
                                    ),
                                    hint: Container(
                                      width: getWith(context) * .65,
                                      alignment: Alignment.center,
                                      padding: EdgeInsets.symmetric(
                                        horizontal: 0,
                                      ),
                                      child: Text(
                                        'Choisir votre ville'.tr(),
                                        style: TextStyle(
                                            fontWeight: FontWeight.w500,
                                            // color: ColorsApp.tird,
                                            fontSize: 12,
                                            fontFamily: 'Lato',
                                            overflow: TextOverflow.ellipsis),
                                      ),
                                    ),
                                    iconSize: 25,
                                    underline: SizedBox(),
                                    style: TextStyle(
                                        color: ColorsApp.primary, fontSize: 12),
                                    onChanged: (VilleModel? newValue) {
                                      BlocProvider.of<DevisBloc>(context)
                                          .add(SelectVille(ville: newValue!));
                                    },
                                    items: state.list_ville!.map((value) {
                                      return DropdownMenuItem(
                                        value: value,
                                        child: Center(
                                          child: Text(
                                            value!.libelle,
                                          ),
                                        ),
                                      );
                                    }).toList(),
                                  ),
                                )
                              ]))),
                          Container(
                            margin: EdgeInsets.symmetric(horizontal: kMarginX),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Container(
                                  margin: EdgeInsets.only(
                                    top: kMarginY,
                                  ),
                                  child: Text(
                                    'Vous desirez un service de jour ou nuit ?'
                                        .tr(),
                                    style: TextStyle(
                                      fontWeight: FontWeight.w500,
                                      // color: ColorsApp.tird,
                                      fontSize: 12,
                                      fontFamily: 'Lato',
                                    ),
                                  ),
                                ),
                                Container(
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Row(
                                        children: [
                                          Radio(
                                            value: 1,
                                            activeColor: ColorsApp.second,
                                            groupValue: state.typeTravail,
                                            onChanged: (int? value) {
                                              BlocProvider.of<DevisBloc>(
                                                      context)
                                                  .add(FieldChanged(
                                                      fieldKey: 'typeTravail',
                                                      value: value.toString()));
                                            },
                                          ),
                                          Text('Jour'.tr()),
                                        ],
                                      ),
                                      Row(
                                        children: [
                                          Radio(
                                            value: 2,
                                            activeColor: ColorsApp.second,
                                            groupValue: state.typeTravail,
                                            onChanged: (int? value) {
                                              BlocProvider.of<DevisBloc>(
                                                      context)
                                                  .add(FieldChanged(
                                                      fieldKey: 'typeTravail',
                                                      value: value.toString()));
                                            },
                                          ),
                                          Text('Nuit'.tr()),
                                        ],
                                      ),
                                      Row(
                                        children: [
                                          Radio(
                                            value: 3,
                                            activeColor: ColorsApp.second,
                                            groupValue: state.typeTravail,
                                            onChanged: (int? value) {
                                              BlocProvider.of<DevisBloc>(
                                                      context)
                                                  .add(FieldChanged(
                                                      fieldKey: 'typeTravail',
                                                      value: value.toString()));
                                            },
                                          ),
                                          Text('Jour et Nuit'.tr()),
                                        ],
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.symmetric(horizontal: kMarginX),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Container(
                                  margin: EdgeInsets.only(
                                    top: kMarginY,
                                  ),
                                  child: Text(
                                    'Vous desirez nos services dans le quartier ?'
                                        .tr(),
                                    style: TextStyle(
                                      fontWeight: FontWeight.w500,
                                      // color: ColorsApp.tird,
                                      fontSize: 12,
                                      fontFamily: 'Lato',
                                    ),
                                  ),
                                ),
                                Container(
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Row(
                                        children: [
                                          Radio(
                                            value: 0,
                                            activeColor: ColorsApp.second,
                                            groupValue: state.inQuartier,
                                            onChanged: (int? value) {
                                              BlocProvider.of<DevisBloc>(
                                                      context)
                                                  .add(FieldChanged(
                                                      fieldKey: 'inQuartier',
                                                      value: value.toString()));
                                            },
                                          ),
                                          Text('Oui'.tr()),
                                        ],
                                      ),
                                      Row(
                                        children: [
                                          Radio(
                                            value: 1,
                                            activeColor: ColorsApp.second,
                                            groupValue: state.inQuartier,
                                            onChanged: (int? value) {
                                              BlocProvider.of<DevisBloc>(
                                                      context)
                                                  .add(FieldChanged(
                                                      fieldKey: 'inQuartier',
                                                      value: value.toString()));
                                            },
                                          ),
                                          Text('Non'.tr()),
                                        ],
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                          AppInput(
                            controller: state.zone,
                            onChanged: (value) {},
                            placeholder: 'Zone d\'activite ?'.tr(),
                            validator: (value) {
                              return Validators.isValidUsername(value!);
                            },
                          ),
                        ])),
                  ]),
            )));
  }
}
