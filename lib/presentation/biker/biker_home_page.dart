import 'package:Bcom/presentation/biker/first_biker_view.dart';
import 'package:Bcom/presentation/biker/list_missions_view.dart';
import 'package:Bcom/utils/constants/assets.dart';
import 'package:custom_navigation_bar/custom_navigation_bar.dart';
import 'package:flutter_svg/flutter_svg.dart';
import '../components/exportcomponent.dart';
import 'package:Bcom/application/export_bloc.dart';

var loader = AppLoader.bounceLargeColorLoaderController();

class BikerHomePage extends StatefulWidget {
  const BikerHomePage({super.key});
  @override
  State<BikerHomePage> createState() => _BikerHomePageState();
}

class _BikerHomePageState extends State<BikerHomePage>
    with WidgetsBindingObserver {
  @override
  Widget build(BuildContext context) {
    return BlocConsumer<HomeBloc, HomeState>(
        listener: (context, state) {},
        builder: (context, state) => Scaffold(
            backgroundColor: ColorsApp.bg,
            body: SafeArea(
                child:
                    state.index == 0 ? FirstBikerView() : ListMissionsView()),
            bottomNavigationBar: CustomNavigationBar(
              iconSize: 30.0,
              // elevation: 0.0,
              scaleFactor: 0.4,
              selectedColor: Color(0xff0c18fb),
              strokeColor: Color(0x300c18fb),
              unSelectedColor: Colors.grey[600],
              backgroundColor:
                  /*     state.index == 2 ? ColorsApp.second : */ ColorsApp.bg,
              // borderRadius: Radius.circular(15.0),
              // isFloating: true,
              // blurEffect: true,
              items: [
                CustomNavigationBarItem(
                    icon: Container(
                      height: getHeight(context) / 1.7,
                      width: getWith(context) / 4.2,
                      child: SvgPicture.asset(
                        Assets.home,
                        width: 90,
                        height: 90,
                        // ignore: deprecated_member_use
                        color: state.index == 0
                            ? ColorsApp.second
                            : ColorsApp.grey,
                      ),
                    ),
                    title: Container(
                        padding: EdgeInsets.only(bottom: 3),
                        decoration: BoxDecoration(
                            border: Border(
                                bottom: state.index == 0
                                    ? BorderSide(
                                        color: ColorsApp.second, width: 2)
                                    : BorderSide.none,
                                top: BorderSide.none)),
                        child: Text('home'.tr(),
                            style: TextStyle(
                              fontSize: kMin,
                              fontWeight: FontWeight.w600,
                              color: state.index == 0
                                  ? ColorsApp.second
                                  : ColorsApp.grey,
                            )))), // CustomNavigationBarItem(

                CustomNavigationBarItem(
                  icon: Container(
                    height: getHeight(context) / 1.7,
                    width: getWith(context) / 4.2,
                    child: SvgPicture.asset(
                      Assets.grid1,
                      width: 80,
                      height: 80,
                      // ignore: deprecated_member_use
                      color:
                          state.index == 1 ? ColorsApp.second : ColorsApp.grey,
                    ),
                  ),
                  title: Container(
                      padding: EdgeInsets.only(bottom: 3),
                      decoration: BoxDecoration(
                          border: Border(
                              bottom: state.index == 1
                                  ? BorderSide(
                                      color: ColorsApp.second, width: 2)
                                  : BorderSide.none,
                              top: BorderSide.none)),
                      child: Text('historique'.tr(),
                          style: TextStyle(
                            fontSize: kMin,
                            fontWeight: FontWeight.w600,
                            color: state.index == 1
                                ? ColorsApp.second
                                : ColorsApp.grey,
                          ))),
                ),
              ],
              currentIndex: state.index,
              onTap: (index) {
                print(index);
                context.read<HomeBloc>().add(SetIndexEvent(index: index));
              },
            )));
  }
}
