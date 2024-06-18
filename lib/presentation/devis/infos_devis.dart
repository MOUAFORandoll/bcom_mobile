// ignore_for_file: must_be_immutable

import 'package:Bcom/application/model/exportmodel.dart';
import 'package:Bcom/presentation/components/Widget/ErrorReloadUnitComponent.dart';
import 'package:Bcom/presentation/components/Widget/entry_time_field.dart';
import 'package:Bcom/utils/Services/validators.dart';

import 'package:Bcom/application/export_bloc.dart';
import 'package:Bcom/presentation/components/exportcomponent.dart';

class InfoDevis extends StatefulWidget {
  @override
  State<InfoDevis> createState() => _InfoDevisState();
}

class _InfoDevisState extends State<InfoDevis> {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<DevisBloc, DevisState>(
      builder: (context, state) {
        List<Widget> children;

        if (state.load_list_parametre == 0) {
          children = [CircularProgressIndicator()];
        } else if (state.list_widget_devis != null &&
            state.list_widget_devis!.isNotEmpty) {
          children = state.list_widget_devis!;
        } else {
          children = [Text('Aucun paramètre trouvé')];
        }

        return Container(
          margin: EdgeInsets.symmetric(horizontal: kMarginX),
          child: BlocProvider.value(
            value: context.watch<DevisBloc>(),
            child: SingleChildScrollView(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: children,
              ),
            ),
          ),
        );
      },
    );
  }
}
