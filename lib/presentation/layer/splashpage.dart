import 'package:Bcom/application/splash/splash_bloc.dart';
import 'package:Bcom/presentation/components/exportcomponent.dart';

import 'package:Bcom/utils/constants/assets.dart';

import '../../application/export_bloc.dart';
import '../../core.dart';

@RoutePage()
class SplashScreenPage extends StatefulWidget {
  static const String routeName = '/';
  const SplashScreenPage({super.key});

  @override
  State<SplashScreenPage> createState() => _SplashScreenPageState();
}

class _SplashScreenPageState extends State<SplashScreenPage> {
  @override
  Widget build(BuildContext context) {
    return BlocProvider<SplashBloc>(
        create: (_) => sl<SplashBloc>()
          ..add(SplashEvent.startLoading(
            context.locale.toString(),
          )),
        child: BlocBuilder<HomeBloc, HomeState>(
          builder: (context, stateH) => BlocConsumer<SplashBloc, SplashState>(
            listener: (context, state) {
              if (state is Loaded) {
                if (state.isLogin == true) {
                  initLoad(context);
                  //   if (stateH.user != null) {
                  //     if (stateH.user!.typeUser == 3 ||
                  //         stateH.user!.typeUser == '3') {
                  //       print(
                  //           '**------------stateH.user!.typeUser   ${stateH.user!.typeUser}');
                  //       initLoadTControl(context);
                  //     }
                  //     if (stateH.user!.typeUser == 4 ||
                  //         stateH.user!.typeUser == '4') {
                  //       print('**------------initLoadDevis');
                  //       initLoadDevis(context);
                  //     }
                  //   } else {
                  //     print(
                  //         '**------------stateH.user!.typeUser   ${stateH.user!.typeUser}');

                  //     print(
                  //         '**------------                AutoRouter.of(context).replace(state.route);');
                  //   }
                }

                print('**----');
                AutoRouter.of(context).replace(state.route);
              }
            },
            builder: (context, state) {
              return Scaffold(
                  backgroundColor: ColorsApp.white,
                  body: SingleChildScrollView(
                    child: Container(
                        alignment: Alignment.center,
                        child: new Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: <Widget>[
                              Container(
                                margin: EdgeInsets.only(
                                    top: getHeight(context) * .35),
                                height: getHeight(context) * .20,
                                decoration: BoxDecoration(
                                  image: DecorationImage(
                                    image: AssetImage(Assets.logo),
                                    // fit: BoxFit.cover,
                                  ),
                                ),
                              ),
                              Container(
                                  decoration: BoxDecoration(
                                    border: Border(top: BorderSide.none),
                                  ),
                                  padding: EdgeInsets.all(kMarginX),
                                  // margin: EdgeInsets.symmetric(
                                  //     vertical: kMarginY, horizontal: kMarginX * 3),
                                  child: Text(
                                    'Assist',
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                        fontSize: 15,
                                        fontWeight: FontWeight.w600),
                                  )),
                              Container(
                                  margin: EdgeInsets.only(
                                      top: getHeight(context) * .20),
                                  child: Container(
                                      height: 30,
                                      width: 30,
                                      child: CircularProgressIndicator(
                                        color: ColorsApp.second,
                                      )))
                            ])),
                  ));
            },
          ),
        ));
  }
}
