import 'package:Bcom/application/model/data/Mission.dart';
import 'package:Bcom/application/model/data/MissionBiker.dart';
import 'package:Bcom/presentation/components/exportcomponent.dart';

// ignore: must_be_immutable
class MissionsUserComponent extends StatelessWidget {
  MissionBiker mission;

  MissionsUserComponent({required this.mission});
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
                      crossAxisAlignment: CrossAxisAlignment.start,
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
                                      'nombre de point cumules :'.tr() +
                                          mission.nbre_point,
                                      overflow: TextOverflow.ellipsis,
                                      style: TextStyle(
                                          color: ColorsApp.primary,
                                          fontSize: 9)),
                                ),
                                Container(
                                  child: Text(
                                      'nombre de tour : ${mission.nbre_session}'
                                          .tr(),
                                      overflow: TextOverflow.ellipsis,
                                      style: TextStyle(
                                          color: ColorsApp.primary,
                                          fontSize: 9)),
                                ),

                                Container(
                                  child: Text(
                                      'status de la mission'.tr() +
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
                showModalBottomSheet(
                    context: context,
                    builder: (BuildContext context) => SafeArea(
                          minimum: EdgeInsets.only(top: 30),
                          child: Container(
                              height: getHeight(context) * .9,
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
                                  child: Text('Mission Pharmapur',
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
                                      'Sit excepteur eu in ad sint. Officia sit ipsum reprehenderit ex do. x commodo et eiusmod cillum ipsum excepteur ut ea enim magna quis. Minim esse anim do aliqua Lorem. Qui ipsum minim id sunt. Excepteur nisi nulla id pariatur consequat mollit ullamco.Laboris tempor quis pariatur voluptate. Cillum excepteur fugiat adipisicing anim commodo in aliquip dolor tempor voluptate aliquip dolor enim. Aliquip nostrud cillum ullamco tempor in laborum veniam ea irure adipisicing elit proident sit. Qui dolore laborum laboris quis eu in amet amet aliquip dolore cupidatat cillum cillum anim. Veniam elit deserunt adipisicing amet non mollit.'),
                                )))
                              ])),
                        ));
              })
        ],
      ),
    );
  }
}
