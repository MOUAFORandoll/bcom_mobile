import 'package:Bcom/application/biker/biker_bloc.dart';
import 'package:Bcom/application/export_bloc.dart';
import 'package:Bcom/application/model/data/Mission.dart';
import 'package:Bcom/application/model/data/MissionSession.dart';
import 'package:Bcom/presentation/components/exportcomponent.dart';

// ignore: must_be_immutable
class MissionSessionComponent extends StatelessWidget {
  MissionSession? missionSession;
  int? index;

  MissionSessionComponent({required this.missionSession, required this.index});
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
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
                                  child: Text('Session $index',
                                      overflow: TextOverflow.ellipsis,
                                      style: TextStyle(
                                          color: ColorsApp.primary,
                                          fontSize: 12,
                                          fontWeight: FontWeight.w600)),
                                ),
                                Container(
                                    child: Text(
                                        'Debute le '.tr() +
                                            missionSession!.date_start,
                                        overflow: TextOverflow.ellipsis,
                                        style: TextStyle(
                                            color: ColorsApp.primary,
                                            fontSize: 9))),

                                missionSession!.date_end == null
                                    ? Container(
                                        child: Text('Session en cours '.tr(),
                                            overflow: TextOverflow.ellipsis,
                                            style: TextStyle(
                                                color: ColorsApp.primary,
                                                fontSize: 9)))
                                    : Container(
                                        child: Text(
                                            'Termine le '.tr() +
                                                missionSession!.date_end!,
                                            overflow: TextOverflow.ellipsis,
                                            style: TextStyle(
                                                color: ColorsApp.primary,
                                                fontSize: 9))),
                              ],
                            )),
                        if (missionSession!.date_end == null)
                          InkWell(
                            onTap: () {
                              context
                                  .read<BikerBloc>()
                                  .add(EndMissionBiker(missionsession_id: missionSession!.id));
                            },
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
                      ]) /* ) */),
              onTap: () {})
        ],
      ),
    );
  }
}
