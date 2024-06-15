// ignore_for_file: must_be_immutable

import 'package:Bcom/application/export_bloc.dart';
import 'package:Bcom/presentation/components/Widget/AbonnentComponent.dart';
import 'package:Bcom/presentation/components/Widget/ErrorReloadUnitComponent.dart';
import 'package:Bcom/presentation/components/Widget/ShimmerData.dart';
import 'package:Bcom/presentation/components/exportcomponent.dart';
import 'package:Bcom/presentation/devis/PaiementPage.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';

class SelectAbonnementWidget extends StatelessWidget {
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
        },
        builder: (context0, state) => Column(children: [
              Container(
                  margin: EdgeInsets.symmetric(vertical: kMarginY * 2),
                  child: Text(
                    'Selectionner votre abonnement',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 15,
                      // color: ColorsApp.orange,
                      fontWeight: FontWeight.w700,
                    ),
                  )),
              Container(
                margin: EdgeInsets.symmetric(horizontal: kMarginX),
                height: getHeight(context) * .6,
                child: Stack(children: [
                  state.loadListAbonnement == 0
                      ? ShimmerData()
                      : state.loadListAbonnement == 2
                          ? ErrorReloadUnitComponent(
                              onTap: () =>
                                  BlocProvider.of<AbonnementBloc>(context)
                                      .add(GetListAbonnement()),
                            )
                          : GridView.builder(
                              physics: NeverScrollableScrollPhysics(),
                              gridDelegate:
                                  SliverGridDelegateWithFixedCrossAxisCount(
                                      crossAxisCount: 2,
                                      crossAxisSpacing: 10.0,
                                      childAspectRatio: 20,
                                      mainAxisExtent: 200,
                                      mainAxisSpacing: 20.0),
                              itemCount: state.listAbonnement!.length,
                              itemBuilder: (_ctx, index) => AbonnentComponent(
                                  selected: state.abonnement ==
                                      state.listAbonnement![index],
                                  onTap: () =>
                                      BlocProvider.of<AbonnementBloc>(context)
                                          .add(AbonnementEvent.selectAbonnement(
                                              abonnement: state
                                                  .listAbonnement![index])),
                                  abonnement: state.listAbonnement![index]))
                ]),
              ),
              Container(
                margin: EdgeInsets.symmetric(
                    vertical: kMarginY, horizontal: kMarginX),
                child: AppButton(
                    disabled: state.abonnement == null,
                    size: MainAxisSize.max,
                    // bgColor: ColorsApp.primary,
                    text: 'Payer l\'abonnement'.tr(),
                    onTap: () => BlocProvider.of<AbonnementBloc>(context)
                        .add(PayAbonnement())),
              ),
            ]));
  }
}
