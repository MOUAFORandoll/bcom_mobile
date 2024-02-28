import 'package:Bcom/application/export_bloc.dart';
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
      child: Container(
          margin:
              EdgeInsets.symmetric(horizontal: kMarginX, vertical: kMarginY),
          decoration: BoxDecoration(
              color: ColorsApp.grey, borderRadius: BorderRadius.circular(8)),
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
                          child: Text('Session numero ${index! + 1}',
                              overflow: TextOverflow.ellipsis,
                              style: TextStyle(
                                  color: ColorsApp.primary,
                                  fontSize: 12,
                                  fontWeight: FontWeight.w600)),
                        ),
                        Container(
                            child: Text(
                                'Debute le '.tr() + missionSession!.date_start,
                                overflow: TextOverflow.ellipsis,
                                style: TextStyle(
                                    color: ColorsApp.primary, fontSize: 9))),
                        if (missionSession!.date_end != null)
                          Container(
                              child: Text(
                                  'Terminee le '.tr() +
                                      missionSession!.date_start,
                                  overflow: TextOverflow.ellipsis,
                                  style: TextStyle(
                                      color: ColorsApp.primary, fontSize: 9))),
                        if (missionSession!.end_mission! != true)
                          Container(
                              child: Text('Session en cours '.tr(),
                                  overflow: TextOverflow.ellipsis,
                                  style: TextStyle(
                                      color: ColorsApp.primary, fontSize: 9)))
                      ],
                    )),
              ]) /* ) */),
    );
  }
}
