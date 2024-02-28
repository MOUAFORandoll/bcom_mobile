// ignore_for_file: must_be_immutable

import 'package:Bcom/presentation/components/Form/textform.dart';
import 'package:Bcom/utils/Services/validators.dart';

import 'package:Bcom/application/export_bloc.dart';
import 'package:Bcom/presentation/components/exportcomponent.dart';

import 'package:Bcom/core.dart';

@RoutePage()
class CompleteBikerInfoPage extends StatefulWidget {
  @override
  State<CompleteBikerInfoPage> createState() => _CompleteBikerInfoPageState();
}

class _CompleteBikerInfoPageState extends State<CompleteBikerInfoPage> {
  var loader = AppLoader.bounceLargeColorLoaderController();

  TextEditingController phone = TextEditingController();

  final formKey = GlobalKey<FormState>();

  TextEditingController age = TextEditingController();

  TextEditingController nationalite = TextEditingController();
  TextEditingController cni = TextEditingController();
  TextEditingController handicatText = TextEditingController();
  TextEditingController symdicatText = TextEditingController();
  TextEditingController zoneActivite = TextEditingController();
  TextEditingController activite = TextEditingController();
  TextEditingController cartegrise = TextEditingController();

  int _genre = 0;
  int handicat = 0;
  int motoman = 0;
  int havemoto = 0;
  int symdicat = 0;
  int timework = 1;
  int statePage = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(
            'Completer vos informations de biker'.tr(),
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 13,
              fontWeight: FontWeight.w700,
            ),
          ),
          centerTitle: true,
          elevation: 0,
          backgroundColor: Colors.transparent,
        ),
        body: BlocConsumer<UserBloc, UserState>(
          listener: (context, state) {
            if (state.isLoading == 1) {
              loader.open(context);
            } else if (state.isLoading == 3) {
              loader.close();
              showError(state.authenticationFailedMessage!, context);
            } else if (state.isLoading == 2) {
              loader.close();

              showSuccess('Mise a jour effectuee', context);
              initLoad(context);
              print('-----44--------*********');
            }
          },
          builder: (context, state) {
            // if (state is InitialDataState) {
            //   InitialDataState _userState = state as InitialDataState;

            return Container(
              margin: EdgeInsets.symmetric(horizontal: kMarginX),
              child: Column(
                children: [
                  Expanded(
                    child: statePage == 0
                        ? SingleChildScrollView(
                            child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Container(
                                    margin: EdgeInsets.only(
                                      top: kMarginY,
                                    ),
                                    child: Text(
                                      'Mettons en place quelques details personnels'
                                          .tr(),
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                        fontSize: 13,
                                        // color: ColorsApp.orange,
                                        fontWeight: FontWeight.w700,
                                      ),
                                    ),
                                  ),
                                  Container(
                                      margin: EdgeInsets.only(
                                          top: kMarginY, bottom: kMarginY),
                                      child: Column(
                                        children: [
                                          Padding(
                                            padding: EdgeInsets.only(
                                              top: kMarginY,
                                            ),
                                            child: AppInput(
                                              controller: age,
                                              onChanged: (value) {},
                                              textInputType:
                                                  TextInputType.number,
                                              placeholder: 'Votre Age'.tr(),
                                              validator: (value) {
                                                return Validators
                                                    .isValidUsername(value!);
                                              },
                                            ),
                                          ),
                                          AppInput(
                                            controller: nationalite,
                                            onChanged: (value) {},
                                            placeholder: 'Nationalite'.tr(),
                                            validator: (value) {
                                              return Validators.isValidUsername(
                                                  value!);
                                            },
                                          ),
                                          AppInput(
                                            controller: cni,
                                            textInputType: TextInputType.number,
                                            onChanged: (value) {},
                                            placeholder: 'Numero de CNI'.tr(),
                                            validator: (value) {
                                              return Validators.isValidUsername(
                                                  value!);
                                            },
                                          ),
                                          Container(
                                            margin: EdgeInsets.symmetric(
                                                horizontal: kMarginX),
                                            alignment: Alignment.centerLeft,
                                            child: Column(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.start,
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                Container(
                                                  child: Text('Genre'.tr()),
                                                ),
                                                Row(
                                                  mainAxisAlignment:
                                                      MainAxisAlignment
                                                          .spaceBetween,
                                                  children: [
                                                    Row(
                                                      children: [
                                                        Radio(
                                                          value: 0,
                                                          activeColor:
                                                              ColorsApp.second,
                                                          groupValue: _genre,
                                                          onChanged:
                                                              (int? value) {
                                                            setState(() {
                                                              _genre = value!;
                                                            });
                                                            // BlocProvider.of<AlerteBloc>(
                                                            //         context)
                                                            //     .add(FieldChangedAlerte(
                                                            //         'sexeUser', '0'));
                                                          },
                                                        ),
                                                        Text('Homme'.tr()),
                                                      ],
                                                    ),
                                                    Row(
                                                      children: [
                                                        Radio(
                                                          value: 1,
                                                          activeColor:
                                                              ColorsApp.second,
                                                          groupValue: _genre,
                                                          onChanged:
                                                              (int? value) {
                                                            setState(() {
                                                              _genre = value!;
                                                            });
                                                            // BlocProvider.of<AlerteBloc>(
                                                            //         context)
                                                            //     .add(FieldChangedAlerte(
                                                            //         'sexeUser', '1'));
                                                          },
                                                        ),
                                                        Text('Femme'.tr()),
                                                      ],
                                                    ),
                                                  ],
                                                ),
                                              ],
                                            ),
                                          ),
                                          Container(
                                            margin: EdgeInsets.symmetric(
                                                horizontal: kMarginX),
                                            alignment: Alignment.centerLeft,
                                            child: Column(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.start,
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                Container(
                                                  child: Text(
                                                      'Souffrez d\'un handicap  ?'
                                                          .tr()),
                                                ),
                                                Row(
                                                  mainAxisAlignment:
                                                      MainAxisAlignment
                                                          .spaceBetween,
                                                  children: [
                                                    Row(
                                                      children: [
                                                        Radio(
                                                          value: 0,
                                                          activeColor:
                                                              ColorsApp.second,
                                                          groupValue: handicat,
                                                          onChanged:
                                                              (int? value) {
                                                            setState(() {
                                                              handicat = value!;
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
                                                          activeColor:
                                                              ColorsApp.second,
                                                          groupValue: handicat,
                                                          onChanged:
                                                              (int? value) {
                                                            setState(() {
                                                              handicat = value!;
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
                                              ],
                                            ),
                                          ),
                                          if (handicat == 0)
                                            Container(
                                                margin: EdgeInsets.symmetric(
                                                    horizontal: kMarginX),
                                                alignment: Alignment.centerLeft,
                                                child: Column(
                                                    mainAxisAlignment:
                                                        MainAxisAlignment.start,
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .start,
                                                    children: [
                                                      Container(
                                                        child: Text(
                                                            'Le Quel  ?'.tr()),
                                                      ),
                                                      TextForm(
                                                        controller:
                                                            handicatText,
                                                      )
                                                    ])),
                                        ],
                                      )),
                                ]),
                          )
                        : SingleChildScrollView(
                            child: Column(children: [
                              Container(
                                margin: EdgeInsets.only(
                                  top: kMarginY,
                                ),
                                child: Text(
                                  'Mettons en place quelques details Professionnel'
                                      .tr(),
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
                                    EdgeInsets.symmetric(horizontal: kMarginX),
                                alignment: Alignment.centerLeft,
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Container(
                                      margin: EdgeInsets.only(
                                        top: kMarginY,
                                      ),
                                      child: Text('Etes vous moto-man ?'.tr()),
                                    ),
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Row(
                                          children: [
                                            Radio(
                                              value: 0,
                                              activeColor: ColorsApp.second,
                                              groupValue: motoman,
                                              onChanged: (int? value) {
                                                setState(() {
                                                  motoman = value!;
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
                                              groupValue: motoman,
                                              onChanged: (int? value) {
                                                setState(() {
                                                  motoman = value!;
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
                                    if (motoman == 0)
                                      Container(
                                          alignment: Alignment.centerLeft,
                                          child: Column(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.start,
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                Container(
                                                  child: Text(
                                                      'Quelle est votre zone d\'activite ?'
                                                          .tr()),
                                                ),
                                                TextForm(
                                                  controller: zoneActivite,
                                                )
                                              ])),
                                    if (motoman == 1)
                                      Container(
                                          alignment: Alignment.centerLeft,
                                          child: Column(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.start,
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                Container(
                                                  child: Text(
                                                      'Preciser votre activite ?'
                                                          .tr()),
                                                ),
                                                TextForm(
                                                  controller: activite,
                                                )
                                              ]))
                                  ],
                                ),
                              ),
                              Container(
                                margin:
                                    EdgeInsets.symmetric(horizontal: kMarginX),
                                alignment: Alignment.centerLeft,
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Container(
                                      margin: EdgeInsets.only(
                                        top: kMarginY,
                                      ),
                                      child: Text(
                                          'Etes vous dans un syndicat ?'.tr()),
                                    ),
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Row(
                                          children: [
                                            Radio(
                                              value: 0,
                                              activeColor: ColorsApp.second,
                                              groupValue: symdicat,
                                              onChanged: (int? value) {
                                                setState(() {
                                                  symdicat = value!;
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
                                              groupValue: symdicat,
                                              onChanged: (int? value) {
                                                setState(() {
                                                  symdicat = value!;
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
                                    if (symdicat == 0)
                                      Container(
                                          alignment: Alignment.centerLeft,
                                          child: Column(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.start,
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                Container(
                                                  child: Text('Le quel ?'.tr()),
                                                ),
                                                TextForm(
                                                  controller: symdicatText,
                                                )
                                              ])),
                                  ],
                                ),
                              ),
                              Container(
                                margin:
                                    EdgeInsets.symmetric(horizontal: kMarginX),
                                alignment: Alignment.centerLeft,
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Container(
                                      margin: EdgeInsets.only(
                                        top: kMarginY,
                                      ),
                                      child: Text(
                                          'Etes vous proprietaire de moto ?'
                                              .tr()),
                                    ),
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Row(
                                          children: [
                                            Radio(
                                              value: 0,
                                              activeColor: ColorsApp.second,
                                              groupValue: havemoto,
                                              onChanged: (int? value) {
                                                setState(() {
                                                  havemoto = value!;
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
                                              value: 3,
                                              activeColor: ColorsApp.second,
                                              groupValue: havemoto,
                                              onChanged: (int? value) {
                                                setState(() {
                                                  havemoto = value!;
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
                                    if (havemoto == 0)
                                      Container(
                                          alignment: Alignment.centerLeft,
                                          child: Column(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.start,
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                Container(
                                                  child: Text(
                                                      'Numero de carte grise de la moto ?'
                                                          .tr()),
                                                ),
                                                TextForm(
                                                  controller: cartegrise,
                                                )
                                              ])),
                                  ],
                                ),
                              ),
                              Container(
                                margin:
                                    EdgeInsets.symmetric(horizontal: kMarginX),
                                alignment: Alignment.centerLeft,
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Container(
                                      margin: EdgeInsets.only(
                                        top: kMarginY,
                                      ),
                                      child: Text(
                                          'Travaillez-vous de jour ou nuit ?'
                                              .tr()),
                                    ),
                                    Row(
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
                                  ],
                                ),
                              ),
                            ]),
                          ),
                  ),
                  statePage == 0
                      ? AppButton(
                          size: MainAxisSize.max,
                          // bgColor: (age.text.isEmpty ||
                          //         nationalite.text.isEmpty ||
                          //         cni.text.isEmpty)
                          //     ? ColorsApp.grey
                          //     : ColorsApp.second,
                          text: 'Poursuivre'.tr(),
                          onTap: () async {
                            if (age.text.isEmpty ||
                                nationalite.text.isEmpty ||
                                cni.text.isEmpty ||
                                (handicat == 0 && handicatText.text.isEmpty)) {
                              showError(
                                  'Veuillez remplir tous les champs', context);
                            } else {
                              setState(() {
                                statePage = 1;
                              });
                            }
                            if (formKey.currentState!.validate()) {}
                          })
                      : Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                              AppButton(
                                  size: MainAxisSize.max,
                                  bgColor: ColorsApp.primary,
                                  text: 'Retour'.tr(),
                                  onTap: () async {
                                    setState(() {
                                      statePage = 0;
                                    });
                                    if (formKey.currentState!.validate()) {}
                                  }),
                              AppButton(
                                  size: MainAxisSize.max,
                                  // bgColor: ColorsApp.primary,
                                  text: 'Terminer'.tr(),
                                  onTap: () async {
                                    if ((motoman == 0 &&
                                            zoneActivite.text.isEmpty) ||
                                        (motoman == 1 &&
                                            activite.text.isEmpty) ||
                                        (havemoto == 0 &&
                                            cartegrise.text.isEmpty) ||
                                        (symdicat == 0 &&
                                            symdicatText.text.isEmpty)) {
                                      showError(
                                          'Veuillez remplir tous les champs',
                                          context);
                                    } else {
                                      print('ok');
                                      var data = {
                                        'age': age.text,
                                        'gender':
                                            _genre == 0 ? 'Homme' : 'Femme',
                                        'cni': cni.text,
                                        'handicap': handicat == 0,
                                        'handicap_description':
                                            handicatText.text,
                                        'is_biker': motoman == 0,
                                        'is_biker_yes': zoneActivite.text,
                                        'is_biker_no': activite.text,
                                        'is_syndicat': symdicat == 0,
                                        'is_syndicat_yes': age.text,
                                        'have_moto': havemoto == 0,
                                        'num_carte_grise_moto': age.text,
                                        'bike_work_time': timework
                                      };
                                      print(data);
                                      context
                                          .read<UserBloc>()
                                          .add(CompleteBikerInfo(data: data));
                                    }
                                  })
                            ]),
                ],
              ),
            );
            // } else {
            //   return Container();
            // }
          },
        ));
  }
}
