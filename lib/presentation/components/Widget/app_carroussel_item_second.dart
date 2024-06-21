// ignore_for_file: must_be_immutable

import 'package:Bcom/presentation/components/exportcomponent.dart';
import 'package:Bcom/utils/constants/assets.dart';
import 'package:Bcom/utils/functions/formatData.dart';
import 'package:cached_network_image/cached_network_image.dart';

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
          CachedNetworkImage(
            height: getHeight(context) * .40,
            fit: BoxFit.fill,
            imageUrl: image,
            imageBuilder: (context, imageProvider) {
              return Container(
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: imageProvider,
                    fit: BoxFit.fill,
                  ),
                ),
              );
            },
            placeholder: (context, url) {
              return Container(
                decoration: BoxDecoration(
                  color: ColorsApp.grey,
                ),
                child: Center(
                    child: CircularProgressIndicator(color: ColorsApp.second)),
              );
            },
            errorWidget: (context, url, error) {
              return Container(
                height: getHeight(context) * .40,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage(Assets.logo),
                    fit: BoxFit.cover,
                  ),
                ),
              );
            },
          ),
          Container(
              decoration: BoxDecoration(
                border: Border(top: BorderSide.none),
              ),
              margin: EdgeInsets.only(
                bottom: kMarginY,
              ),
              child: Text(
                FormatData().capitalizeFirstLetter(title),
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
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
                FormatData().capitalizeFirstLetter(description),
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 15,
                ),
              )),
        ],
      ),
    );
  }
}
