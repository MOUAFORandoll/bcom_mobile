// ignore_for_file: must_be_immutable

import 'package:Bcom/application/export_bloc.dart';
import 'package:Bcom/presentation/components/exportcomponent.dart';
import 'package:Bcom/presentation/devis/SuccesDevisPage.dart';
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
                          children: children,
                        ),
                      ),
                    ),
                  ),
                ),
                Container(
                    margin: EdgeInsets.symmetric(horizontal: kMarginX),
                    width: getWith(context),
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
                        text: 'Suivant'.tr(),
                        onTap: () {
                          BlocProvider.of<DevisBloc>(context)
                              .add(ChangeIndexDevis(val: true));
                          // if (state.indexDevis != 2) {
                          //   BlocProvider.of<DevisBloc>(context)
                          //       .add(ChangeIndexDevis(val: true));
                          // }
                          // if (state.indexDevis == 2) {
                          //   BlocProvider.of<DevisBloc>(context).add(NewDevis());
                          // }
                        }))
              ]))));
    });
  }
}
