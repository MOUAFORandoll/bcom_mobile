// ignore_for_file: must_be_immutable

import 'dart:io';

import 'package:Bcom/application/database/database_cubit.dart';
import 'package:Bcom/presentation/components/Form/textform.dart';
import 'package:Bcom/presentation/components/Widget/bottom_sheet_choose_picture.dart';
import 'package:Bcom/utils/Services/validators.dart';

import 'package:Bcom/application/export_bloc.dart';
import 'package:Bcom/presentation/components/exportcomponent.dart';

import 'package:Bcom/core.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:dio/dio.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';

class InfoDevis extends StatefulWidget {
  @override
  State<InfoDevis> createState() => _InfoDevisState();
}

class _InfoDevisState extends State<InfoDevis> {
  TextEditingController nom_produit = TextEditingController();

  TextEditingController type_produit = TextEditingController();

  TextEditingController nmbre_biker = TextEditingController();

  TextEditingController zoneActivite = TextEditingController();

  TextEditingController activite = TextEditingController();
  List typeCommunication = ['Type1', 'Type2', ',Type3', ',Type4'];
  String type = 'Type1';
  int timework = 1;
  int inQuartier = 0;

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<UserBloc, UserState>(
        listener: (context, state) {
          if (state.isLoading == 1) {
            EasyLoading.show(
                status: 'En cours', maskType: EasyLoadingMaskType.black);
          } else if (state.isLoading == 3) {
            EasyLoading.dismiss();
            showError(state.authenticationFailedMessage!, context);
          } else if (state.isLoading == 2) {
            EasyLoading.dismiss();

            showSuccess('Mise a jour effectuee', context);
            initLoad(context);
            print('-----44--------*********');
          }
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
                            controller: nmbre_biker,
                            textInputType: TextInputType.number,
                            onChanged: (value) {},
                            placeholder: 'Nombre de biker'.tr(),
                            validator: (value) {
                              return Validators.isValidUsername(value!);
                            },
                          ),
                          AppInput(
                            controller: nmbre_biker,
                            textInputType: TextInputType.number,
                            onChanged: (value) {},
                            placeholder: 'Horaire de travail'.tr(),
                            validator: (value) {
                              return Validators.isValidUsername(value!);
                            },
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
                                    value: type,
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
                                      setState(() {
                                        type = newValue.toString();
                                      });
                                    },
                                    items: typeCommunication!.map((value) {
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
                                            groupValue: timework,
                                            onChanged: (int? value) {
                                              setState(() {
                                                timework = value!;
                                              });
                                              // BlocProvider.of<AlerteBloc>(
                                              //         context)
                                              //     .add(FieldChangedAlerte(
                                              //         'sexeUser', '0'));
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
                                            groupValue: timework,
                                            onChanged: (int? value) {
                                              setState(() {
                                                timework = value!;
                                              });
                                              // BlocProvider.of<AlerteBloc>(
                                              //         context)
                                              //     .add(FieldChangedAlerte(
                                              //         'sexeUser', '1'));
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
                                            groupValue: timework,
                                            onChanged: (int? value) {
                                              setState(() {
                                                timework = value!;
                                              });
                                              // BlocProvider.of<AlerteBloc>(
                                              //         context)
                                              //     .add(FieldChangedAlerte(
                                              //         'sexeUser', '1'));
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
                                            groupValue: inQuartier,
                                            onChanged: (int? value) {
                                              setState(() {
                                                inQuartier = value!;
                                              });
                                              // BlocProvider.of<AlerteBloc>(
                                              //         context)
                                              //     .add(FieldChangedAlerte(
                                              //         'sexeUser', '0'));
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
                                            groupValue: inQuartier,
                                            onChanged: (int? value) {
                                              setState(() {
                                                inQuartier = value!;
                                              });
                                              // BlocProvider.of<AlerteBloc>(
                                              //         context)
                                              //     .add(FieldChangedAlerte(
                                              //         'sexeUser', '1'));
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
                            controller: zoneActivite,
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
