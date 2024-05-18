import 'package:Bcom/presentation/components/exportcomponent.dart';

// ignore: must_be_immutable
class EmptyDevisComponent extends StatelessWidget {
  Widget build(BuildContext context) {
    return Container(
        margin: EdgeInsets.symmetric(vertical: getHeight(context) / 6),
        decoration: BoxDecoration(
          color: ColorsApp.bg,
        ),
        alignment: Alignment.center,
        padding: EdgeInsets.symmetric(horizontal: kMarginX, vertical: kMarginY),
        child: Text(
          'Liste de devis Vide'.tr(),
          style: TextStyle(fontSize: kBasics, fontWeight: FontWeight.w700),
        ));
  }
}
