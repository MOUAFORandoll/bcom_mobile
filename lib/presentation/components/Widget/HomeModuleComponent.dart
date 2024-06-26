import 'package:Bcom/presentation/components/exportcomponent.dart';

// ignore: must_be_immutable
class HomeModuleComponent extends StatelessWidget {
  final String title;
  final onTap;
  final image;

  HomeModuleComponent({
    Key? key,
    required this.onTap,
    required this.title,
    required this.image,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
      ),
      padding: EdgeInsets.symmetric(horizontal: kMarginX),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            // width: getWith(context) * .55,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Container(
                  child: Text(
                    title,
                    maxLines: 4,
                    style: TextStyle(
                      fontFamily: 'Lato',
                      fontSize: 14,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
              ],
            ),
          ),
          // Container(
          //     width: getWith(context) * .3,
          //     height: 100,
          //     // decoration: BoxDecoration(
          //     //   image: DecorationImage(
          //     //     image: AssetImage(image),
          //     //   ),
          //     // ),
          //     child: Icon(
          //       Icons.motorcycle_outlined,
          //       size: 60,
          //       color: ColorsApp.second,
          //     )),
        ],
      ),
    );
  }
}
