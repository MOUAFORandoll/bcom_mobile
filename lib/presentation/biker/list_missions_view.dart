import 'package:Bcom/presentation/biker/mission_page.dart';
import 'package:Bcom/routes/app_router.gr.dart';

import '../components/exportcomponent.dart';
import 'package:Bcom/presentation/components/Widget/icon_svg.dart';

import 'package:Bcom/utils/constants/assets.dart';

import 'package:flutter_svg/svg.dart';
import 'package:Bcom/presentation/components/Widget/EmptyMissionComponent.dart';
import 'package:Bcom/presentation/components/Widget/ShimmerData.dart';
import 'package:Bcom/presentation/components/Widget/missionsUserComponent.dart';
import 'package:Bcom/presentation/components/exportcomponent.dart';
import 'package:Bcom/application/export_bloc.dart';
import 'package:Bcom/presentation/components/Widget/HomeModuleComponent.dart';

var loader = AppLoader.bounceLargeColorLoaderController();

// ignore: must_be_immutable
class ListMissionsView extends StatelessWidget {
  ScrollController _scrollController = new ScrollController();

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<BikerBloc, BikerState>(
        listener: (context, state) {
          // if (state.load_list_mission_session == 0) {
          //     EasyLoading.show(
                    // status: 'En cours', maskType: EasyLoadingMaskType.black);
          // } else if (state.load_list_mission_session == 2) {
          //   AutoRouter.of(context).pop();
          //   showError('Une erreur est survenue, veuillez reeessayer', context);
          // } else if (state.load_list_mission_session == 1) {
          //   AutoRouter.of(context).push(MissionSessionRoute());
          // }
        },
        builder: (context, state) => SafeArea(
            child: RefreshIndicator(
                color: ColorsApp.second,
                onRefresh: () => Future.delayed(Duration(seconds: 5), () {
                      BlocProvider.of<BikerBloc>(context)
                          .add(GetListMissionBikerEffectue());
                    }),
                child: Container(
                    child: Column(children: [
                  HomeModuleComponent(
                    title: 'yList'.tr() + ' Effectuee',
                    image: Assets.shop2,
                    onTap: () => print(''),
                  ),
                  Container(
                      height: getHeight(context),
                      padding: EdgeInsets.symmetric(
                          vertical: kMarginY, horizontal: kMarginX),
                      child: SingleChildScrollView(
                          child: state.load_list_mission_done == 0
                              ? ShimmerData()
                              : state.list_mission_done == 2
                                  ? Text('Error')
                                  : state.list_mission!.length == 0
                                      ? EmptyMissionComponent()
                                      : ListView.builder(
                                          physics:
                                              NeverScrollableScrollPhysics(),
                                          shrinkWrap: true,
                                          itemCount:
                                              state.list_mission_done!.length,
                                          // controller: state,
                                          itemBuilder: (_, index) =>
                                              MissionsUserComponent(
                                                mission: state
                                                    .list_mission_done![index],
                                              )))),
                ])))));
  }
}
