// ignore_for_file: must_be_immutable

import 'package:Bcom/presentation/user/forgot_password_page.dart';
import 'package:Bcom/routes/app_router.gr.dart';
import 'package:Bcom/utils/Services/validators.dart';

import 'package:Bcom/application/export_bloc.dart';
import 'package:Bcom/presentation/components/exportcomponent.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';

import 'package:Bcom/core.dart';

@RoutePage()
class RegisterPage extends StatefulWidget {
  static const routeName = '/register';

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  var loader = AppLoader.bounceLargeColorLoaderController();

  TextEditingController phone = TextEditingController();

  final formKey = GlobalKey<FormState>();

  TextEditingController password = TextEditingController();

  TextEditingController name = TextEditingController();

  TextEditingController re_password = TextEditingController();

  int _typeCompte = 3;

  @override
  Widget build(BuildContext context) {
    return PopScope(
        onPopInvoked: (value) {
          EasyLoading.dismiss();
          AutoRouter.of(context).pop();
        },
        child: Scaffold(
          appBar: AppBar(
            title: Text(
              'regbtn'.tr(),
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 13,
                fontWeight: FontWeight.w700,
              ),
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
          body: BlocConsumer<UserBloc, UserState>(
            listener: (context, state) {
              if (state.isLoading == 1) {
                EasyLoading.show(
                    status: 'En cours', maskType: EasyLoadingMaskType.black);
              } else if (state.isLoading == 3) {
                EasyLoading.dismiss();
                showError(state.authenticationFailedMessage!, context);
              } else if (state.isLoading == 2) {
                EasyLoading.dismiss();
                AutoRouter.of(context).replaceAll([HomeRoute()]);

                showSuccess('Connecte', context);
                initLoad(context);
                print('-----44--------*********');
              }
            },
            builder: (context, state) {
              // if (state is InitialDataState) {
              //   InitialDataState _userState = state as InitialDataState;

              return SingleChildScrollView(
                child: Container(
                  margin: EdgeInsets.symmetric(horizontal: kMarginX),
                  child: Form(
                    key: formKey,
                    child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Container(
                            margin: EdgeInsets.only(
                              top: kMarginY,
                            ),
                            child: Text(
                              'regTitle'.tr(),
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
                                      controller: name,
                                      onChanged: (value) {},
                                      placeholder: 'labelname'.tr(),
                                      validator: (value) {
                                        return Validators.isValidUsername(
                                            value!);
                                      },
                                    ),
                                  ),
                                  AppInput(
                                    controller: phone,
                                    onChanged: (value) {},
                                    placeholder: 'labelphone'.tr(),
                                    validator: (value) {
                                      return Validators.usPhoneValid(value!);
                                    },
                                  ),
                                  AppInputPassword(
                                    controller: password,
                                    placeholder: 'labelpassword'.tr(),
                                    obscureText: true,
                                    validator: (value) {
                                      //print(value);
                                      return Validators.required(
                                          'Mot de passe', value!);
                                    },
                                  ),
                                  AppInputPassword(
                                    controller: re_password,
                                    placeholder: 'labelrpassword'.tr(),
                                    obscureText: true,
                                    validator: (value) {
                                      //print(value);
                                      return Validators.required(
                                          'Mot de passe', value!);
                                    },
                                  ),
                                  Container(
                                    alignment: Alignment.centerLeft,
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Row(
                                          children: [
                                            Radio(
                                              value: 4,
                                              activeColor: ColorsApp.second,
                                              groupValue: _typeCompte,
                                              onChanged: (int? value) {
                                                setState(() {
                                                  _typeCompte = value!;
                                                });
                                                // BlocProvider.of<AlerteBloc>(
                                                //         context)
                                                //     .add(FieldChangedAlerte(
                                                //         'sexeUser', '0'));
                                              },
                                            ),
                                            Text('biker_account'.tr()),
                                          ],
                                        ),
                                        Row(
                                          children: [
                                            Radio(
                                              value: 3,
                                              activeColor: ColorsApp.second,
                                              groupValue: _typeCompte,
                                              onChanged: (int? value) {
                                                setState(() {
                                                  _typeCompte = value!;
                                                });
                                                // BlocProvider.of<AlerteBloc>(
                                                //         context)
                                                //     .add(FieldChangedAlerte(
                                                //         'sexeUser', '1'));
                                              },
                                            ),
                                            Text('ct_account'.tr()),
                                          ],
                                        ),
                                      ],
                                    ),
                                  ),
                                  Container(
                                    margin: EdgeInsets.only(bottom: kMarginY),
                                    child: Row(
                                      mainAxisAlignment: MainAxisAlignment.end,
                                      children: [
                                        TextButton(
                                          onPressed: () =>
                                              AutoRouter.of(context).pushNamed(
                                                  ForgotPasswordPage.routeName),
                                          child: Text('forgotpass'.tr(),
                                              style: TextStyle(
                                                fontFamily: 'Lato',
                                                color: ColorsApp.second,
                                              )),
                                        )
                                      ],
                                    ),
                                  ),
                                  AppButton(
                                      size: MainAxisSize.max,
                                      // bgColor: ColorsApp.primary,
                                      text: 'regbtn'.tr(),
                                      onTap: () async {
                                        if (formKey.currentState!.validate()) {
                                          context.read<UserBloc>().add(
                                              RegisterEvent(
                                                  name: name.text,
                                                  typeCompte: _typeCompte,
                                                  phone: phone.text,
                                                  password: password.text,
                                                  re_password:
                                                      re_password.text));
                                        }
                                      }),
                                ],
                              )),
                        ]),
                  ),
                ),
              );
              // } else {
              //   return Container();
              // }
            },
          ),
        ));
  }
}
