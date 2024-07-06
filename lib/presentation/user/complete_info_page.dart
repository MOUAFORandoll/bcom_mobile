// ignore_for_file: must_be_immutable

import 'dart:developer';

import 'package:Bcom/application/export_bloc.dart';
import 'package:Bcom/presentation/components/exportcomponent.dart';

import 'package:Bcom/core.dart';
import 'package:Bcom/presentation/home/presentation_page.dart';
import 'package:Bcom/presentation/user/complete_info/first_steps.dart';
import 'package:Bcom/presentation/user/complete_info/second_steps.dart';
import 'package:Bcom/presentation/user/complete_info/user_info_page.dart';
import 'package:Bcom/routes/app_router.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';

@RoutePage()
class CompleteInfoPage extends StatefulWidget {
  static const routeName = '/complete-profil';

  @override
  State<CompleteInfoPage> createState() => _CompleteInfoPageState();
}

class _CompleteInfoPageState extends State<CompleteInfoPage> {
  var loader = AppLoader.bounceLargeColorLoaderController();
  int _state = 0;
  final formKey1 = GlobalKey<FormState>();
  final formKey2 = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<UserBloc, UserState>(
        listener: (context, state) async {
          if (state.isLoadingP == 1) {
            EasyLoading.show(
                dismissOnTap: true,
                status: 'En cours',
                maskType: EasyLoadingMaskType.black);
          } else if (state.isLoadingP == 3) {
            EasyLoading.dismiss();
            showError(state.eventMessage!, context);
          } else if (state.isLoadingP == 2) {
            log('------ododo');
            EasyLoading.dismiss();
            showSuccess('Mise a jour effectuee', context);
            // initLoad(context);

            // BlocProvider.of<UserBloc>(context)
            //   ..add(GetUserEvent())
            //   ..add(UserDataEvent());
            AutoRouter.of(context).pop();
            log('-----44--------*********');
          }
        },
        builder: (context, state) => DefaultTabController(
            length: 2,
            child: Scaffold(
                appBar: AppBar(
                  title: Text(
                    'Completer Mes Informations',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                  bottom: TabBar(
                    dividerHeight: 3,
                    indicatorColor: ColorsApp.second,
                    tabs: [
                      Tab(
                          icon: Icon(FontAwesomeIcons.list),
                          text: 'Entreprise'),
                      Tab(icon: Icon(FontAwesomeIcons.userTag), text: 'Client'),
                    ],
                  ),
                  centerTitle: true,
                  leading: InkWell(
                      onTap: () {
                        EasyLoading.dismiss();
                        AutoRouter.of(context).pop();
                      },
                      child: Container(
                        margin: EdgeInsets.zero,
                        // padding: EdgeInsets.all(5),
                        decoration: BoxDecoration(

                            // borderRadius: BorderRadius.circular(20),
                            ),
                        child: Icon(Icons.arrow_back_ios_new, size: 25.0),
                      )),
                  elevation: 0,
                  backgroundColor: Colors.transparent,
                ),
                body: TabBarView(children: [
                  Container(
                      margin: EdgeInsets.only(
                        top: kMarginY * 2,
                      ),
                      child: SingleChildScrollView(
                        child: Column(children: [
                          _state == 0
                              ? FirstStep(formKey: formKey1)
                              : SecondStep(formKey: formKey2),
                          Container(
                            // height: getHeight(context),
                            margin: EdgeInsets.symmetric(horizontal: kMarginX),
                            child: _state == 0
                                ? AppButton(
                                    size: MainAxisSize.max,
                                    // disabled:
                                    //     BlocProvider.of<UserBloc>(context).getState1(),
                                    text: 'Next'.tr(),
                                    onTap: () async {
                                      if (formKey1.currentState!.validate()) {
                                        setState(() {
                                          _state = 1;
                                        });
                                      }
                                    })
                                : Container(
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Container(
                                          width: getWith(context) * .45,
                                          child: AppButton(
                                              size: MainAxisSize.max,
                                              // bgColor: ColorsApp.primary,
                                              text: 'Back'.tr(),
                                              onTap: () async {
                                                setState(() {
                                                  _state = 0;
                                                });
                                              }),
                                        ),
                                        Container(
                                          width: getWith(context) * .45,
                                          child: AppButton(
                                              size: MainAxisSize.max,
                                              // disabled: BlocProvider.of<UserBloc>(context)
                                              //     .getState2(),
                                              text: 'Terminer'.tr(),
                                              onTap: () async {
                                                if (formKey2.currentState!
                                                    .validate()) {
                                                  context
                                                      .read<UserBloc>()
                                                      .add(AddInfoEntreprise());
                                                }
                                              }),
                                        ),
                                      ],
                                    ),
                                  ),
                          ),
                        ]),
                      )),
                  UserInfoPage()
                ]))));
  }
}
