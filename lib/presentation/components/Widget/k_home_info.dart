import 'package:Bcom/application/abonnement/abonnement_bloc.dart';
import 'package:Bcom/entity.dart';
import 'package:Bcom/presentation/components/exportcomponent.dart';
import 'package:Bcom/presentation/devis/PaiementPage.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';

import '../../../application/export_bloc.dart';

// ignore: must_be_immutable
class KHomeInfo extends StatelessWidget {
  KHomeInfo({required User this.user});
  final User user;
  @override
  Widget build(BuildContext context) {
    return BlocConsumer<AbonnementBloc, AbonnementState>(
        listener: (context, state) {
      if (state.loadRequest == 0) {
        EasyLoading.show(
            dismissOnTap: true,
            status: 'En cours',
            maskType: EasyLoadingMaskType.black);
      } else if (state.loadRequest == 2) {
        AutoRouter.of(context).pop();
        EasyLoading.dismiss();
        showError('Une erreur est survenue', context);
      } else if (state.loadRequest == 1) {
        AutoRouter.of(context).pop();
        // showSuccess('Operation reussi', context);
        AutoRouter.of(context).pushNamed(PaimentPage.routeName);
        
        EasyLoading.dismiss();
      }
    }, builder: (context, state) {
      int daysLeft = 0;
      Widget userAbonnement = Container(
        width: getWith(context) * .4,
        child: Text(
          'Vous n\'avez aucun abonnement en cours',
          textAlign: TextAlign.center,
          style: TextStyle(
              fontWeight: FontWeight.w800,
              fontSize: 11,
              color: ColorsApp.white),
        ),
      );
      if (state.userAbonnement != null) {
        // Parse the end date of the subscription
        DateTime endDate = DateTime.parse(state.userAbonnement!.endDate);
        // Calculate the difference in days between now and the end date
        daysLeft = endDate.difference(DateTime.now()).inDays;

        // Check if the days left are less than or equal to 5
        if (daysLeft <= 5) {
          userAbonnement = InkWell(
            onTap: () {
              BlocProvider.of<AbonnementBloc>(context)
                  .add(ReNewCurrentAbonnement());
            },
            child: Container(
              padding: EdgeInsets.all(8),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30),
                  color: ColorsApp.white,
                  border: Border.all(color: ColorsApp.red)),
              width: getWith(context) * .4,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    child: Text(
                      'Votre abonnement expire dans $daysLeft jour${daysLeft > 1 ? 's' : ''}',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontWeight: FontWeight.w800,
                        color: ColorsApp.red,
                        fontSize: 11,
                      ),
                    ),
                  ),
                  Container(
                    child: Text(
                      'Appuyer pour renouveller',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontWeight: FontWeight.w800,
                        color: ColorsApp.red,
                        fontSize: 13,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          );
        } else {
          userAbonnement = Container(
            width: getWith(context) * .4,
            child: Text(
              'Votre abonnement expire  le ${state.userAbonnement!.endDate}',
              textAlign: TextAlign.center,
              style: TextStyle(
                  fontWeight: FontWeight.w800,
                  fontSize: 11,
                  color: ColorsApp.white),
            ),
          );
        }
      }

      return Container(
          child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          state.loadUserAbonnement == 0
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
                                crossAxisAlignment: CrossAxisAlignment.center,
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
                                          ? state.userAbonnement!.isPay != 1
                                              ? 'En attente de payement'
                                              : daysLeft <= 0
                                                  ? 'Expiré'
                                                  : 'Actif'
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
                              child: Text('Refresh ',
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
                    ),
          userAbonnement,
          Container(
            child: Column(
              children: [
                BlocBuilder<AppActionCubit, AppActionState>(
                    builder: (context, state0) => Container(
                          height: 10,
                          width: 10,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(30),
                              color: state0.isInternetConnection
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
    });
  }
}
