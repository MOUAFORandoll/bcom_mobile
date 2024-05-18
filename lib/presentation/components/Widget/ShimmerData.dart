import 'package:Bcom/presentation/components/exportcomponent.dart';

class ShimmerData extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Shimmer.fromColors(
      baseColor: ColorsApp.grey,
      highlightColor: Colors.blueGrey,
      child: Container(
          height: getHeight(context) * .9,
          // margin: EdgeInsets.symmetric(horizontal: kMarginX),
          child: SizedBox(
              height: getHeight(context) * .9,
              child: Stack(children: [
                GridView.builder(
                    physics: NeverScrollableScrollPhysics(),
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 2,
                        crossAxisSpacing: 0.0,
                        childAspectRatio: 10,
                        mainAxisExtent: 100,
                        mainAxisSpacing: 10.0),
                    itemCount: 6,
                    itemBuilder: (_ctx, index) => Container(
                          height: 4.2,
                          width: getWith(context),
                          alignment: Alignment.center,
                          // padding: EdgeInsets.all(kMarginX),
                          margin: EdgeInsets.symmetric(horizontal: kMarginX),
                          decoration: BoxDecoration(
                              color: ColorsApp.grey,
                              borderRadius: BorderRadius.circular(8)),
                        ))
              ]))),
    );
  }
}
