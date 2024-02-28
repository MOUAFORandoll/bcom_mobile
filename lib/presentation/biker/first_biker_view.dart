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

              if (state0.sendPosition != null) {
                if (state0.sendPosition!) {
                  // print('-----44--------*********');
                  Timer.periodic(Duration(minutes: 2), (Timer t) {
                    print('Exécution chaque time');
                    if (state0.sendPosition == true) {
                      BlocProvider.of<BikerBloc>(context)
                          .add(SavePositionForMissionBiker());
                      print('Position envoye');
                    }
                  });
                }
                if (state0.sendPosition! == false) {
                  print('Stoppp chaque time');

                  showSuccess('Mission Terminee', context);
                }
              }
            },
            builder: (context0, state0) => RefreshIndicator(
                color: ColorsApp.second,
                onRefresh: () => Future.delayed(Duration(seconds: 5), () {
                      BlocProvider.of<BikerBloc>(context)
                          .add(GetListMissionBiker());
                    }),
                child: Container(
                    child: CustomScrollView(slivers: [
                  SliverAppBar(
                    automaticallyImplyLeading: false,
                    leading: Builder(builder: (context) {
                      return InkWell(
                          child: Container(
                            width: 10,
                            height: 10,
                            child: SvgPicture.asset(Assets.menu,
                                color: ColorsApp.white, fit: BoxFit.none),
                          ),
                          onTap: () => Scaffold.of(context).openDrawer());
                    }),
                    title: Text(
                      'Bcom',
                      overflow: TextOverflow.ellipsis,
                      style: TextStyle(
                          color: ColorsApp.white,
                          fontFamily: 'Lato',
                          fontSize: 20,
                          fontWeight: FontWeight.w600),
                    ),
                    centerTitle: true,
                    // flexibleSpace: Container(
                    //   margin:
                    //       EdgeInsets.symmetric(horizontal: getWith(context) / 2.5,
                    //       vertical: getHeight(context)/2.5),
                    //   child: Text(
                    //     'Bcom',
                    //     overflow: TextOverflow.ellipsis,
                    //     style: TextStyle(
                    //         color: ColorsApp.white,
                    //         fontFamily: 'Lato',
                    //         fontSize: 20,
                    //         fontWeight: FontWeight.w600),
                    //   ),
                    // ),
                    actions: [
                      InkWell(
                          child: Container(
                              margin: EdgeInsets.only(right: kMarginX * 2),
                              child: SvgIcon(
                                icon: Assets.bell,
                                color: ColorsApp.white,
                              )),
                          onTap: () {
                            // Get.toNamed(AppLinks.NOTIFICATION);
                          }),
                    ],
                    bottom: PreferredSize(
                      preferredSize: Size.fromHeight(getHeight(context) * .10),
                      child: Container(
                        margin: EdgeInsets.symmetric(
                          horizontal: kMarginX,
                        ).add(EdgeInsets.only(
                          bottom: kMarginY * 3,
                          right: kMarginX,
                        )),
                        child: KHomeInfo(user: state.user),
                      ),
                    ),
                    pinned: true,
                    expandedHeight: getHeight(context) * .22,
                    elevation: 10.0,
                    backgroundColor: ColorsApp.second, //
                  ),
                  SliverToBoxAdapter(
                      child: Container(
                          height: getHeight(context),
                          padding: EdgeInsets.symmetric(
                              vertical: kMarginY, horizontal: kMarginX),
                          child: Column(children: [
                            HomeModuleComponent(
                              title: 'Listes des missions disponibles '.tr(),
                              image: Assets.shop2,
                              onTap: () => print(''),
                            ),
                            Expanded(
                                child: SingleChildScrollView(
                                    child: state0.load_list_mission == 0
                                        ? ShimmerData()
                                        : state0.load_list_mission == 2
                                            ? Text('Error')
                                            : state0.list_mission!.length == 0
                                                ? Container()
                                                : Container(
                                                    child:
                                                        SingleChildScrollView(
                                                            child: ListView
                                                                .builder(
                                                                    physics:
                                                                        NeverScrollableScrollPhysics(),
                                                                    shrinkWrap:
                                                                        true,
                                                                    itemCount: state0
                                                                        .list_mission!
                                                                        .length,
                                                                    // controller: state0,
                                                                    itemBuilder: (_,
                                                                            index) =>
                                                                        MissionsComponent(
                                                                          mission:
                                                                              state0.list_mission![index],
                                                                        )))))),
                          ])))
                ])))));
  }
/* 
  openMissionModal(context) => showDialog(
      context: context,
      barrierDismissible: false,
      builder: (context) => BlocBuilder<BikerBloc, BikerState>(
          builder: (context, state) => AlertDialog(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10.0),
              ),
              title: Container(
                  child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                      width: getWith(context) * .6,
                      child: Text('Mission en cours'.tr())),
                ],
              )),
              actions: [
                Container(
                    margin: EdgeInsets.only(bottom: kMarginY),
                    padding: EdgeInsets.symmetric(
                        horizontal: kMarginX, vertical: kMarginY),
                    child: AppButton(
                      size: MainAxisSize.max,
                      bgColor: ColorsApp.second,
                      text: 'Arreter la mission',
                      onTap: () {
                        BlocProvider.of<BikerBloc>(context)
                            .add(EndMissionBiker());
                      },
                    ))
              ],
              content: Container(
                  child: SingleChildScrollView(
                      child: Column(children: [
                Container(
                  child: Text('${state.counter}'),
                )
              ]))))));
 */
}
