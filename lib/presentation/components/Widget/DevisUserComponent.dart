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
                    Container(
                      child: Text('Demande de devis du : ',

                          // overflow: TextOverflow.ellipsis,
                          style: TextStyle(
                              color: ColorsApp.primary,
                              fontSize: 14,
                              fontWeight: FontWeight.w700)),
                    ),
                    Container(
                      child: Text(
                          FormatDateTime()
                              .dateToSimpleDate(devis.createdAt.toString())
                              .toString(),

                          // overflow: TextOverflow.ellipsis,
                          style: TextStyle(
                              color: ColorsApp.primary,
                              fontSize: 14,
                              fontWeight: FontWeight.w700)),
                    ),
                  ],
                ),
              ),
              Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        child: Text('Numero de devis : ',

                            // overflow: TextOverflow.ellipsis,
                            style: TextStyle(
                                color: ColorsApp.primary,
                                fontSize: 14,
                                fontWeight: FontWeight.w500)),
                      ),
                      Container(
                        child: Text(devis.devisNumber.toString(),
                            // overflow: TextOverflow.ellipsis,
                            style: TextStyle(
                                color: ColorsApp.primary,
                                fontSize: 14,
                                fontWeight: FontWeight.w700)),
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        child: Text('Montant du devis : ',

                            // overflow: TextOverflow.ellipsis,
                            style: TextStyle(
                                color: ColorsApp.primary,
                                fontSize: 14,
                                fontWeight: FontWeight.w500)),
                      ),
                      Container(
                        child: Text(devis.amount.toString() + ' XAF',
                            // overflow: TextOverflow.ellipsis,
                            style: TextStyle(
                                color: ColorsApp.primary,
                                fontSize: 14,
                                fontWeight: FontWeight.w700)),
                      ),
                    ],
                  ),
                  Container(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
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
                                'desciption  ',
                              )),
                            ],
                          ),
                        ),
                        Container(
                            child: Text(devis.desciption!,
                                style: TextStyle(
                                    color: ColorsApp.primary,
                                    fontSize: 14,
                                    fontWeight: FontWeight.w600))),
                      ],
                    ),
                  )
                ],
              ),
            ],
          )),
      /* onTap: () =>
            AutoRouter.of(context).push(devisDataRoute(livraison: livraison)) */
    );
  }
}
