import 'package:Bcom/application/biker/biker_bloc.dart';
import 'package:Bcom/application/export_bloc.dart';
import 'package:Bcom/application/model/data/Mission.dart';
import 'package:Bcom/presentation/components/exportcomponent.dart';
import 'package:Bcom/routes/app_router.gr.dart';

// ignore: must_be_immutable
class MissionsComponent extends StatelessWidget {
  Mission mission;

  MissionsComponent({required this.mission});
  GlobalKey globalKey = new GlobalKey();
  @override
  Widget build(BuildContext context) {
    return InkWell(
      child: Stack(
        children: [
          InkWell(
              child: Container(
                  margin: EdgeInsets.symmetric(
                      horizontal: kMarginX, vertical: kMarginY),
                  decoration: BoxDecoration(
                      color: ColorsApp.grey,
                      borderRadius: BorderRadius.circular(8)),
                  child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                            margin: EdgeInsets.symmetric(
                                horizontal: kMarginX, vertical: kMarginY),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                // Container(
                                //   child: Text('yLibelle'.tr(),
                                //       overflow: TextOverflow.ellipsis,
                                //       style: TextStyle(
                                //           color: ColorsApp.primary,
                                //           fontSize: 9)),
                                // ) ,
                                Container(
                                  child: Text(mission.libelle,
                                      overflow: TextOverflow.ellipsis,
                                      style: TextStyle(
                                          color: ColorsApp.primary,
                                          fontSize: 12,
                                          fontWeight: FontWeight.w600)),
                                ),
                                Container(
                                    child: Text(
                                        'Ajoutee le '.tr() +
                                            mission.date_created,
                                        overflow: TextOverflow.ellipsis,
                                        style: TextStyle(
                                            color: ColorsApp.primary,
                                            fontSize: 9))),

                                Container(
                                  child: Text(
                                      'nombre de point :'.tr() +
                                          mission.nbre_point,
                                      overflow: TextOverflow.ellipsis,
                                      style: TextStyle(
                                          color: ColorsApp.primary,
                                          fontSize: 9)),
                                ),

                                Container(
                                  child: Text(
                                      'status de la mission '.tr() +
                                          (mission.status
                                              ? 'Active'
                                              : 'Inactive'),
                                      overflow: TextOverflow.ellipsis,
                                      style: TextStyle(
                                          color: ColorsApp.primary,
                                          fontSize: 9)),
                                ),
                              ],
                            )),
                      ]) /* ) */),
              onTap: () {
                mission.nbre_session != 0
                    ? AutoRouter.of(context).push(MissionSessionRoute())
                    : showModalBottomSheet(
                        context: context,
                        builder: (BuildContext context) => SafeArea(
                              minimum: EdgeInsets.only(top: 30),
                              child: Container(
                                  height: getHeight(context) * .9,
                                  width: getWith(context),
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.only(
                                      topLeft: Radius.circular(30),
                                      topRight: Radius.circular(30),
                                    ),
                                    color: ColorsApp.white,
                                  ),
                                  padding: EdgeInsets.symmetric(
                                      horizontal: kMarginX),
                                  child: Column(children: [
                                    Container(
                                      margin: EdgeInsets.only(bottom: kMarginY),
                                      child: Text(mission.libelle,
                                          overflow: TextOverflow.ellipsis,
                                          style: TextStyle(
                                              color: ColorsApp.primary,
                                              fontSize: 12,
                                              fontWeight: FontWeight.w600)),
                                    ),
                                    Expanded(
                                        child: SingleChildScrollView(
                                            child: Container(
                                                child: Text(
                                                    mission.description)))),
                                    Container(
                                        margin:
                                            EdgeInsets.only(bottom: kMarginY),
                                        padding: EdgeInsets.symmetric(
                                            horizontal: kMarginX,
                                            vertical: kMarginY),
                                        child: AppButton(
                                          size: MainAxisSize.max,
                                          bgColor: ColorsApp.second,
                                          text: 'Demarer la mission',
                                          onTap: () {
                                            BlocProvider.of<BikerBloc>(context)
                                                .add(StartMissionBiker());
                                            BlocProvider.of<BikerBloc>(context)
                                                .add(SelectMission(
                                                    mission: mission));
                                            AutoRouter.of(context)
                                                .push(MissionSessionRoute());
                                          },
                                        ))
                                  ])),
                            ));
              })
        ],
      ),
    );
  }
}
