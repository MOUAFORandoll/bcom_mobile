// ignore_for_file: must_be_immutable

import 'package:Bcom/presentation/components/Form/textform.dart';
import 'package:Bcom/utils/Services/validators.dart';

import 'package:Bcom/application/export_bloc.dart';
import 'package:Bcom/presentation/components/exportcomponent.dart';

import 'package:Bcom/core.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';

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
                          alignment: Alignment.centerLeft,
                          child: Text(
                            'Parlez nous de votre produit'.tr(),
                            style: TextStyle(
                              fontWeight: FontWeight.w500,
                              // color: ColorsApp.tird,
                              fontSize: 12,
                              fontFamily: 'Lato',
                            ),
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
