// ignore_for_file: must_be_immutable

import 'package:Bcom/presentation/components/exportcomponent.dart';
import 'package:Bcom/utils/constants/assets.dart';
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
            fit: BoxFit.cover,
            imageUrl: image,
            imageBuilder: (context, imageProvider) {
              return Container(
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  image: DecorationImage(
                    image: imageProvider,
                    fit: BoxFit.cover,
                  ),
                ),
              );
            },
            placeholder: (context, url) {
              return Container(
                decoration: BoxDecoration(
                    color: ColorsApp.grey,
                    borderRadius: BorderRadius.circular(50)),
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
