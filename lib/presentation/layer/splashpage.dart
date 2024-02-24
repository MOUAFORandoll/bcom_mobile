import 'package:Bcom/application/splash/splash_bloc.dart';
import 'package:Bcom/presentation/components/exportcomponent.dart';

import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:Bcom/utils/constants/assets.dart';
import 'package:flutter_svg/flutter_svg.dart';

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
                  if (stateH.user != null) {
                    if (stateH.user!.typeUser == 3) {
                      initLoadTControl(context);
                    }
                    if (stateH.user!.typeUser == 4) {
                      initLoadBiker(context);
                    }
                  }
                }
                // final HomeBloc h = BlocProvider.of<HomeBloc>(context);
                // h.add(UserDataEvent());
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
                                      top: getHeight(context) * .45),
                                  child: SvgPicture.asset(
                                    Assets.babana,
                                    color: ColorsApp.second,
                                  )),
                              Container(
                                  margin: EdgeInsets.only(
                                      top: getHeight(context) * .25),
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
