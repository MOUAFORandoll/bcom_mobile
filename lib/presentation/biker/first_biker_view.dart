import 'dart:async';

import 'package:Bcom/application/export_bloc.dart';
import 'package:Bcom/presentation/components/Widget/ShimmerData.dart';
import 'package:Bcom/presentation/components/Widget/k_home_info.dart';
import 'package:Bcom/presentation/components/Widget/missionsComponent.dart';
import 'package:Bcom/routes/app_router.gr.dart';
import 'package:Bcom/utils/constants/assets.dart';
import 'package:cron/cron.dart';
import 'package:flutter_svg/flutter_svg.dart';
import '../components/exportcomponent.dart';
import 'package:Bcom/presentation/components/Widget/HomeModuleComponent.dart';
import 'package:Bcom/presentation/components/Widget/icon_svg.dart';

export 'package:Bcom/application/home/home_bloc.dart';

var loader = AppLoader.bounceLargeColorLoaderController();

class FirstBikerView extends StatefulWidget {
  @override
  State<FirstBikerView> createState() => _FirstBikerViewState();
}

class _FirstBikerViewState extends State<FirstBikerView> {
  var time = 0;

  late Timer _timer;
  void _stopTimer() {
    // Cancel the timer
    _timer.cancel();
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<HomeBloc, HomeState>(
        builder: (context, state) => BlocConsumer<BikerBloc, BikerState>(
            listener: (context0, state0) {
              if (state0.isRequest == 0) {
                loader.open(context);
              } else if (state0.isRequest == 2) {
                AutoRouter.of(context).pop();
                showError('Une erreur est survenue', context);
              } else if (state0.isRequest == 1) {
                AutoRouter.of(context).pop();
                AutoRouter.of(context).pop();
              }

              // if (state0.sendPosition != null) {
              //   if (state0.sendPosition!) {
              //     // Exécute périodiquement toutes les 1 secondes
              //     _timer = Timer.periodic(Duration(minutes: 1), (Timer t) {
              //       BlocProvider.of<BikerBloc>(context).add(IncrementTimer());
              //       print('Exécution chaque time');

              //       // Vérifie si le temps est un multiple de 60
              //       if ((state0.time! % 300) == 0) {
              //         BlocProvider.of<BikerBloc>(context)
              //             .add(SavePositionForMissionBiker());
              //         print('Position envoyée');
              //       }
              //     });
              //   } else {
              //     _stopTimer();
              //     // Une fois que sendPosition devient faux, affiche "Mission Terminée"
              //     showSuccess('Mission Terminée', context);
              //     print('Mission Terminée');
              //   }
              // }
            },
            builder: (context0, state0) => RefreshIndicator(
                color: ColorsApp.second,
                onRefresh: () => Future.delayed(Duration(seconds: 5), () {
                      BlocProvider.of<BikerBloc>(context)
                          .add(GetListMissionBiker());
                    }),
                child: Container(
                    child: Column(children: [
                  HomeModuleComponent(
                    title: 'Listes des missions disponibles '.tr(),
                    image: Assets.shop2,
                    onTap: () => print(''),
                  ),
                  Container(
                    margin: EdgeInsets.symmetric(horizontal: kMarginX / 2)
                        .add(EdgeInsets.only(top: kMarginY)),
                    child: SingleChildScrollView(
                        child: state0.load_list_mission == 0
                            ? ShimmerData()
                            : state0.load_list_mission == 2
                                ? Text('Error')
                                : state0.list_mission!.length == 0
                                    ? Container()
                                    : Container(
                                        child: SingleChildScrollView(
                                            child: ListView.builder(
                                                physics:
                                                    NeverScrollableScrollPhysics(),
                                                shrinkWrap: true,
                                                itemCount:
                                                    state0.list_mission!.length,
                                                // controller: state0,
                                                itemBuilder: (_, index) =>
                                                    MissionsComponent(
                                                      mission: state0
                                                          .list_mission![index],
                                                    ))))),
                  ),
                ])))));
  }
}
