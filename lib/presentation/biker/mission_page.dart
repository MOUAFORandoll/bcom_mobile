import 'package:Bcom/application/export_bloc.dart';
import 'package:Bcom/presentation/components/Widget/ShimmerData.dart';
import 'package:Bcom/presentation/components/Widget/missionSessionComponent.dart';
import 'package:Bcom/utils/constants/assets.dart';
import '../components/exportcomponent.dart';
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
            body: CustomScrollView(slivers: [
              SliverAppBar(
                leading: InkWell(
                    onTap: () {
                      loader.close();
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
                title: Text(
                  'Liste des Sessions de la Mission',
                  overflow: TextOverflow.ellipsis,
                  style: TextStyle(fontSize: 12, fontWeight: FontWeight.w600),
                ),
                centerTitle: true,
                pinned: true,
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
                backgroundColor: ColorsApp.white, //
              ),
              SliverToBoxAdapter(
                  child: Container(
                      padding: EdgeInsets.symmetric(
                          vertical: kMarginY, horizontal: kMarginX),
                      child: state.load_list_mission_session == 0
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
                                                  .list_mission_session!.length,
                                              itemBuilder: (_, index) =>
                                                  MissionSessionComponent(
                                                      missionSession: state
                                                              .list_mission_session![
                                                          index],
                                                      index: index))))))
            ])));
  }
}
