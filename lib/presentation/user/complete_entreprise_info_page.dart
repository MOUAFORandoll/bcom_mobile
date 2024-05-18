// ignore_for_file: must_be_immutable

import 'package:Bcom/application/database/database_cubit.dart';

import 'package:Bcom/application/export_bloc.dart';
import 'package:Bcom/presentation/components/exportcomponent.dart';

import 'package:Bcom/core.dart';
import 'package:Bcom/utils/Services/validators.dart';
import 'package:dio/dio.dart';
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

  TextEditingController phone = TextEditingController();

  final formKey = GlobalKey<FormState>();

  TextEditingController numRegCommerce = TextEditingController();
  TextEditingController titre = TextEditingController();

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
                  child: Column(children: [
                    SingleChildScrollView(
                      child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Container(
                              margin: EdgeInsets.only(
                                top: kMarginY,
                              ),
                              child: Text(
                                'Renseignez nous les informations de votre entreprise'
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
                                      controller: titre,
                                      onChanged: (value) {},
                                      placeholder:
                                          'Le nom de votre entreprise'.tr(),
                                      validator: (value) {
                                        return Validators.isValidUsername(
                                            value!);
                                      },
                                    ),
                                  ),
                                  AppInput(
                                    controller: numRegCommerce,
                                    onChanged: (value) {},
                                    placeholder:
                                        'Le numero au registre du commerce de votre entreprise'
                                            .tr(),
                                    validator: (value) {
                                      return Validators.isValidUsername(value!);
                                    },
                                  ),
                                ],
                              ),
                            ),
                          ]),
                    ),
                    Container(
                      child: AppButton(
                          size: MainAxisSize.max,
                          // bgColor: ColorsApp.primary,
                          text: 'Terminer'.tr(),
                          onTap: () async {
                            if (titre.text.isEmpty ||
                                numRegCommerce.text.isEmpty) {
                              showError(
                                  'Veuillez remplir tous les champs', context);
                            } else {
                              print('ok');

                              final DatabaseCubit database =
                                  sl.get<DatabaseCubit>();
                              var key = await database.getKey();
                              print(key);
                              FormData formData = FormData.fromMap({
                                'titre': titre.text,
                                'numRegCommerce': numRegCommerce.text,
                                'keySecret': key
                              });

                              print(formData);
                              context.read<UserBloc>().add(AddInfoEntreprise(
                                  titre: titre.text,
                                  numRegCommerce: numRegCommerce.text));
                              // BlocProvider.of<HomeBloc>(context)
                              //     .add(UserDataEvent());
                            }
                          }),
                    )
                  ]))
            ])));
  }
}
