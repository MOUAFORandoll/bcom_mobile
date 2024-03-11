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
                child: Column(children: [
              Container(
                margin: EdgeInsets.symmetric(horizontal: kMarginX),
                child: Column(
                  children: [
                    statePage == 0
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
                                                horizontal: kMarginX,
                                                vertical: kMarginY / 2),
                                            child: Column(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.start,
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                Container(
                                                    child: Text(
                                                        'Face avant de la CNI / Récépissé')),
                                                Container(
                                                  // margin: EdgeInsets.symmetric(
                                                  //     horizontal: kMarginX,
                                                  //     vertical: kMarginY),
                                                  padding: EdgeInsets.symmetric(
                                                      horizontal: kMarginX,
                                                      vertical: kMarginY),
                                                  alignment: Alignment.center,
                                                  decoration: BoxDecoration(
                                                    border: Border.all(
                                                        color: ColorsApp.grey),
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            20),
                                                    color: Colors.transparent,
                                                  ),
                                                  child: InkWell(
                                                      onTap: () =>
                                                          bottomSheetChoosePicture(
                                                              context: context,
                                                              action:
                                                                  (File file) {
                                                                BlocProvider.of<
                                                                            UserBloc>(
                                                                        context)
                                                                    .add(SetCniImageAvant(
                                                                        image:
                                                                            file));
                                                                AutoRouter.of(
                                                                        context)
                                                                    .pop();
                                                              }),
                                                      child: Row(
                                                        mainAxisAlignment:
                                                            MainAxisAlignment
                                                                .spaceBetween,
                                                        children: [
                                                          state.cniImageAvant ==
                                                                  null
                                                              ? Container(
                                                                  child: Text(
                                                                      'Une photo avant de la CNI / Récépissé'))
                                                              : Container(
                                                                  width: getWith(
                                                                          context) *
                                                                      .7,
                                                                  child: Text(
                                                                    state
                                                                        .cniImageAvant!
                                                                        .path
                                                                        .split(
                                                                            '/')
                                                                        .last,
                                                                    overflow:
                                                                        TextOverflow
                                                                            .ellipsis,
                                                                  )),
                                                          Icon(
                                                            Icons.upload,
                                                            size: 30,
                                                            color: ColorsApp
                                                                .primary,
                                                          )
                                                        ],
                                                      )),
                                                ),
                                              ],
                                            ),
                                          ),
                                          Container(
                                            margin: EdgeInsets.symmetric(
                                                horizontal: kMarginX,
                                                vertical: kMarginY / 2),
                                            child: Column(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.start,
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                Container(
                                                    child: Text(
                                                        'Face arriere de la CNI / Récépissé')),
                                                Container(
                                                  // margin: EdgeInsets.symmetric(
                                                  //     horizontal: kMarginX,
                                                  //     vertical: kMarginY),
                                                  padding: EdgeInsets.symmetric(
                                                      horizontal: kMarginX,
                                                      vertical: kMarginY),
                                                  alignment: Alignment.center,
                                                  decoration: BoxDecoration(
                                                    border: Border.all(
                                                        color: ColorsApp.grey),
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            20),
                                                    color: Colors.transparent,
                                                  ),
                                                  child: InkWell(
                                                      onTap: () =>
                                                          bottomSheetChoosePicture(
                                                              context: context,
                                                              action:
                                                                  (File file) {
                                                                BlocProvider.of<
                                                                            UserBloc>(
                                                                        context)
                                                                    .add(SetCniImageArriere(
                                                                        image:
                                                                            file));
                                                                AutoRouter.of(
                                                                        context)
                                                                    .pop();
                                                              }),
                                                      child: Row(
                                                        mainAxisAlignment:
                                                            MainAxisAlignment
                                                                .spaceBetween,
                                                        children: [
                                                          state.cniImageArriere ==
                                                                  null
                                                              ? Container(
                                                                  child: Text(
                                                                      'Une photo arriere de la CNI / Récépissé'))
                                                              : Container(
                                                                  width: getWith(
                                                                          context) *
                                                                      .7,
                                                                  child: Text(
                                                                    state
                                                                        .cniImageArriere!
                                                                        .path
                                                                        .split(
                                                                            '/')
                                                                        .last,
                                                                    overflow:
                                                                        TextOverflow
                                                                            .ellipsis,
                                                                  )),
                                                          Icon(
                                                            Icons.upload,
                                                            size: 30,
                                                            color: ColorsApp
                                                                .primary,
                                                          )
                                                        ],
                                                      )),
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
                                alignment: Alignment.centerLeft,
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Container(
                                      margin: EdgeInsets.symmetric(
                                          horizontal: kMarginX),
                                      child: Text(
                                          'Etes vous proprietaire de moto ?'
                                              .tr()),
                                    ),
                                    Container(
                                      margin: EdgeInsets.symmetric(
                                          horizontal: kMarginX),
                                      child: Row(
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
                                    ),
                                    if (havemoto == 0)
                                      AppInput(
                                        controller: cartegrise,
                                        textInputType: TextInputType.number,
                                        onChanged: (value) {},
                                        placeholder:
                                            'Numero de carte grise de la moto ?'
                                                .tr(),
                                        validator: (value) {
                                          return Validators.isValidUsername(
                                              value!);
                                        },
                                      ),
                                    if (havemoto == 0)
                                      Container(
                                        margin: EdgeInsets.symmetric(
                                            vertical: kMarginY / 2,
                                            horizontal: kMarginX),
                                        child: Column(
                                          mainAxisAlignment:
                                              MainAxisAlignment.start,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Container(
                                                child: Text(
                                                    'Une photo de la carte grise de la moto ')),
                                            Container(
                                              margin: EdgeInsets.symmetric(
                                                  vertical: kMarginY),
                                              padding: EdgeInsets.symmetric(
                                                  horizontal: kMarginX,
                                                  vertical: kMarginY),
                                              alignment: Alignment.center,
                                              decoration: BoxDecoration(
                                                border: Border.all(
                                                    color: ColorsApp.grey),
                                                borderRadius:
                                                    BorderRadius.circular(20),
                                                color: Colors.transparent,
                                              ),
                                              child: InkWell(
                                                  onTap: () =>
                                                      bottomSheetChoosePicture(
                                                          context: context,
                                                          action: (File file) {
                                                            BlocProvider.of<
                                                                        UserBloc>(
                                                                    context)
                                                                .add(SetCGImage(
                                                                    image:
                                                                        file));
                                                            AutoRouter.of(
                                                                    context)
                                                                .pop();
                                                          }),
                                                  child: Row(
                                                    mainAxisAlignment:
                                                        MainAxisAlignment
                                                            .spaceBetween,
                                                    children: [
                                                      state.cartegriseImage ==
                                                              null
                                                          ? Container(
                                                              width: getWith(
                                                                      context) *
                                                                  .7,
                                                              child: Text(
                                                                  'Une photo de votre carte grise'))
                                                          : Container(
                                                              width: getWith(
                                                                      context) *
                                                                  .7,
                                                              child: Text(
                                                                state
                                                                    .cartegriseImage!
                                                                    .path
                                                                    .split('/')
                                                                    .last,
                                                                overflow:
                                                                    TextOverflow
                                                                        .ellipsis,
                                                              )),
                                                      Icon(
                                                        Icons.upload,
                                                        size: 30,
                                                        color:
                                                            ColorsApp.primary,
                                                      )
                                                    ],
                                                  )),
                                            ),
                                          ],
                                        ),
                                      ),
                                    Container(
                                      margin: EdgeInsets.symmetric(
                                          vertical: kMarginY / 2,
                                          horizontal: kMarginX),
                                      child: Column(
                                        // mainAxisAlignment:
                                        //     MainAxisAlignment.center,
                                        children: [
                                          Container(
                                              child: Text('Une photo de vous')),
                                          BlocBuilder<HomeBloc, HomeState>(
                                            builder: (context, state) =>
                                                CircleAvatar(
                                              radius: 50,
                                              backgroundColor: Colors.white,
                                              child: InkWell(
                                                onTap: () =>
                                                    BlocProvider.of<UserBloc>(
                                                            context)
                                                        .add(UpdateUserImage()),
                                                child: CachedNetworkImage(
                                                  height:
                                                      getHeight(context) / 10,
                                                  width:
                                                      getHeight(context) / 10,
                                                  fit: BoxFit.cover,
                                                  imageUrl: state.user!.profile,
                                                  imageBuilder:
                                                      (context, imageProvider) {
                                                    return Container(
                                                      decoration: BoxDecoration(
                                                        shape: BoxShape.circle,
                                                        image: DecorationImage(
                                                          image: imageProvider,
                                                          fit: BoxFit.cover,
                                                        ),
                                                      ),
                                                    );
                                                  },
                                                  placeholder: (context, url) {
                                                    return Container(
                                                      decoration: BoxDecoration(
                                                          color: ColorsApp.grey,
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(
                                                                      50)),
                                                      child: Center(
                                                          child:
                                                              CircularProgressIndicator(
                                                                  color: ColorsApp
                                                                      .second)),
                                                    );
                                                  },
                                                  errorWidget:
                                                      (context, url, error) {
                                                    return CircleAvatar(
                                                        // backgroundColor: ColorsApp.tird,
                                                        radius: 150,
                                                        backgroundImage: AssetImage(
                                                            'assets/images/user.jpg'));
                                                  },
                                                ),
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
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
                                  (handicat == 0 &&
                                      handicatText.text.isEmpty) ||
                                  (state.cniImageAvant == null ||
                                      state.cniImageArriere == null)) {
                                showError(
                                    'Veuillez remplir tous les champs, y compris les images',
                                    context);
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
                                Container(
                                  width: getWith(context) * .4,
                                  child: AppButton(
                                      size: MainAxisSize.max,
                                      bgColor: ColorsApp.primary,
                                      text: 'Retour'.tr(),
                                      onTap: () async {
                                        setState(() {
                                          statePage = 0;
                                        });
                                        if (formKey.currentState!.validate()) {}
                                      }),
                                ),
                                Container(
                                  width: getWith(context) * .4,
                                  child: AppButton(
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
                                                symdicatText.text.isEmpty) ||
                                            (state.cniImageAvant == null ||
                                                state.cniImageArriere ==
                                                    null /* ||
                                                state.cartegriseImage ==
                                                    null */
                                            )) {
                                          showError(
                                              'Veuillez remplir tous les champs',
                                              context);
                                        } else {
                                          print('ok');

                                          final DatabaseCubit database =
                                              sl.get<DatabaseCubit>();
                                          var key = await database.getKey();
                                          print(key);
                                          FormData formData = FormData.fromMap({
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
                                            'bike_work_time': timework,
                                            'keySecret': key
                                          });
                                          if (state.cniImageAvant != null)
                                            formData.files.add(MapEntry(
                                                'cni_avant',
                                                await MultipartFile.fromFile(
                                                  state.cniImageAvant!.path,
                                                  filename: 'cni_avant.jpg',
                                                )));
                                          if (state.cniImageArriere != null)
                                            formData.files.add(MapEntry(
                                                'cni_arriere',
                                                await MultipartFile.fromFile(
                                                  state.cniImageArriere!.path,
                                                  filename: 'cni_arriere.jpg',
                                                )));
                                          if (state.cartegriseImage != null)
                                            formData.files.add(MapEntry(
                                                'carte_grise',
                                                await MultipartFile.fromFile(
                                                  state.cartegriseImage!.path,
                                                  filename: 'carte_grise.jpg',
                                                )));
                                          print(formData);
                                          context.read<UserBloc>().add(
                                              CompleteBikerInfo(
                                                  data: formData));
                                          BlocProvider.of<HomeBloc>(context)
                                              .add(UserDataEvent());
                                        }
                                      }),
                                )
                              ]),
                  ],
                ),
              )
            ])));
  }
}
