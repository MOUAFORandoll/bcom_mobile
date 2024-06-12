import 'package:Bcom/entity.dart';
import 'package:Bcom/presentation/components/exportcomponent.dart';

import '../../../application/export_bloc.dart';

// ignore: must_be_immutable
class KHomeInfo extends StatelessWidget {
  KHomeInfo({required User this.user});
  final User user;
  @override
  Widget build(BuildContext context) {
    return Container(
        child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        BlocBuilder<AbonnementBloc, AbonnementState>(
            builder: (context, state) => state.loadUserAbonnement == 0
                ? Shimmer.fromColors(
                    baseColor: ColorsApp.grey,
                    highlightColor: ColorsApp.primary,
                    child: Container(
                      child: Row(children: [
                        Container(
                            child: Icon(
                          Icons.location_on,
                          color: ColorsApp.white,
                          size: 25,
                        )),
                        Container(
                            child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                              Container(
                                  child: Text('Abonnement',
                                      style: TextStyle(
                                          color: ColorsApp.white,
                                          fontSize: 8,
                                          fontWeight: FontWeight.normal))),
                              Container(
                                  child: Text('En cours de chargement',
                                      style: TextStyle(
                                        fontWeight: FontWeight.w800,
                                        color: ColorsApp.white,
                                        fontSize: 11,
                                      ))),
                            ])),
                      ]),
                    ))
                : state.loadUserAbonnement == 1
                    ? Container(
                        child: Row(children: [
                          Container(
                              child: Icon(
                            Icons.location_on,
                            color: ColorsApp.white,
                            size: 25,
                          )),
                          Container(
                              child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                Container(
                                    child: Text('Abonnement',
                                        style: TextStyle(
                                            color: ColorsApp.white,
                                            fontSize: 8,
                                            fontWeight: FontWeight.normal))),
                                Container(
                                    child: Text(
                                        state.userAbonnement != null
                                            ? state.userAbonnement!.status == 1
                                                ? 'Actif'
                                                : 'Inactif'
                                            : 'Inactif',
                                        style: TextStyle(
                                          fontWeight: FontWeight.w800,
                                          color: ColorsApp.white,
                                          fontSize: 11,
                                        ))),
                              ])),
                        ]),
                      )
                    : InkWell(
                        onTap: () {
                          BlocProvider.of<AbonnementBloc>(context)
                              .add(UserAbonnement());
                        },
                        child: Row(
                          children: [
                            Container(
                                child: Text('Refresh',
                                    style: TextStyle(
                                      fontWeight: FontWeight.w800,
                                      color: ColorsApp.grey,
                                      fontSize: 11,
                                    ))),
                            Icon(
                              Icons.refresh,
                              color: ColorsApp.grey,
                            ),
                          ],
                        ),
                      )),
        Container(
          child: Column(
            children: [
              BlocBuilder<AppActionCubit, AppActionState>(
                  builder: (context, state) => Container(
                        height: 10,
                        width: 10,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(30),
                            color: state.isInternetConnection
                                ? ColorsApp.second
                                : ColorsApp.orange),
                      )),
              Container(
                  decoration: BoxDecoration(
                      // borderRadius: BorderRadius.circular(50),
                      border: Border(
                          bottom: BorderSide(
                    color: ColorsApp.white,
                    width: 2,
                  ))),
                  // width: getWith(context) * .35,
                  padding: EdgeInsets.symmetric(vertical: kMarginY / 4),
                  child: Text('Hey, ' + user.userName,
                      style: TextStyle(
                        color: ColorsApp.white,
                        fontWeight: FontWeight.w800,
                        fontSize: 11,
                      ))),
            ],
          ),
        )
      ],
    ));
  }
}
