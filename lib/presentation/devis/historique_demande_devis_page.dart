import 'package:Bcom/presentation/components/Widget/EmptyDevisComponent.dart';
import 'package:Bcom/presentation/components/Widget/ErrorReloadComponent.dart';
import 'package:Bcom/presentation/components/Widget/DevisUserComponent.dart';
import 'package:Bcom/presentation/components/Widget/ShimmerBox.dart';
import 'package:Bcom/presentation/components/Widget/TransactionUserComponent.dart';
import 'package:Bcom/presentation/components/exportcomponent.dart';

import 'package:Bcom/application/export_bloc.dart';

@RoutePage()
class HistoriqueDemandeDevisPage extends StatelessWidget {
  HistoriqueDemandeDevisPage();
  static const routeName = '/DemandeDevis/list';

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AbonnementBloc, AbonnementState>(
        builder: (contextA, stateA) => BlocBuilder<DevisBloc, DevisState>(
              builder: (context, state) => DefaultTabController(
                length: 2,
                child: Scaffold(
                  appBar: AppBar(
                    leading: AppBackButton(),
                    bottom: TabBar(
                      tabs: [
                        Tab(icon: Icon(Icons.list), text: 'Devis'),
                        Tab(
                            icon: Icon(Icons.attach_money),
                            text: 'Transactions'),
                      ],
                    ),
                    title: Text('Historique'),
                    centerTitle: true,
                  ),
                  body: TabBarView(
                    children: [
                      Container(
                        margin: EdgeInsets.only(top: kMarginY * 2).add(
                            EdgeInsets.symmetric(horizontal: kMarginX * 2)),
                        child: SingleChildScrollView(
                          child: state.load_listDevis == 0
                              ? ShimmerBox()
                              : state.load_listDevis == 2
                                  ? ErrorReloadComponent(
                                      onTap: () =>
                                          BlocProvider.of<DevisBloc>(context)
                                              .add(GetListDevis()),
                                    )
                                  : state.listDevis!.length == 0
                                      ? EmptyDevisComponent()
                                      : ListView.builder(
                                          physics:
                                              NeverScrollableScrollPhysics(),
                                          shrinkWrap: true,
                                          itemCount: state.listDevis!.length,
                                          // controller: state,
                                          itemBuilder: (_, index) =>
                                              DevisUserComponent(
                                                devis: state.listDevis![index],
                                              )),
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(top: kMarginY * 2).add(
                            EdgeInsets.symmetric(horizontal: kMarginX * 2)),
                        child: SingleChildScrollView(
                          child: stateA.loadListAbonnement == 0
                              ? ShimmerBox()
                              : stateA.loadListAbonnement == 2
                                  ? ErrorReloadComponent(
                                      onTap: () =>
                                          BlocProvider.of<DevisBloc>(context)
                                              .add(GetListDevis()),
                                    )
                                  : stateA.listTransaction!.length == 0
                                      ? EmptyDevisComponent()
                                      : ListView.builder(
                                          physics:
                                              NeverScrollableScrollPhysics(),
                                          shrinkWrap: true,
                                          itemCount:
                                              stateA.listTransaction!.length,
                                          // controller: stateA,
                                          itemBuilder: (_, index) =>
                                              TransactionUserComponent(
                                                transaction: stateA
                                                    .listTransaction![index],
                                              )),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ));
  }
}
