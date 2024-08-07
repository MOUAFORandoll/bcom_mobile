// ignore_for_file: must_be_immutable

import 'package:Bcom/presentation/user/forgot_password_page.dart';
import 'package:Bcom/routes/app_router.gr.dart';
import 'package:Bcom/utils/Services/validators.dart';

import 'package:Bcom/application/export_bloc.dart';
import 'package:Bcom/presentation/components/exportcomponent.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';

@RoutePage()
class RegisterPage extends StatefulWidget {
  static const routeName = '/register';

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  var loader = AppLoader.bounceLargeColorLoaderController();

  TextEditingController phone = TextEditingController();
  TextEditingController email = TextEditingController();

  final formKey = GlobalKey<FormState>();

  TextEditingController password = TextEditingController();

  TextEditingController userName = TextEditingController();
  TextEditingController fullName = TextEditingController();

  TextEditingController re_password = TextEditingController();

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
              if (state.isLoadingReg == 1) {
                EasyLoading.show(
                    dismissOnTap: true,
                    status: 'En cours',
                    maskType: EasyLoadingMaskType.black);
              } else if (state.isLoadingReg == 3) {
                EasyLoading.dismiss();
                showError(state.authenticationMessage!, context);
              } else if (state.isLoadingReg == 2) {
                EasyLoading.dismiss();
                AutoRouter.of(context).replaceAll([AuthRoute()]);

                showSuccess(state.authenticationMessage!, context);

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
                                      controller: userName,
                                      isRequired: true,
                                      onChanged: (value) {},
                                      placeholder: 'labelusername'.tr(),
                                      validator: (value) {
                                        return Validators.isValidUsername(
                                            value!);
                                      },
                                    ),
                                  ),
                                  AppInput(
                                    controller: fullName,
                                    isRequired: true,
                                    onChanged: (value) {},
                                    placeholder: 'name'.tr(),
                                    validator: (value) {
                                      return Validators.isValidUsername(value!);
                                    },
                                  ),
                                  AppInput(
                                    controller: phone,
                                    isRequired: true,
                                    textInputType: TextInputType.phone,
                                    onChanged: (value) {},
                                    placeholder: 'labelphone'.tr(),
                                    validator: (value) {
                                      return Validators.usPhoneValid(value!);
                                    },
                                  ),
                                  AppInput(
                                    isRequired: true,
                                    controller: email,
                                    onChanged: (value) {},
                                    placeholder: 'labelemail'.tr(),
                                    validator: (value) {
                                      return Validators.isValidEmail(value!);
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
                                    margin: EdgeInsets.only(bottom: kMarginY),
                                  ),
                                  AppButton(
                                      size: MainAxisSize.max,
                                      // bgColor: ColorsApp.primary,
                                      text: 'regbtn'.tr(),
                                      onTap: () async {
                                        if (formKey.currentState!.validate()) {
                                          if (password.text !=
                                              re_password.text) {
                                            showError(
                                                'difpassword'.tr(), context);
                                            return;
                                          }
                                          context.read<UserBloc>().add(
                                              RegisterEvent(
                                                  userName: userName.text,
                                                  fullName: fullName.text,
                                                  email: email.text,
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
