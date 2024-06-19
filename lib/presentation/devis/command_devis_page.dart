// ignore_for_file: must_be_immutable

import 'package:Bcom/application/export_bloc.dart';
import 'package:Bcom/presentation/components/exportcomponent.dart';
import 'package:Bcom/presentation/devis/SuccesDevisPage.dart';
import 'package:Bcom/presentation/devis/infos_produit.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';

@RoutePage()
class CommandDevisPage extends StatefulWidget {
  static const String routeName = '/cammand_devis';

  @override
  State<CommandDevisPage> createState() => _CommandDevisPageState();
}

class _CommandDevisPageState extends State<CommandDevisPage> {
  @override
  Widget build(BuildContext context) {
    return BlocConsumer<DevisBloc, DevisState>(listener: (context, state) {
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
    }, builder: (context, state) {
      List<Widget> children;

      if (state.load_list_parametre == 0) {
        children = [CircularProgressIndicator()];
      } else if (state.list_widget_devis != null &&
          state.list_widget_devis!.isNotEmpty) {
        children = state.list_widget_devis!;
      } else {
        children = [Text('Aucun paramètre trouvé')];
      }

      return Scaffold(
          appBar: AppBar(
              leading: AppBackButton(),
              title: Text('Commander un devis'),
              centerTitle: true,
              actions: [
                InkWell(
                    child: Container(
                        margin: EdgeInsets.only(right: kMarginX),
                        child: Icon(Icons.refresh)),
                    onTap: () => BlocProvider.of<DevisBloc>(context)
                        .add(GetListParametre()))
              ]),
          body: Form(
              key: state.formKey,
              child: Container(
                  child: Column(children: [
                Container(
                  alignment: Alignment.center,
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                            margin: EdgeInsets.symmetric(
                                horizontal: kMarginX, vertical: kMarginY),
                            alignment: Alignment.center,
                            child: Text(
                              'Merci de remplir le formulaire suivant',
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                              ),
                            )),
                      ]),
                ),
                Container(
                    alignment: Alignment.center,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          child: Text(
                            'Etape',
                            style: TextStyle(color: ColorsApp.second),
                          ),
                        ),
                        Container(
                            decoration: BoxDecoration(
                                color: ColorsApp.second,
                                borderRadius: BorderRadius.circular(90)),
                            padding: EdgeInsets.symmetric(
                                horizontal: 10, vertical: 3),
                            margin: EdgeInsets.symmetric(
                              horizontal: kMarginX,
                            ),
                            child: Text(
                              '${state.indexDevis! + 1}',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: ColorsApp.white),
                            )),
                      ],
                    )),
                if (state.indexDevis == 1)
                  Container(
                      margin: EdgeInsets.symmetric(
                          horizontal: kMarginX, vertical: kMarginY),
                      alignment: Alignment.center,
                      child: Text(
                        'Le montant de votre devis est de ${state.montantDevis} FCFA',
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: ColorsApp.second),
                      )),
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
                      child: SingleChildScrollView(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: state.indexDevis == 0
                              ? [InfoProduit()]
                              : children,
                        ),
                      ),
                    ),
                  ),
                ),
                state.indexDevis == 1
                    ? Row(
                        children: [
                          Container(
                              margin:
                                  EdgeInsets.symmetric(horizontal: kMarginX),
                              width: getWith(context) * .4,
                              child: AppButton(
                                  size: MainAxisSize.max,
                                  text: 'Back'.tr(),
                                  onTap: () {
                                    BlocProvider.of<DevisBloc>(context)
                                        .add(ChangeIndexDevis(val: false));
                                  })),
                          Container(
                              margin:
                                  EdgeInsets.symmetric(horizontal: kMarginX),
                              width: getWith(context) * .4,
                              child: AppButton(
                                  size: MainAxisSize.max,
                                  text: 'Envoyer'.tr(),
                                  onTap: () {
                                    BlocProvider.of<DevisBloc>(context)
                                        .add(NewDevis());
                                  })),
                        ],
                      )
                    : Container(
                        margin: EdgeInsets.symmetric(horizontal: kMarginX),
                        width: getWith(context),
                        child: AppButton(
                            size: MainAxisSize.max,
                            disabled: state.description_produit.text.isEmpty,
                            text: 'Suivant'.tr(),
                            onTap: () {
                              BlocProvider.of<DevisBloc>(context)
                                  .add(ChangeIndexDevis(val: true));
                            }))
              ]))));
    });
  }
}
