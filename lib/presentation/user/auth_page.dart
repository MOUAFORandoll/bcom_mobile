import 'package:Bcom/presentation/user/forgot_password_page.dart';
import 'package:Bcom/presentation/user/register_page.dart';
import 'package:Bcom/utils/Services/validators.dart';
import 'package:Bcom/application/export_bloc.dart';
import 'package:Bcom/presentation/components/exportcomponent.dart';

import 'package:Bcom/core.dart';
import 'package:Bcom/routes/app_router.gr.dart';
import 'package:Bcom/utils/constants/assets.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';

@RoutePage()
class AuthPage extends StatefulWidget {
  static const routeName = '/auth';
  const AuthPage({super.key});

  @override
  State<AuthPage> createState() => _AuthPageState();
}

class _AuthPageState extends State<AuthPage> {
  var loader = AppLoader.bounceLargeColorLoaderController();

  TextEditingController userName = TextEditingController();

  TextEditingController password = TextEditingController();

  final formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocConsumer<UserBloc, UserState>(
        listener: (context, state) async {
          if (state.isLoading == 1) {
            EasyLoading.show(
                dismissOnTap: true,
                status: 'En cours',
                maskType: EasyLoadingMaskType.black);
          } else if (state.isLoading == 3) {
            EasyLoading.dismiss();
            showError(state.authenticationMessage!, context);
          } else if (state.isLoading == 2) {
            await initLoad(context);
            AutoRouter.of(context).replaceAll([HomeRoute()]);
            showSuccess(state.authenticationMessage!, context);
            EasyLoading.dismiss();
            print('-----44--------*********');
          }
        },
        builder: (context, state) {
          return CustomScrollView(slivers: [
            SliverAppBar(
              automaticallyImplyLeading: false,

              title: Text(
                'Bcom Assist',
                overflow: TextOverflow.ellipsis,
                style: TextStyle(
                    color: ColorsApp.white,
                    fontFamily: 'Lato',
                    fontSize: 15,
                    fontWeight: FontWeight.w600),
              ),
              centerTitle: true,

              bottom: PreferredSize(
                preferredSize: Size.fromHeight(getHeight(context) * .35),
                child: Container(
                  // margin: EdgeInsets.symmetric(
                  //   horizontal: kMarginX,
                  // ).add(EdgeInsets.only(
                  //   bottom: kMarginY * 3,
                  //   right: kMarginX,
                  // )),
                  height: getHeight(context) * .40,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage(Assets.onb1), fit: BoxFit.cover),
                  ),
                ),
              ),

              expandedHeight: getHeight(context) * .40,
              elevation: 10.0,
              // backgroundColor:
              //     ColorsApp.primary,
            ),
            SliverToBoxAdapter(
                child: SingleChildScrollView(
              child: Container(
                margin: EdgeInsets.symmetric(
                    horizontal: kMarginX / 2, vertical: kMarginY),
                child: Form(
                  key: formKey,
                  child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          margin: EdgeInsets.symmetric(
                            horizontal: kMarginX,
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                margin: EdgeInsets.only(
                                  top: kMarginY,
                                ),
                                child: Text(
                                  'Connectez-vous'.tr(),
                                  style: TextStyle(
                                    fontSize: 18,
                                    // color: ColorsApp.orange,
                                    fontWeight: FontWeight.w700,
                                  ),
                                ),
                              ),
                              Container(
                                  margin: EdgeInsets.only(
                                    bottom: kMarginY,
                                  ),
                                  child: Text(
                                    'logTilte'.tr(),
                                    style: TextStyle(
                                      color: ColorsApp.primary.withOpacity(.3),
                                      fontSize: 12,
                                      fontFamily: 'Lato',
                                    ),
                                  )),
                            ],
                          ),
                        ),
                        Container(
                            margin: EdgeInsets.only(
                                top: kMarginY, bottom: kMarginY),
                            child: Column(
                              children: [
                                Padding(
                                  padding: EdgeInsets.symmetric(
                                    vertical: kMarginY * 2,
                                  ),
                                  child: AppInput(
                                    controller: userName,
                                    onChanged: (value) {},
                                    placeholder: 'labelusername'.tr(),
                                    validator: (value) {
                                      return Validators.required(
                                          'labelusername', value!);
                                    },
                                  ),
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
                                Container(
                                  margin: EdgeInsets.only(bottom: kMarginY),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.end,
                                    children: [
                                      TextButton(
                                        onPressed: () => AutoRouter.of(context)
                                            .pushNamed(
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
                                    // loading: _userState.isLoading,
                                    // bgColor: ColorsApp.primary,
                                    text: 'logbtn'.tr(),
                                    onTap: () async {
                                      print({
                                        'password': password.text,
                                        'userName': userName.text,
                                      });

                                      if (formKey.currentState!.validate()) {
                                        context
                                            .read<UserBloc>()
                                            .add(SignInEvent(
                                              password: password.text,
                                              userName: userName.text,
                                            ));
                                      }
                                    }),
                                InkWell(
                                    onTap: () => AutoRouter.of(context)
                                        .pushNamed(RegisterPage.routeName),
                                    child: Container(
                                      margin:
                                          EdgeInsets.only(top: kMarginX * 3),
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          Text('regbtn'.tr(),
                                              style: TextStyle(
                                                  fontFamily: 'Lato',
                                                  color: ColorsApp.second,
                                                  fontSize: 15)),
                                          Icon(
                                            Icons.keyboard_arrow_right_outlined,
                                            color: ColorsApp.second,
                                          )
                                        ],
                                      ),
                                    )),
                              ],
                            )),
                      ]),
                ),
              ),
            ))
          ]);
        },
      ),
    );
  }
}
