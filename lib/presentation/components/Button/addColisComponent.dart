// ignore: must_be_immutable
import 'package:Bcom/presentation/components/exportcomponent.dart';

class AddColisComponent extends StatelessWidget {
  final title, onTap, color, icon;

  AddColisComponent({this.icon, this.title, this.color, this.onTap});

  @override
  Widget build(BuildContext context) {
    return InkWell(
        onTap: onTap,
        child: Container(
            width: getWith(context) / 2.35,
            alignment: Alignment.center,
            padding: EdgeInsets.symmetric(vertical: 15, horizontal: 10),
            margin: EdgeInsets.all(5),
            decoration: new BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                border: Border.all(color: ColorsApp.grey)
                // color: (color == null) ? ColorsApp.blue : color,
                ),
            child: Column(
              children: [
                Center(
                  child: Icon(icon, color: color),
                ),
                smallText(text: title, color: color),
              ],
            )));
  }
}
