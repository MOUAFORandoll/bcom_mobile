import 'package:Bcom/application/model/exportmodel.dart';

import 'package:Bcom/presentation/components/exportcomponent.dart';

// ignore: must_be_immutable
class TransactionUserComponent extends StatelessWidget {
  TransactionModel transaction;

  TransactionUserComponent({required this.transaction});
  GlobalKey globalKey = new GlobalKey();
  @override
  Widget build(BuildContext context) {
    // titre.text = transaction.titre;
    // quantite.text = transaction.quantite.toString();
    // prix.text = transaction.prix.toString();
    // description.text = transaction.description;
    return InkWell(
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: kMarginX, vertical: kMarginY),
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
                  Text(
                      'Achat d\'un abonnement ${transaction.title}', // overflow: TextOverflow.ellipsis,
                      style: TextStyle(
                          color: ColorsApp.primary,
                          fontSize: 14,
                          fontWeight: FontWeight.w700)),
                  Container(
                      height: 10,
                      width: 10,
                      decoration: BoxDecoration(
                          color: transaction.status == 'complete'
                              ? ColorsApp.second
                              : ColorsApp.primary,
                          borderRadius: BorderRadius.circular(30))),
                ],
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(children: [
                  Container(
                      margin: EdgeInsets.symmetric(vertical: kMarginY / 2),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Container(
                                  child: Text('Status : ',
                                      overflow: TextOverflow.ellipsis,
                                      style: TextStyle(
                                        fontSize: 14,
                                        color: ColorsApp.primary,
                                      )),
                                ),
                                Container(
                                  child: Text(transaction.status,
                                      overflow: TextOverflow.ellipsis,
                                      style: TextStyle(
                                        fontSize: 16,
                                        fontWeight: FontWeight.w600,
                                        color: ColorsApp.primary,
                                      )),
                                ),
                              ],
                            ),
                          ),
                          Container(
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Container(
                                  child: Text('Duree : ',
                                      overflow: TextOverflow.ellipsis,
                                      style: TextStyle(
                                        fontSize: 14,
                                        color: ColorsApp.primary,
                                      )),
                                ),
                                Container(
                                  child: Text(
                                      transaction.duration == null
                                          ? 'Indefini'
                                          : '${transaction.duration} Jour',
                                      overflow: TextOverflow.ellipsis,
                                      style: TextStyle(
                                        fontSize: 16,
                                        fontWeight: FontWeight.w600,
                                        color: ColorsApp.primary,
                                      )),
                                ),
                              ],
                            ),
                          ),
                          Container(
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Container(
                                  child: Text('Montant : ',
                                      overflow: TextOverflow.ellipsis,
                                      style: TextStyle(
                                        fontSize: 14,
                                        color: ColorsApp.primary,
                                      )),
                                ),
                                Container(
                                  child: Text(
                                      transaction.amount.toString() + ' XAF',
                                      overflow: TextOverflow.ellipsis,
                                      style: TextStyle(
                                        fontSize: 16,
                                        fontWeight: FontWeight.w600,
                                        color: ColorsApp.primary,
                                      )),
                                ),
                              ],
                            ),
                          ),
                        ],
                      )),
                ]),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
