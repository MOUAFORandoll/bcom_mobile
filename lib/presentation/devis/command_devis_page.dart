// ignore_for_file: must_be_immutable

import 'package:Bcom/presentation/devis/SuccesDevisPage.dart';
import 'package:Bcom/presentation/devis/infos_devis.dart';
import 'package:Bcom/presentation/devis/infos_produit.dart';
import 'package:Bcom/presentation/devis/select_package.dart';
import 'package:Bcom/application/export_bloc.dart';
import 'package:Bcom/presentation/components/exportcomponent.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';

@RoutePage()
class CommandDevisPage extends StatefulWidget {
  static const String routeName = '/cammand_devis';

  @override
  State<CommandDevisPage> createState() => _CommandDevisPageState();
}

class _CommandDevisPageState extends State<CommandDevisPage> {
  int indexDevisPage = 0;

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<DevisBloc, DevisState>(
        listener: (context, state) {
          if (state.isRequest == 0) {
            EasyLoading.show(
                dismissOnTap: true,
                status: 'En cours',
                maskType: EasyLoadingMaskType.black);
          } else if (state.isRequest == 1) {
            showSuccess('Demande devis envoye', context);
            EasyLoading.dismiss();
            AutoRouter.of(context).pushNamed(SuccesDevisPage.routeName);
          } else if (state.isRequest == 2) {
            EasyLoading.dismiss();

            showError('Une erreur est survenue', context);

            print('-----44--------*********');
          }
        },
        builder: (context, state) => RefreshIndicator(
            child: Scaffold(
                appBar: AppBar(
                  leading: AppBackButton(),
                  title: Text('Commander un devis'),
                  centerTitle: true,
                ),
                body: Container(
                    child: Column(children: [
                  Container(
                    alignment: Alignment.center,
                    child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                              margin: EdgeInsets.symmetric(
                                  horizontal: kMarginX, vertical: kMarginY),
                              decoration: BoxDecoration(
                                  color: ColorsApp.primary,
                                  borderRadius: BorderRadius.circular(50)),
                              height: 30,
                              width: 30,
                              alignment: Alignment.center,
                              child: Text(
                                '${state.indexDevis! + 1}',
                                style: TextStyle(
                                  color: ColorsApp.white,
                                  fontWeight: FontWeight.bold,
                                ),
                              )),
                        ]),
                  ),
                  Expanded(
                    child: Container(
                      decoration: BoxDecoration(
                          color: ColorsApp.white,
                          boxShadow: [
                            BoxShadow(
                              color: ColorsApp.primary.withOpacity(0.1),
                              spreadRadius: 5,
                              blurRadius: 5,
                              offset: Offset(0, 2),
                            ),
                            BoxShadow(
                              color: ColorsApp.grey.withOpacity(0.1),
                              spreadRadius: 5,
                              blurRadius: 5,
                              offset: Offset(0, 2),
                            ),
                          ],
                          borderRadius: BorderRadius.circular(8)),
                      margin: EdgeInsets.symmetric(
                          horizontal: kMarginX, vertical: kMarginY),
                      padding: EdgeInsets.all(kMarginX * 1.5),
                      child: SingleChildScrollView(
                          child: state.indexDevis == 0
                              ? SelectPackage()
                              : state.indexDevis == 1
                                  ? InfoDevis()
                                  : InfoProduit()),
                    ),
                  ),
                  if (state.indexDevis == 0)
                    Container(
                        margin: EdgeInsets.symmetric(horizontal: kMarginX),
                        child: AppButton(
                            size: MainAxisSize.max,
                            disabled: state.pack == null,
                            // bgColor: ColorsApp.primary,
                            text: 'Suivant'.tr(),
                            onTap: () => BlocProvider.of<DevisBloc>(context)
                                .add(ChangeIndexDevis(val: true)))),
                  if (state.indexDevis != 0)
                    Container(
                        margin: EdgeInsets.symmetric(horizontal: kMarginX),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(
                                width: getWith(context) * .45,
                                child: AppButton(
                                    size: MainAxisSize.max,
                                    // bgColor: ColorsApp.primary,
                                    text: 'Retour'.tr(),
                                    onTap: () =>
                                        BlocProvider.of<DevisBloc>(context).add(
                                            ChangeIndexDevis(val: false)))),
                            Container(
                                width: getWith(context) * .45,
                                child: AppButton(
                                    size: MainAxisSize.max,
                                    disabled: (state.indexDevis == 1)
                                        ? state.nombreBiker.text.isEmpty ||
                                            state.dureeTravail.text.isEmpty ||
                                            state.zone.text.isEmpty ||
                                            state.typeCommunication == null ||
                                            state.ville == null ||
                                            state.inQuartier == null ||
                                            state.typeTravail == null
                                        : false,
                                    // bgColor: ColorsApp.primary,
                                    text: 'Suivant'.tr(),
                                    onTap: () {
                                      if (state.indexDevis != 2) {
                                        BlocProvider.of<DevisBloc>(context)
                                            .add(ChangeIndexDevis(val: true));
                                      }
                                      if (state.indexDevis == 2) {
                                        BlocProvider.of<DevisBloc>(context)
                                            .add(NewDevis());
                                      }
                                    }))
                          ],
                        )),
                  /*   Container(
                width: getWith(context) * .4,
                child: AppButton(
                    size: MainAxisSize.max,
                    // bgColor: ColorsApp.primary,
                    text: 'Terminer'.tr(),
                    onTap: () async {
                      // if ((motoman == 0 && zoneActivite.text.isEmpty) ||
                      //     (motoman == 1 && activite.text.isEmpty) ||
                      //     (havemoto == 0 && cartegrise.text.isEmpty) ||
                      //     (symdicat == 0 && symdicatText.text.isEmpty) ||
                      //     (state.cniImageAvant == null ||
                      //         state.cniImageArriere ==
                      //             null /* ||
                      //                           state.cartegriseImage ==
                      //                               null */
                      //     )) {
                      //   showError('Veuillez remplir tous les champs', context);
                      // } else {
                      // print('ok');

                      // final DatabaseCubit database = sl.get<DatabaseCubit>();
                      // var key = await database.getKey();
                      // print(key);
                      // FormData formData = FormData.fromMap({
                      //   'age': age.text,
                      //   'gender': _genre == 0 ? 'Homme' : 'Femme',
                      //   'cni': cni.text,
                      //   'handicap': handicat == 0,
                      //   'handicap_description': handicatText.text,
                      //   'is_User': motoman == 0,
                      //   'is_User_yes': zoneActivite.text,
                      //   'is_User_no': activite.text,
                      //   'is_syndicat': symdicat == 0,
                      //   'is_syndicat_yes': age.text,
                      //   'have_moto': havemoto == 0,
                      //   'num_carte_grise_moto': age.text,
                      //   'bike_work_time': timework,
                      //   'keySecret': key
                      // });
                      // if (state.cniImageAvant != null)
                      //   formData.files.add(MapEntry(
                      //       'cni_avant',
                      //       await MultipartFile.fromFile(
                      //         state.cniImageAvant!.path,
                      //         filename: 'cni_avant.jpg',
                      //       )));
                      // if (state.cniImageArriere != null)
                      //   formData.files.add(MapEntry(
                      //       'cni_arriere',
                      //       await MultipartFile.fromFile(
                      //         state.cniImageArriere!.path,
                      //         filename: 'cni_arriere.jpg',
                      //       )));
                      // if (state.cartegriseImage != null)
                      //   formData.files.add(MapEntry(
                      //       'carte_grise',
                      //       await MultipartFile.fromFile(
                      //         state.cartegriseImage!.path,
                      //         filename: 'carte_grise.jpg',
                      //       )));
                      // print(formData);
                      // context.read<UserBloc>().add(
                      //     CompleteUserInfo(
                      //         data: formData));
                      // BlocProvider.of<HomeBloc>(context)
                      //     .add(UserDataEvent());
                      // }
                    }),
              )
            */
                ]))),
            onRefresh: () => Future.delayed(
                Duration(seconds: 5),
                () => BlocProvider.of<DevisBloc>(context)
                  ..add(GetListPack())
                  ..add(GetListDevis())
                  ..add(GetListVille()))));
  }
}
