// ignore: must_be_immutable import 'package:Bcom/presentation/model/data/CategoryModel.dart';

import 'package:Bcom/utils/constants/assets.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'package:Bcom/presentation/components/exportcomponent.dart';

// ignore: must_be_immutable
class AppLoading extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: getWith(context),

      // color: Colors.white,
      child: Shimmer.fromColors(
          baseColor: ColorsApp.grey,
          highlightColor: Colors.blueGrey,
          child: SvgPicture.asset(
            Assets.logoSvg,
            width: getWith(context),
            height: getHeight(context),
          )),
    );
  }
}
