import 'package:Bcom/application/export_bloc.dart';
import 'package:Bcom/application/model/data/Mission.dart';
import 'package:Bcom/presentation/components/exportcomponent.dart';
import 'package:Bcom/routes/app_router.gr.dart';
import 'package:Bcom/utils/functions/datetime_format_utils.dart';

// ignore: must_be_immutable
class MissionsComponent extends StatelessWidget {
  Mission mission;
  MissionsComponent({
    required this.mission,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
        child: BlocBuilder<BikerBloc, BikerState>(
            builder: (context, state) => Container(
                margin: EdgeInsets.symmetric(
                    horizontal: kMarginX / 2, vertical: kMarginY),
                padding: EdgeInsets.symmetric(
                  vertical: kMarginY,
                  horizontal: kMarginX,
                ),
                decoration: BoxDecoration(
                    color: ColorsApp.grey,
                    borderRadius: BorderRadius.circular(8)),
                child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                          margin: EdgeInsets.symmetric(vertical: kMarginY),
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
                                      'Ajoutee le '.tr() + mission.date_created,
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
                                        color: ColorsApp.primary, fontSize: 9)),
                              ),

                              Container(
                                child: Text(
                                    'status de la mission '.tr() +
                                        (mission.status
                                            ? 'Active'
                                            : 'Inactive'),
                                    overflow: TextOverflow.ellipsis,
                                    style: TextStyle(
                                        color: ColorsApp.primary, fontSize: 9)),
                              ),
                            ],
                          )),
                      Container(
                          child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                            // Container(
                            //   margin:
                            //       EdgeInsets.symmetric(vertical: kMarginY / 3),
                            //   decoration: BoxDecoration(
                            //     borderRadius: BorderRadius.circular(30),
                            //     color: ColorsApp.white,
                            //   ),
                            //   width: getWith(context) * .30,
                            //   alignment: Alignment.center,
                            //   padding: EdgeInsets.all(15),
                            //   child: Text(
                            //       '${FormatDateTime().formatTimeFromSeconds(state.time!)}',
                            //       overflow: TextOverflow.ellipsis,
                            //       style: TextStyle(
                            //         color: ColorsApp.second,
                            //         fontWeight: FontWeight.w600,
                            //         overflow: TextOverflow.ellipsis,
                            //         fontSize: 12,
                            //       )),
                            // ),
                            if (state.mission != null
                                ? state.mission!.id == mission.id
                                : false)
                              Container(
                                margin: EdgeInsets.symmetric(
                                    vertical: kMarginY / 5),
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(30),
                                  color: ColorsApp.white,
                                ),
                                width: getWith(context) * .30,
                                alignment: Alignment.center,
                                padding: EdgeInsets.all(5),
                                child: Container(
                                  height: 30,
                                  width: 30,
                                  margin: EdgeInsets.symmetric(
                                      vertical: kMarginY / 4),
                                  child: CircularProgressIndicator(
                                    color: ColorsApp.primary,
                                  ),
                                ),
                              ),
                            if (state.mission == null ||
                                (state.mission != null
                                    ? state.mission!.id != mission.id
                                    : false))
                              InkWell(
                                child: Container(
                                  margin: EdgeInsets.symmetric(
                                      vertical: kMarginY / 3),
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(30),
                                    color: ColorsApp.second,
                                  ),
                                  alignment: Alignment.center,
                                  width: getWith(context) * .30,
                                  padding: EdgeInsets.all(15),
                                  child: Text('Demarer',
                                      overflow: TextOverflow.ellipsis,
                                      style: TextStyle(
                                        color: ColorsApp.white,
                                        fontWeight: FontWeight.w600,
                                        overflow: TextOverflow.ellipsis,
                                        fontSize: 12,
                                      )),
                                ),
                                onTap: () {
                                  if (state.mission != null) {
                                    if (mission.id != state.mission!.id) {
                                      BlocProvider.of<BikerBloc>(context)
                                        ..add(EndMissionBiker())
                                        ..add(GetListMissionBikerEffectue());
                                    }
                                  }
                                  BlocProvider.of<BikerBloc>(context)
                                    ..add(SelectMission(mission: mission))
                                    ..add(StartMissionBiker());
                                },
                              ),
                            if (state.mission != null)
                              if (state.sendPosition == true &&
                                  state.mission!.id == mission.id)
                                InkWell(
                                  child: Container(
                                    margin: EdgeInsets.symmetric(
                                        vertical: kMarginY / 3),
                                    decoration: BoxDecoration(
                                      color: ColorsApp.red,
                                      borderRadius: BorderRadius.circular(30),
                                    ),
                                    alignment: Alignment.center,
                                    width: getWith(context) * .30,
                                    padding: EdgeInsets.all(15),
                                    child: Text('Stop',
                                        overflow: TextOverflow.ellipsis,
                                        style: TextStyle(
                                          color: ColorsApp.white,
                                          fontWeight: FontWeight.w600,
                                          overflow: TextOverflow.ellipsis,
                                          fontSize: 12,
                                        )),
                                  ),
                                  onTap: () {
                                    BlocProvider.of<BikerBloc>(context)
                                      ..add(EndMissionBiker())
                                      ..add(GetListMissionBikerEffectue());
                                  },
                                ),
                            // Container(
                            //     child: AppButton(
                            //   size: MainAxisSize.max,
                            //   bgColor: ColorsApp.red,
                            //   text: 'Stop',
                            //   onTap: () {
                            //     BlocProvider.of<BikerBloc>(context)
                            //         .add(EndMissionBiker());
                            //   },
                            // ))
                          ]))
                    ]))),
        onTap: () => showModalBottomSheet(
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
                      padding: EdgeInsets.symmetric(horizontal: kMarginX),
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
                                    child: Text(mission.description)))),
                        // if (state.time == 0)
                        //   Container(
                        //       margin: EdgeInsets.only(bottom: kMarginY),
                        //       padding: EdgeInsets.symmetric(
                        //           horizontal: kMarginX, vertical: kMarginY),
                        //       child: AppButton(
                        //         size: MainAxisSize.max,
                        //         bgColor: ColorsApp.second,
                        //         text: 'Demarer la mission',
                        //         onTap: () {
                        //           if (state.mission != null) {
                        //             if (mission.id != state.mission!.id) {
                        //               BlocProvider.of<BikerBloc>(context)
                        //                   .add(EndMissionBiker());
                        //             }
                        //           }
                        //           BlocProvider.of<BikerBloc>(context)
                        //               .add(SelectMission(mission: mission));
                        //           BlocProvider.of<BikerBloc>(context)
                        //               .add(StartMissionBiker());
                        //         },
                        //       )),
                        // if (state.time != 0)
                        //   Container(
                        //       margin: EdgeInsets.only(bottom: kMarginY),
                        //       padding: EdgeInsets.symmetric(
                        //           horizontal: kMarginX, vertical: kMarginY),
                        //       child: AppButton(
                        //         size: MainAxisSize.max,
                        //         bgColor: ColorsApp.second,
                        //         text: 'Demarer la mission',
                        //         onTap: () {
                        //           BlocProvider.of<BikerBloc>(context)
                        //               .add(EndMissionBiker());
                        //         },
                        //       ))
                      ])),
                )));
  }
}
