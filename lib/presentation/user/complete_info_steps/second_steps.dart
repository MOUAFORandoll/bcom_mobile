// ignore_for_file: must_be_immutable
 

import 'package:Bcom/application/export_bloc.dart';
import 'package:Bcom/presentation/components/exportcomponent.dart';

import 'package:Bcom/core.dart';
import 'package:Bcom/utils/Services/validators.dart'; 
import 'package:flutter_easyloading/flutter_easyloading.dart';

class SecondStep extends StatelessWidget {
  final formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<UserBloc, UserState>(
        listener: (context, state) {
          if (state.isLoading == 1) {
            EasyLoading.show(
                dismissOnTap: true,
                status: 'En cours',
                maskType: EasyLoadingMaskType.black);
          } else if (state.isLoading == 3) {
            EasyLoading.dismiss();
            showError(state.eventMessage!, context);
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
                  // height: getHeight(context),
                  margin: EdgeInsets.symmetric(horizontal: kMarginX),
                  child: Column(children: [
                    /* Expanded(
                      child: */
                    Container(
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
                                  'Renseignez nous les informations legales de votre entreprise'
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
                                margin: EdgeInsets.symmetric(
                                  vertical: kMarginY / 2,
                                ),
                                child: Column(
                                  // mainAxisAlignment:
                                  //     MainAxisAlignment.center,
                                  children: [
                                    Padding(
                                      padding: EdgeInsets.only(
                                        top: kMarginY,
                                      ),
                                      child: AppInput(
                                        controller: state.city!,
                                        onChanged: (value) {},
                                        placeholder: 'labelcityEntreprise'.tr(),
                                        validator: (value) {
                                          return Validators.isValidUsername(
                                              value!);
                                        },
                                      ),
                                    ),
                                    AppInput(
                                      controller: state.country!,
                                      onChanged: (value) {},
                                      placeholder:
                                          'labelcountryEntreprise'.tr(),
                                      validator: (value) {
                                        return Validators.isValidUsername(
                                            value!);
                                      },
                                    ),
                                    AppInput(
                                      controller: state.numImpot!,
                                      onChanged: (value) {},
                                      placeholder: 'labelimpotEntreprise'.tr(),
                                      validator: (value) {
                                        return Validators.isValidUsername(
                                            value!);
                                      },
                                    ),
                                    AppInput(
                                      controller: state.numContribuable!,
                                      onChanged: (value) {},
                                      placeholder:
                                          'labelcontribEntreprise'.tr(),
                                      validator: (value) {
                                        return Validators.isValidUsername(
                                            value!);
                                      },
                                    ),
                                    AppInput(
                                      controller: state.registreCommerce!,
                                      onChanged: (value) {},
                                      placeholder: 'labelregEntreprise'.tr(),
                                      validator: (value) {
                                        return Validators.isValidUsername(
                                            value!);
                                      },
                                    ),
                                  ],
                                ),
                              ),
                            ]),
                      ),
                    ),
                  ]))
            ])));
  }
}
