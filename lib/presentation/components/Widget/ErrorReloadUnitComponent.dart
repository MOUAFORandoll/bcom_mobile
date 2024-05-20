import 'package:Bcom/presentation/components/exportcomponent.dart';

// ignore: must_be_immutable
class ErrorReloadUnitComponent extends StatelessWidget {
  final onTap;
  ErrorReloadUnitComponent({this.onTap});
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
          // decoration: BoxDecoration(
          //   color: ColorsApp.bg,
          // ),
          child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(child: Icon(Icons.refresh, color: ColorsApp.red, size: 30)),
          Container(
              padding: EdgeInsets.symmetric(
                  vertical: kMarginY, horizontal: kMarginX / 2),
              child: Text(
                'Error'.tr(),
                textAlign: TextAlign.center,
                style: TextStyle(
                    fontSize: 18,
                    color: ColorsApp.red,
                    fontWeight: FontWeight.bold),
              )),
        ],
      )),
    );
  }
}
