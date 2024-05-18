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

  int timework = 1;

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
                        'Renseignez nous les informations de votre devis'.tr(),
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 13,
                          // color: ColorsApp.orange,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                    ),
                    Container(
                        margin:
                            EdgeInsets.only(top: kMarginY, bottom: kMarginY),
                        child: Column(children: [
                          Container(
                            margin: EdgeInsets.only(
                              top: kMarginY,
                            ),
                            child: Text(
                              '1- Contenu de votre commande'.tr(),
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                fontSize: 18,
                                // color: ColorsApp.orange,
                                fontWeight: FontWeight.w700,
                              ),
                            ),
                          ),
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
                                  horizontal: kMarginX, vertical: kMarginY),
                              alignment: Alignment.centerLeft,
                              child: Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Container(
                                      child: Text(
                                        'Zone d\'activite ?'.tr(),
                                        style: TextStyle(
                                          fontWeight: FontWeight.w500,
                                          // color: ColorsApp.tird,
                                          fontSize: 12,
                                          fontFamily: 'Lato',
                                        ),
                                      ),
                                    ),
                                    TextForm(
                                      controller: zoneActivite,
                                    )
                                  ])),
                        ])),
                    Container(
                      margin: EdgeInsets.only(top: kMarginY, bottom: kMarginY),
                      child: Column(
                        children: [
                          Container(
                            margin: EdgeInsets.only(
                              top: kMarginY,
                            ),
                            child: Text(
                              '2- Votre Produit'.tr(),
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                fontSize: 18,
                                // color: ColorsApp.orange,
                                fontWeight: FontWeight.w700,
                              ),
                            ),
                          ),
                          AppInput(
                            controller: nom_produit,
                            onChanged: (value) {},
                            placeholder: 'Nom de votre produit'.tr(),
                            validator: (value) {
                              return Validators.isValidUsername(value!);
                            },
                          ),
                          Container(
                              margin: EdgeInsets.symmetric(
                                  horizontal: kMarginX, vertical: kMarginY),
                              alignment: Alignment.centerLeft,
                              child: Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Container(
                                      alignment: Alignment.centerLeft,
                                      child: Text(
                                        'Parlez nous de votre produit'.tr(),
                                        style: TextStyle(
                                          fontWeight: FontWeight.w500,
                                          // color: ColorsApp.tird,
                                          fontSize: 12,
                                          fontFamily: 'Lato',
                                        ),
                                      ),
                                    ),
                                    Container(
                                      child: TextForm(
                                        controller: type_produit,
                                      ),
                                    )
                                  ])),
                          Container(
                            margin: EdgeInsets.only(
                              top: kMarginY,
                            ),
                            child: Text(
                                'Vous desirez un service de jour ou nuit ?'
                                    .tr()),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
                        ],
                      ),
                    ),
                  ]),
            )));
  }
}
