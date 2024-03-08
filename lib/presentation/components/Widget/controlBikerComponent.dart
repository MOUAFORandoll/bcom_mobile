import 'package:Bcom/application/export_bloc.dart';
import 'package:Bcom/application/model/data/Mission.dart';
import 'package:Bcom/application/model/data/MissionControl.dart';
import 'package:Bcom/application/tcontroller/tcontroller_bloc.dart';
import 'package:Bcom/presentation/components/Widget/global_bottom_sheet.dart';
import 'package:Bcom/presentation/components/exportcomponent.dart';
import 'package:Bcom/routes/app_router.gr.dart';
import 'package:Bcom/utils/Services/validators.dart';
import 'package:Bcom/utils/functions/datetime_format_utils.dart';

// ignore: must_be_immutable
class ControlBikerComponent extends StatelessWidget {
  MissionControl mission_control;
  ControlBikerComponent({
    required this.mission_control,
  });

  @override
  Widget build(BuildContext context) {
    TextEditingController note = TextEditingController();

    return InkWell(
        child: BlocBuilder<TcontrollerBloc, TcontrollerState>(
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
                                child: Text(mission_control.biker.name,
                                    overflow: TextOverflow.ellipsis,
                                    style: TextStyle(
                                        color: ColorsApp.primary,
                                        fontSize: 12,
                                        fontWeight: FontWeight.w600)),
                              ),

                              Container(
                                child: Text(
                                    'Mission '.tr() +
                                        mission_control.mission.libelle,
                                    overflow: TextOverflow.ellipsis,
                                    style: TextStyle(
                                        color: ColorsApp.primary, fontSize: 9)),
                              ),

                              Container(
                                width: getWith(context) * .4,
                                child: Text(
                                    (mission_control.status == 0
                                        ? 'En attente du Controller'
                                        : ((mission_control.status == 1
                                            ? 'En cours'
                                            : 'Terminee'))),
                                    overflow: TextOverflow.ellipsis,
                                    style: TextStyle(
                                        color: ColorsApp.primary, fontSize: 9)),
                              ),
                              Container(
                                  child: Text(
                                      'Ajoutee le '.tr() +
                                          mission_control.dateCreated,
                                      overflow: TextOverflow.ellipsis,
                                      style: TextStyle(
                                          color: ColorsApp.primary,
                                          fontSize: 9))),
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
                            if (state.mission_control != null)
                              if (/* state.sendPosition == true && */
                                  state.mission_control!.id ==
                                      mission_control.id)
                                InkWell(
                                  child: Container(
                                    margin: EdgeInsets.symmetric(
                                        vertical: kMarginY / 3),
                                    decoration: BoxDecoration(
                                      color: ColorsApp.primary,
                                      borderRadius: BorderRadius.circular(30),
                                    ),
                                    alignment: Alignment.center,
                                    width: getWith(context) * .30,
                                    padding: EdgeInsets.all(15),
                                    child: Text('Noter ',
                                        overflow: TextOverflow.ellipsis,
                                        style: TextStyle(
                                          color: ColorsApp.white,
                                          fontWeight: FontWeight.w600,
                                          overflow: TextOverflow.ellipsis,
                                          fontSize: 12,
                                        )),
                                  ),
                                  onTap: () {
                                    GlobalBottomSheet.show(
                                        context: context,
                                        widget: Container(
                                            height: getHeight(context) * .4,
                                            padding: EdgeInsets.symmetric(
                                              vertical: kMarginY * 2,
                                            ),
                                            child: Column(children: [
                                              Text('Attribuez lui  une note'),
                                              Padding(
                                                padding: EdgeInsets.symmetric(
                                                  vertical: kMarginY * 2,
                                                ),
                                                child: AppInput(
                                                  controller: note,
                                                  onChanged: (value) {},
                                                  textInputType:
                                                      TextInputType.number,
                                                  placeholder: 'Note'.tr(),
                                                  validator: (value) {
                                                    return Validators
                                                        .usNumeriqValid(value!);
                                                  },
                                                ),
                                              ),
                                              AppButton(
                                                  size: MainAxisSize.max,
                                                  // loading: _userState.isLoading,
                                                  // bgColor: ColorsApp.primary,
                                                  text: 'Noter'.tr(),
                                                  onTap: () async {
                                                    if (note.text.isNotEmpty) {
                                                      context
                                                          .read<
                                                              TcontrollerBloc>()
                                                          .add(NotationControl(
                                                            note: double.parse(
                                                                note.text),
                                                          ));
                                                    }
                                                  }),
                                            ])));
                                  },
                                ),
                            if (state.mission_control == null ||
                                (state.mission_control != null
                                    ? state.mission_control!.id !=
                                        mission_control.id
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
                                  if (state.mission_control != null) {
                                    if (mission_control.id !=
                                        state.mission_control!.id) {
                                      BlocProvider.of<TcontrollerBloc>(context)
                                          .add(GetListMissionTcontrollerDone());
                                    }
                                  }
                                  BlocProvider.of<TcontrollerBloc>(context)
                                    ..add(SelectMissionControl(
                                        mission_control: mission_control))
                                    ..add(StartControl());
                                },
                              ),
                            if (state.mission_control != null)
                              if (/* state.sendPosition == true && */
                                  state.mission_control!.id ==
                                      mission_control.id)
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
                                    BlocProvider.of<TcontrollerBloc>(context)
                                      ..add(EndControl())
                                      ..add(GetListMissionTcontroller())
                                      ..add(GetListMissionTcontrollerDone());
                                  },
                                ),
                            // Container(
                            //     child: AppButton(
                            //   size: MainAxisSize.max,
                            //   bgColor: ColorsApp.red,
                            //   text: 'Stop',
                            //   onTap: () {
                            //     BlocProvider.of<TcontrollerBloc>(context)
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
                          child: Text(mission_control.mission.libelle,
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
                                        mission_control.mission.description)))),
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
                        //               BlocProvider.of<TcontrollerBloc>(context)
                        //                   .add(EndMissionBiker());
                        //             }
                        //           }
                        //           BlocProvider.of<TcontrollerBloc>(context)
                        //               .add(SelectMission(mission: mission));
                        //           BlocProvider.of<TcontrollerBloc>(context)
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
                        //           BlocProvider.of<TcontrollerBloc>(context)
                        //               .add(EndMissionBiker());
                        //         },
                        //       ))
                      ])),
                )));
  }
}
