// ignore_for_file: must_be_immutable

import 'dart:developer';

import 'package:Bcom/application/export_bloc.dart';
import 'package:Bcom/presentation/components/exportcomponent.dart';

import 'package:Bcom/core.dart';
import 'package:Bcom/presentation/home/presentation_page.dart';
import 'package:Bcom/presentation/user/complete_info_steps/first_steps.dart';
import 'package:Bcom/presentation/user/complete_info_steps/second_steps.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';

@RoutePage()
class CompleteEntrepriseInfoPage extends StatefulWidget {
  @override
  State<CompleteEntrepriseInfoPage> createState() =>
      _CompleteEntrepriseInfoPageState();
}

class _CompleteEntrepriseInfoPageState
    extends State<CompleteEntrepriseInfoPage> {
  var loader = AppLoader.bounceLargeColorLoaderController();
  int _state = 0;
  final formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<UserBloc, UserState>(
        listener: (context, state) async {
          if (state.isLoading == 1) {
            EasyLoading.show(
                dismissOnTap: true,
                status: 'En cours',
                maskType: EasyLoadingMaskType.black);
          } else if (state.isLoading == 3) {
            EasyLoading.dismiss();
            showError(state.eventMessage!, context);
          } else if (state.isLoading == 2) {
            showSuccess('Mise a jour effectuee', context);
            initLoad(context);

            abonnement(context);
            BlocProvider.of<UserBloc>(context)
              ..add(GetUserEvent())
              ..add(UserDataEvent());
            await Future.delayed(Duration(seconds: 20));
            log('-----attend 11--------*********ss');
            BlocProvider.of<UserBloc>(context)
              ..add(GetUserEvent())
              ..add(UserDataEvent());
            EasyLoading.dismiss();

            abonnement(context);

            log('-----44--------*********');
          }
        },
        builder: (context, state) => Container(
                child: Column(children: [
              _state == 0 ? FirstStep() : SecondStep(),
              Container(
                // height: getHeight(context),
                margin: EdgeInsets.symmetric(horizontal: kMarginX),
                child: _state == 0
                    ? AppButton(
                        size: MainAxisSize.max,
                        disabled:
                            BlocProvider.of<UserBloc>(context).getState1(),
                        text: 'Next'.tr(),
                        onTap: () async {
                          setState(() {
                            _state = 1;
                          });
                        })
                    : Container(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
                                  disabled: BlocProvider.of<UserBloc>(context)
                                      .getState2(),
                                  text: 'Terminer'.tr(),
                                  onTap: () async {
                                    context.read<UserBloc>()
                                      ..add(AddInfoClient())
                                      ..add(GetUserEvent())
                                      ..add(UserDataEvent());
                                  }),
                            ),
                          ],
                        ),
                      ),
              ),
              state.isLoading == 1
                  ? Shimmer.fromColors(
                      baseColor: ColorsApp.grey,
                      highlightColor: ColorsApp.primary,
                      child: Container(
                        child: Row(children: [
                          Container(
                              child: Icon(
                            Icons.location_on,
                            color: ColorsApp.white,
                            size: 25,
                          )),
                          Container(
                              child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                Container(
                                    child: Text('En cours de chargement',
                                        style: TextStyle(
                                            color: ColorsApp.white,
                                            fontSize: 8,
                                            fontWeight: FontWeight.normal))),
                              ])),
                        ]),
                      ))
                  : InkWell(
                      onTap: () {
                        BlocProvider.of<UserBloc>(context)
                          ..add(GetUserEvent())
                          ..add(UserDataEvent());
                        BlocProvider.of<AbonnementBloc>(context)
                            .add(UserAbonnement());
                      },
                      child: Container(
                        margin: EdgeInsets.only(top: 10),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Container(
                                child: Text('Rafraichir mes informations',
                                    style: TextStyle(
                                      fontWeight: FontWeight.w700,
                                      fontSize: 16,
                                    ))),
                            Icon(Icons.refresh, size: 30),
                          ],
                        ),
                      ),
                    ),
            ])));
  }
}
