import 'package:Bcom/application/export_bloc.dart';
import 'package:Bcom/application/model/data/Mission.dart';
import 'package:Bcom/application/model/data/Secteur.dart';
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
    return BlocBuilder<BikerBloc, BikerState>(
        builder: (context, state) => InkWell(
            child: Container(
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
                                  color: ColorsApp.green,
                                ),
                                width: getWith(context) * .30,
                                alignment: Alignment.center,
                                padding: EdgeInsets.all(5),
                                child: Container(
                                  height: 20,
                                  width: 60,
                                  child: Text(
                                    'En cours',
                                    style: TextStyle(
                                        color: ColorsApp.white,
                                        fontSize: 10,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ),
                              ),
                            // if (state.mission == null ||
                            //     (state.mission != null
                            //         ? state.mission!.id != mission.id
                            //         : false))
                            //   InkWell(
                            //     child: Container(
                            //       margin: EdgeInsets.symmetric(
                            //           vertical: kMarginY / 3),
                            //       decoration: BoxDecoration(
                            //         borderRadius: BorderRadius.circular(30),
                            //         color: ColorsApp.second,
                            //       ),
                            //       alignment: Alignment.center,
                            //       width: getWith(context) * .30,
                            //       padding: EdgeInsets.all(15),
                            //       child: Text('Demarer',
                            //           overflow: TextOverflow.ellipsis,
                            //           style: TextStyle(
                            //             color: ColorsApp.white,
                            //             fontWeight: FontWeight.w600,
                            //             overflow: TextOverflow.ellipsis,
                            //             fontSize: 12,
                            //           )),
                            //     ),
                            //     onTap: () {
                            //       if (state.mission != null) {
                            //         if (mission.id != state.mission!.id) {
                            //           BlocProvider.of<BikerBloc>(context)
                            //             ..add(EndMissionBiker())
                            //             ..add(GetListMissionBikerEffectue());
                            //         }
                            //       }
                            //       BlocProvider.of<BikerBloc>(context)
                            //         ..add(SelectMission(mission: mission))
                            //         ..add(StartMissionBiker());
                            //     },
                            //   ),
                            // if (state.mission != null)
                            //   if (state.sendPosition == true &&
                            //       state.mission!.id == mission.id)
                            //     InkWell(
                            //       child: Container(
                            //         margin: EdgeInsets.symmetric(
                            //             vertical: kMarginY / 3),
                            //         decoration: BoxDecoration(
                            //           color: ColorsApp.red,
                            //           borderRadius: BorderRadius.circular(30),
                            //         ),
                            //         alignment: Alignment.center,
                            //         width: getWith(context) * .30,
                            //         padding: EdgeInsets.all(15),
                            //         child: Text('Stop',
                            //             overflow: TextOverflow.ellipsis,
                            //             style: TextStyle(
                            //               color: ColorsApp.white,
                            //               fontWeight: FontWeight.w600,
                            //               overflow: TextOverflow.ellipsis,
                            //               fontSize: 12,
                            //             )),
                            //       ),
                            //       onTap: () {
                            //         BlocProvider.of<BikerBloc>(context)
                            //           ..add(EndMissionBiker())
                            //           ..add(GetListMissionBikerEffectue());
                            //       },
                            //     ),
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
                    ])),
            onTap: () => showModalBottomSheet(
                context: context,
                builder: (BuildContext context) => BlocBuilder<BikerBloc,
                        BikerState>(
                    builder: (context, state0) => SafeArea(
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
                                            height: getHeight(context) * .25,
                                            decoration: BoxDecoration(
                                              borderRadius: BorderRadius.only(
                                                topLeft: Radius.circular(30),
                                                topRight: Radius.circular(30),
                                              ),
                                            ),
                                            child: Text(mission.description)))),
                                state0.load_list_secteur == 0
                                    ? CircularProgressIndicator(
                                        color: ColorsApp.second)
                                    : state0.load_list_secteur == 2
                                        ? Text('Error')
                                        : Container(
                                            decoration: BoxDecoration(
                                              border: Border.all(
                                                  color: ColorsApp.grey,
                                                  width: 1),
                                              borderRadius:
                                                  BorderRadius.circular(8),
                                            ),
                                            height: getHeight(context) * .08,
                                            width: getWith(context),
                                            margin: EdgeInsets.symmetric(
                                              vertical: kMarginY * 1.5,
                                            ),
                                            alignment: Alignment.center,
                                            child: DropdownButton(
                                              value: state0.secteur,
                                              icon: Container(
                                                // padding: EdgeInsets.only(top: 4),
                                                child: Icon(
                                                  Icons
                                                      .keyboard_arrow_down_outlined,
                                                ),
                                              ),
                                              hint: Container(
                                                width: getWith(context) * .65,
                                                alignment: Alignment.center,
                                                padding: EdgeInsets.symmetric(
                                                  horizontal: 7,
                                                ),
                                                child: Text(
                                                  'Choisissez votre secteur'
                                                      .tr(),
                                                  style: TextStyle(
                                                      overflow: TextOverflow
                                                          .ellipsis),
                                                ),
                                              ),
                                              iconSize: 25,
                                              underline: SizedBox(),
                                              style: TextStyle(
                                                  color: ColorsApp.primary,
                                                  fontSize: 12),
                                              onChanged: (Secteur? newValue) {
                                                context.read<BikerBloc>().add(
                                                    SelectSecteur(
                                                        secteur: newValue!));
                                              },
                                              items: state.list_secteur!
                                                  .map((value) {
                                                return DropdownMenuItem(
                                                  value: value,
                                                  child: Center(
                                                    child: Text(
                                                      value.libelle,
                                                    ),
                                                  ),
                                                );
                                              }).toList(),
                                            ),
                                          ),
                                if (state0.mission == null ||
                                    (state0.mission != null
                                        ? state0.mission!.id != mission.id
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
                                      if (state0.mission != null) {
                                        if (mission.id != state0.mission!.id) {
                                          BlocProvider.of<BikerBloc>(context)
                                            ..add(EndMissionBiker())
                                            ..add(
                                                GetListMissionBikerEffectue());
                                        }
                                      }
                                      BlocProvider.of<BikerBloc>(context)
                                        ..add(SelectMission(mission: mission))
                                        ..add(StartMissionBiker());
                                    },
                                  ),
                                if (state0.mission != null)
                                  if (state0.sendPosition == true &&
                                      state0.mission!.id == mission.id)
                                    InkWell(
                                      child: Container(
                                        margin: EdgeInsets.symmetric(
                                            vertical: kMarginY / 3),
                                        decoration: BoxDecoration(
                                          color: ColorsApp.red,
                                          borderRadius:
                                              BorderRadius.circular(30),
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
                              ])),
                        )))));
  }
}
