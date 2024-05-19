import 'package:Bcom/presentation/components/Widget/EmptyDevisComponent.dart';
import 'package:Bcom/presentation/components/Widget/ErrorReloadComponent.dart';
import 'package:Bcom/presentation/components/Widget/DevisUserComponent.dart';
import 'package:Bcom/presentation/components/Widget/ShimmerBox.dart';
import 'package:Bcom/presentation/components/exportcomponent.dart';

import 'package:Bcom/application/export_bloc.dart';

@RoutePage()
class HistoriqueDemandeDevisPage extends StatelessWidget {
  HistoriqueDemandeDevisPage();
  static const routeName = '/DemandeDevis/list';

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<DevisBloc, DevisState>(
        listener: (context, state) async {},
        builder: (context, state) => Container(
              margin: EdgeInsets.only(top: kMarginY * 2)
                  .add(EdgeInsets.symmetric(horizontal: kMarginX * 2)),
              child: SingleChildScrollView(
                child: state.load_list_devis == 0
                    ? ShimmerBox()
                    : state.load_list_devis == 2
                        ? ErrorReloadComponent(
                            onTap: () => BlocProvider.of<DevisBloc>(context)
                                .add(GetListDevis()),
                          )
                        : state.list_devis!.length == 0
                            ? EmptyDevisComponent()
                            : ListView.builder(
                                physics: NeverScrollableScrollPhysics(),
                                shrinkWrap: true,
                                itemCount: state.list_devis!.length,
                                // controller: state,
                                itemBuilder: (_, index) => DevisUserComponent(
                                      devis: state.list_devis![index],
                                    )),
              ),
            ));
  }
}
