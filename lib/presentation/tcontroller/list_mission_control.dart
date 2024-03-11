import 'package:Bcom/presentation/biker/mission_page.dart';
import 'package:Bcom/presentation/components/Widget/controlBikerComponent.dart';
import 'package:Bcom/presentation/components/Widget/controlDoneBikerComponent.dart';
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
import 'package:flutter_easyloading/flutter_easyloading.dart';

var loader = AppLoader.bounceLargeColorLoaderController();

// ignore: must_be_immutable
class ListMissionsControlView extends StatelessWidget {
  ScrollController _scrollController = new ScrollController();

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<TcontrollerBloc, TcontrollerState>(
        listener: (context0, state0) {
          // if (state0.isRequestNote == 0) {
          //     EasyLoading.show(
                    // status: 'En cours', maskType: EasyLoadingMaskType.black);
          // } else if (state0.isRequestNote == 2) {
          //   AutoRouter.of(context).pop();
          //   showError('Une erreur est survenue', context);
          // } else if (state0.isRequestNote == 1) {
          //   AutoRouter.of(context).pop();
          //   showSuccess('Operation effectuee avec succes', context);
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
                                  : state.list_mission_done!.length == 0
                                      ? EmptyMissionComponent()
                                      : ListView.builder(
                                          physics:
                                              NeverScrollableScrollPhysics(),
                                          shrinkWrap: true,
                                          itemCount:
                                              state.list_mission_done!.length,
                                          // controller: state,
                                          itemBuilder: (_, index) =>
                                              ControlDoneBikerComponent(
                                                mission_control: state
                                                    .list_mission_done![index],
                                              )))),
                ])))));
  }
}
