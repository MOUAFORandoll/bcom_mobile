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
  TextEditingController nom_produit = TextEditingController();

  TextEditingController type_produit = TextEditingController();

  TextEditingController nmbre_biker = TextEditingController();

  TextEditingController zoneActivite = TextEditingController();

  TextEditingController activite = TextEditingController();
  List typeCommunication = ['Type1', 'Type2', ',Type3', ',Type4'];
  String type = 'Type1';
  int timework = 1;
  int inQuartier = 0;

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<UserBloc, UserState>(
        listener: (context, state) {
          if (state.isLoading == 1) {
            EasyLoading.show(
                dismissOnTap: true,
                status: 'En cours',
                maskType: EasyLoadingMaskType.black);
          } else if (state.isLoading == 3) {
            EasyLoading.dismiss();
            showError(state.authenticationFailedMessage!, context);
          } else if (state.isLoading == 2) {
            EasyLoading.dismiss();

            showSuccess('Mise a jour effectuee', context);
            initLoad(context);
            print('-----44--------*********');
          }
        },
        builder: (context, state) => Container(
            margin: EdgeInsets.symmetric(horizontal: kMarginX),
            child: SingleChildScrollView(
              child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      margin: EdgeInsets.only(
                        top: kMarginY,
                      ),
                      child: Text(
                        'Renseignez nous les informations de votre Produit'
                            .tr(),
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 15,
                          // color: ColorsApp.orange,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(top: kMarginY, bottom: kMarginY),
                      child: Column(
                        children: [
                          AppInput(
                            controller: nom_produit,
                            onChanged: (value) {},
                            placeholder: 'Nom de votre produit'.tr(),
                            validator: (value) {
                              return Validators.isValidUsername(value!);
                            },
                          ),
                          AppInput(
                            controller: nom_produit,
                            onChanged: (value) {},
                            placeholder: 'Type de produit'.tr(),
                            validator: (value) {
                              return Validators.isValidUsername(value!);
                            },
                          ),
                          Container(
                              margin: EdgeInsets.symmetric(
                                  horizontal: kMarginX, vertical: kMarginY),
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
                                        controller: type_produit,
                                      ),
                                    )
                                  ])),
                        ],
                      ),
                    ),
                  ]),
            )));
  }
}
