import 'package:Bcom/routes/app_router.gr.dart';
import 'package:Bcom/presentation/components/exportcomponent.dart';

import '../../application/export_bloc.dart';

@RoutePage()
class SuccesDevisPage extends StatelessWidget {
  const SuccesDevisPage({super.key});
  static const routeName = '/livraison/success';
  @override
  Widget build(BuildContext context) {
    return BlocConsumer<DevisBloc, DevisState>(
        listener: (context, state) {
          // if (state.isDownloadFacture == 1) {
          //   EasyLoading.dismiss();
          //   showSuccess('successaveFacture'.tr(), context);
          // } else if (state.isDownloadFacture == 2) {
          //   EasyLoading.dismiss();
          //   showError('errorsaveFature'.tr(), context);
          // } else if (state.isDownloadFacture == 3) {
          //   EasyLoading.show(
          //       dismissOnTap: true,
          //       status: 'En cours',
          //       maskType: EasyLoadingMaskType.black);
          // }
        },
        builder: (context, state) => Container(
            child: Scaffold(
                backgroundColor: ColorsApp.white,
                appBar: AppBar(
                    leading: Container(),
                    backgroundColor: Colors.transparent,
                    elevation: 0),
                body: Padding(
                    padding: EdgeInsets.symmetric(
                        vertical: 10, horizontal: kMarginX),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          decoration: BoxDecoration(
                            color: ColorsApp.second,
                            borderRadius: BorderRadius.circular(60),
                          ),
                          padding: EdgeInsets.all(kMarginY * 1.5),
                          child: Icon(Icons.check,
                              color: Colors.white, size: 40.0),
                        ),
                        Container(
                            margin: EdgeInsets.symmetric(
                              vertical: kMarginY * 2,
                            ),
                            child: Text(
                                'Demande de devis enregistrer avec success'
                                    .tr(),
                                textAlign: TextAlign.center,
                                style: TextStyle(color: ColorsApp.primary))),
                        Container(
                            margin: EdgeInsets.symmetric(
                              vertical: kMarginY * 2,
                            ),
                            child: Text(
                                'Nous vous contactons dans les plus bref delais'
                                    .tr(),
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                    color: ColorsApp.grey, fontSize: 13))),
                        Container(
                          margin: EdgeInsets.symmetric(
                            vertical: kMarginY * 4,
                          ),
                          child: AppButton(
                            size: MainAxisSize.max,
                            // border: Border.all(color: ColorsApp.primary),
                            text: 'yMenu'.tr(),
                            onTap: () async {
                              context
                                  .read<HomeBloc>()
                                  .add(SetIndexEvent(index: 0));

                              AutoRouter.of(context).replaceAll([HomeRoute()]);
                            },
                          ),
                        )
                      ],
                    )))));
  }
}
