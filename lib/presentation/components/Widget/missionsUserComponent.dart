import 'package:Bcom/application/model/data/MissionBiker.dart';
import 'package:Bcom/presentation/components/exportcomponent.dart';
import 'package:Bcom/application/export_bloc.dart';
import 'package:Bcom/routes/app_router.gr.dart';

// ignore: must_be_immutable
class MissionsUserComponent extends StatelessWidget {
  MissionBiker mission;

  MissionsUserComponent({required this.mission});
  GlobalKey globalKey = new GlobalKey();
  @override
  Widget build(BuildContext context) {
    return Container(
        margin: EdgeInsets.symmetric(vertical: kMarginY),
        decoration: BoxDecoration(
            color: ColorsApp.grey, borderRadius: BorderRadius.circular(8)),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            InkWell(
                child: Container(
                    width: getWith(context) * .65,
                    decoration: BoxDecoration(
                        color: ColorsApp.second,
                        borderRadius: BorderRadius.circular(8)),
                    padding: EdgeInsets.symmetric(
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
                                  color: ColorsApp.white,
                                  fontSize: 14,
                                  fontWeight: FontWeight.w600)),
                        ),
                        Container(
                            child: Text(
                                'Ajoutee le : '.tr() + mission.date_created,
                                overflow: TextOverflow.ellipsis,
                                style: TextStyle(
                                    color: ColorsApp.white, fontSize: 9))),

                        Container(
                          child: Text(
                              'nombre de point cumules : '.tr() +
                                  mission.nbre_point,
                              overflow: TextOverflow.ellipsis,
                              style: TextStyle(
                                  color: ColorsApp.white, fontSize: 9)),
                        ),
                        Container(
                          child: Text(
                              'nombre de tour : ${mission.nbre_session}'.tr(),
                              overflow: TextOverflow.ellipsis,
                              style: TextStyle(
                                  color: ColorsApp.white, fontSize: 9)),
                        ),

                        Container(
                          child: Text(
                              'status de la mission :'.tr() +
                                  (mission.status ? 'Active' : 'Inactive'),
                              overflow: TextOverflow.ellipsis,
                              style: TextStyle(
                                  color: ColorsApp.white, fontSize: 9)),
                        ),
                      ],
                    )),
                onTap: () {
                  BlocProvider.of<BikerBloc>(context)
                      .add(ListSessionMission(mission: mission));
                  AutoRouter.of(context).push(MissionSessionRoute());
                }),
            InkWell(
                child: Container(
                    margin: EdgeInsets.symmetric(
                        horizontal: kMarginX, vertical: kMarginY),
                    padding: EdgeInsets.all(10),
                    decoration: BoxDecoration(
                        color: ColorsApp.primary,
                        borderRadius: BorderRadius.circular(100)),
                    child: Icon(Icons.info, color: ColorsApp.white)),
                onTap: () {
                  showModalBottomSheet(
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
                                padding:
                                    EdgeInsets.symmetric(horizontal: kMarginX),
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
                                    mission.description,
                                  ))))
                                ])),
                          ));
                })
          ],
        ));
  }
}
