// ignore_for_file: must_be_immutable

import 'package:Bcom/presentation/components/Form/textform.dart';
import 'package:Bcom/application/export_bloc.dart';
import 'package:Bcom/presentation/components/exportcomponent.dart';

class InfoProduit extends StatefulWidget {
  @override
  State<InfoProduit> createState() => _InfoProduitState();
}

class _InfoProduitState extends State<InfoProduit> {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<DevisBloc, DevisState>(
        builder: (context, state) => Container(
                child: SingleChildScrollView(
              child: Container(
                  alignment: Alignment.centerLeft,
                  child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          margin: EdgeInsets.only(bottom: kMarginY),
                          child: Row(
                            children: [
                              Container(
                                  child: Text(
                                'Parlez nous de votre produit'.tr(),
                                style: TextStyle(
                                  fontWeight: FontWeight.w500,
                                  // color: ColorsApp.tird,
                                  fontSize: 12,
                                  fontFamily: 'Lato',
                                ),
                              )),
                              Container(
                                  margin: EdgeInsets.only(left: kMarginX),
                                  child: Text(
                                    '*',
                                    style: TextStyle(
                                      fontWeight: FontWeight.w500,
                                      color: ColorsApp.red,
                                      fontSize: 20,
                                      fontFamily: 'Lato',
                                    ),
                                  )),
                            ],
                          ),
                        ),
                        Container(
                          child: TextForm(
                            controller: state.description_produit,
                          ),
                        )
                      ])),
            )));
  }
}
