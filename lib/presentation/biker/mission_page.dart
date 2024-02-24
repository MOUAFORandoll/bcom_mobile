import 'package:Bcom/application/export_bloc.dart';
import 'package:Bcom/application/home/home_bloc.dart';
import 'package:Bcom/presentation/biker/list_missions_dispo.dart';
import 'package:Bcom/presentation/components/Widget/ShimmerData.dart';
import 'package:Bcom/presentation/components/Widget/k_home_info.dart';
import 'package:Bcom/presentation/components/Widget/missionSessionComponent.dart';
import 'package:Bcom/presentation/components/Widget/missionsComponent.dart';
import 'package:Bcom/utils/Services/validators.dart';
import 'package:Bcom/utils/constants/assets.dart';
import 'package:flutter_svg/flutter_svg.dart';
import '../components/exportcomponent.dart';
import 'package:Bcom/presentation/components/Widget/HomeModuleComponent.dart';
import 'package:Bcom/presentation/components/Widget/icon_svg.dart';

export 'package:Bcom/application/home/home_bloc.dart';

var loader = AppLoader.bounceLargeColorLoaderController();

@RoutePage()
class MissionSessionPage extends StatefulWidget {
  static const routeName = '/missionpage';

  @override
  State<MissionSessionPage> createState() => _MissionSessionPageState();
}

class _MissionSessionPageState extends State<MissionSessionPage> {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<BikerBloc, BikerState>(
        builder: (context, state) => Scaffold(
            backgroundColor: ColorsApp.bg,
            floatingActionButton: state.load_list_mission_session == 1 &&
                    (state.list_mission_session!.length == 0 ||
                        state.list_mission_session!.last.date_end == null)
                ? FloatingActionButton(
                    onPressed: () {},
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(30),
                        color: ColorsApp.white,
                      ),
                      margin: EdgeInsets.only(right: kMarginX),
                      padding: EdgeInsets.all(kMarginX / 2),
                      child: Icon(
                        Icons.play_arrow,
                        color: ColorsApp.second,
                        size: 30,
                      ),
                    ),
                  )
                : Container(),
            body: Container(
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
                  'Mission Session',
                  overflow: TextOverflow.ellipsis,
                  style: TextStyle(
                      color: ColorsApp.white,
                      fontFamily: 'Lato',
                      fontSize: 20,
                      fontWeight: FontWeight.w600),
                ),
                centerTitle: true,

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

                elevation: 10.0,
                backgroundColor: ColorsApp.second, //
              ),
              SliverToBoxAdapter(
                  child: Container(
                      height: getHeight(context),
                      padding: EdgeInsets.symmetric(
                          vertical: kMarginY, horizontal: kMarginX),
                      child: Column(children: [
                        state.load_list_mission_session == 0
                            ? ShimmerData()
                            : state.load_list_mission_session == 2
                                ? Text('Error')
                                : state.list_mission_session!.length == 0
                                    ? Container()
                                    : Container(
                                        child: SingleChildScrollView(
                                            child: ListView.builder(
                                                physics:
                                                    NeverScrollableScrollPhysics(),
                                                shrinkWrap: true,
                                                itemCount: state
                                                    .list_mission_session!
                                                    .length,
                                                // controller: state,
                                                itemBuilder: (_, index) =>
                                                    MissionSessionComponent(
                                                        missionSession: state
                                                                .list_mission_session![
                                                            index],
                                                        index: index))))
                      ])))
            ]))));
  }
}
