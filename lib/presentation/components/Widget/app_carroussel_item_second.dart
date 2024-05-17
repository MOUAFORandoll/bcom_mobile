// ignore_for_file: must_be_immutable

import 'package:Bcom/presentation/components/exportcomponent.dart';

class AppCarrousselItemSecond extends StatelessWidget {
  AppCarrousselItemSecond(
      {required this.title,
      required this.description,
      required this.image,
      this.index = 0});
  var title, description, image, index = 0;
  @override
  Widget build(BuildContext context) {
    return Container(
      // decoration: BoxDecoration(
      //   color: ColorsApp.primary,
      // ),

      child: Column(
        children: [
          Container(
            height: getHeight(context) * .40,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage(image),
                fit: BoxFit.cover,
              ),
            ),
          ),
          Container(
              decoration: BoxDecoration(
                border: Border(top: BorderSide.none),
              ),
              margin: EdgeInsets.only(
                bottom: kMarginY,
              ),
              child: Text(
                title,
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 15, fontWeight: FontWeight.w600),
              )),
          Container(
              decoration: BoxDecoration(
                border: Border(top: BorderSide.none),
              ),
              margin: EdgeInsets.only(
                bottom: kMarginY,
              ),
              padding: EdgeInsets.all(kMarginX),
              child: Text(
                description,
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 15, fontWeight: FontWeight.w600),
              )),
        ],
      ),
    );
  }
}
