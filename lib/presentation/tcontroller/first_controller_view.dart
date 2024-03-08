import 'dart:async';

import 'package:Bcom/application/export_bloc.dart';
import 'package:Bcom/presentation/components/Widget/ShimmerData.dart';
import 'package:Bcom/presentation/components/Widget/controlBikerComponent.dart';
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

class FirstControllerView extends StatefulWidget {
  @override
  State<FirstControllerView> createState() => _FirstControllerViewState();
}

class _FirstControllerViewState extends State<FirstControllerView> {
  var time = 0;

  late Timer _timer;
  void _stopTimer() {
    // Cancel the timer
    _timer.cancel();
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<HomeBloc, HomeState>(
        builder: (context, state) => BlocConsumer<TcontrollerBloc,
                TcontrollerState>(
            listener: (context0, state0) {
              if (state0.isRequest == 0) {
                loader.open(context);
              } else if (state0.isRequest == 2) {
                AutoRouter.of(context).pop();
                showError('Une erreur est survenue', context);
              } else if (state0.isRequest == 1) {
                AutoRouter.of(context).pop();
                AutoRouter.of(context).pop();
                showSuccess('Operation effectuee avec succes', context);
              }
              // if (state0.isRequestNote == 0) {
              //   loader.open(context);
              // } else if (state0.isRequestNote == 2) {
              //   AutoRouter.of(context).pop();
              //   showError('Une erreur est survenue', context);
              // } else if (state0.isRequestNote == 1) {
              //   AutoRouter.of(context).pop();
              //   showSuccess('Operation effectuee avec succes', context);
              // }
              // }
            },
            builder: (context0, state0) => RefreshIndicator(
                color: ColorsApp.second,
                onRefresh: () => Future.delayed(Duration(seconds: 5), () {
                      BlocProvider.of<TcontrollerBloc>(context)
                          .add(GetListMissionTcontroller());
                    }),
                child: Container(
                    child: Column(children: [
                  HomeModuleComponent(
                    title: 'Listes de vos missions de control '.tr(),
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
                                                    ControlBikerComponent(
                                                      mission_control: state0
                                                          .list_mission![index],
                                                    ))))),
                  ),
                ])))));
  }
}
