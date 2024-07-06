// ignore_for_file: must_be_immutable

import 'package:Bcom/application/export_bloc.dart';
import 'package:Bcom/presentation/components/exportcomponent.dart';

import 'package:Bcom/core.dart';
import 'package:Bcom/utils/Services/validators.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';

class UserInfoPage extends StatelessWidget {
  var formKey = GlobalKey<FormState>();

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
        builder: (context, state) => Form(
            key: formKey,
            child: Container(
                margin: EdgeInsets.only(
                  top: kMarginY * 2,
                ).add(EdgeInsets.symmetric(horizontal: kMarginX)),
                child: Column(children: [
                  Container(
                    margin: EdgeInsets.only(
                      top: kMarginY,
                    ),
                    child: Text(
                      'Renseignez vos informations personnelles'.tr(),
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
                            controller: state.nuiUser!,
                            onChanged: (value) {
                              formKey.currentState!.validate();
                            },
                            placeholder: 'NUI USER',
                            validator: (value) {
                              return Validators.isValidUsername(value!);
                            },
                          ),
                        ),
                        AppInput(
                          controller: state.rccaAA!,
                          onChanged: (value) {
                            formKey.currentState!.validate();
                          },
                          placeholder: 'rccaAA'.tr(),
                          validator: (value) {
                            return Validators.isValidEmail(value!);
                          },
                        ),
                        AppInput(
                          controller: state.uaya!,
                          onChanged: (value) {
                            formKey.currentState!.validate();
                          },
                          placeholder: 'uaya'.tr(),
                          validator: (value) {
                            return Validators.usPhoneValid(value!);
                          },
                        ),
                      ],
                    ),
                  ),
                  Container(
                    width: getWith(context),
                    child: AppButton(
                        size: MainAxisSize.max,
                        // disabled: BlocProvider.of<UserBloc>(context)
                        //     .getState2(),
                        text: 'Terminer'.tr(),
                        onTap: () async {
                          if (formKey.currentState!.validate()) {
                            context.read<UserBloc>().add(AddInfoEntreprise());
                          }
                        }),
                  ),
                ]))));
  }
}
