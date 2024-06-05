import 'package:Bcom/utils/functions/datetime_format_utils.dart';
import 'package:Bcom/application/model/data/DevisModel.dart';

import 'package:Bcom/presentation/components/exportcomponent.dart';

// ignore: must_be_immutable
class DevisUserComponent extends StatelessWidget {
  DevisModel devis;

  DevisUserComponent({required this.devis});
  GlobalKey globalKey = new GlobalKey();
  @override
  Widget build(BuildContext context) {
    // titre.text = devis.titre;
    // quantite.text = devis.quantite.toString();
    // prix.text = devis.prix.toString();
    // description.text = devis.description;
    return InkWell(
      child: Container(
          padding:
              EdgeInsets.symmetric(horizontal: kMarginX, vertical: kMarginY),
          margin: EdgeInsets.symmetric(vertical: kMarginY),
          decoration: BoxDecoration(
              color: ColorsApp.white,
              boxShadow: [
                BoxShadow(
                  color: ColorsApp.primary.withOpacity(0.1),
                  spreadRadius: 2,
                  blurRadius: 5,
                  offset: Offset(0, 2),
                ),
              ],
              borderRadius: BorderRadius.circular(8)),
          child: Column(
            children: [
              Container(
                margin: EdgeInsets.only(bottom: kMarginY * 1.3),
                decoration: BoxDecoration(
                    border: Border(
                        bottom: BorderSide(color: ColorsApp.grey, width: .5))),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    // Text(FormatDateTime().dateToStringNew(devis.date)),
                    Row(
                      children: [
                        Container(
                            height: 10,
                            width: 10,
                            decoration: BoxDecoration(
                                color: ColorsApp.primary,
                                borderRadius: BorderRadius.circular(30))),
                        Container(
                          margin: EdgeInsets.only(left: kMarginY),
                          child: Text(
                              devis.status == 0
                                  ? 'En attente de validation'
                                  : devis.status == 1
                                      ? 'En cours de verification'
                                      : 'Devis Valide',
                              overflow: TextOverflow.ellipsis,
                              style: TextStyle(
                                fontSize: 14,
                                color: ColorsApp.primary,
                              )),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        Container(
                            height: 10,
                            width: 10,
                            decoration: BoxDecoration(
                                color: ColorsApp.primary,
                                borderRadius: BorderRadius.circular(30))),
                        Container(
                          margin: EdgeInsets.only(left: kMarginY),
                          child: Text(
                              FormatDateTime().dateToSimpleDate(
                                  devis.dateCreated.toString()),
                              overflow: TextOverflow.ellipsis,
                              style: TextStyle(
                                fontSize: 14,
                                color: ColorsApp.primary,
                              )),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    children: [
                      Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Container(
                                margin: EdgeInsets.symmetric(
                                    vertical: kMarginY / 2),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Container(
                                      width: getWith(context) * .34,
                                      child: Text(
                                          devis.pack!.libelle.toString(),
                                          maxLines: 2,
                                          // overflow: TextOverflow.ellipsis,
                                          style: TextStyle(
                                              color: ColorsApp.primary,
                                              fontSize: 14,
                                              fontWeight: FontWeight.w700)),
                                    ),
                                    Container(
                                      child: Text(
                                          devis.montant.toString() + ' XAF',
                                          overflow: TextOverflow.ellipsis,
                                          style: TextStyle(
                                              color: ColorsApp.primary,
                                              fontWeight: FontWeight.w600)),
                                    ),
                                  ],
                                )),
                          ]),
                    ],
                  ),
                  Container(
                    child: Column(
                      children: [
                        Container(
                          child: Row(
                            children: [
                              Container(
                                margin: EdgeInsets.only(right: kMarginX / 2),
                                child: Icon(Icons.timelapse,
                                    size: 20.0, color: Colors.grey),
                              ),
                              Container(
                                  child: Text(
                                'Horaire : ${devis.horaire}',
                              )),
                            ],
                          ),
                        ),
                        Container(
                            padding: EdgeInsets.symmetric()
                                .add(EdgeInsets.only(top: kMarginY / 2)),
                            child: Container(
                              padding: EdgeInsets.symmetric(
                                  horizontal: kMarginX * 1.5, vertical: 1),
                              decoration: BoxDecoration(
                                  color: ColorsApp.primary,
                                  borderRadius: BorderRadius.circular(50)),
                              child: Text(
                                'Ville : ${devis.ville!.libelle}',
                                style: TextStyle(color: ColorsApp.white),
                              ),
                            )),
                      ],
                    ),
                  )
                ],
              ),
            ],
          ) /* ) */),
      /* onTap: () =>
            AutoRouter.of(context).push(devisDataRoute(livraison: livraison)) */
    );
  }
}
