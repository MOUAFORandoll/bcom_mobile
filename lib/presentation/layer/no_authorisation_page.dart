import 'package:Bcom/presentation/biker/first_biker_view.dart';
import 'package:Bcom/presentation/biker/list_missions_view.dart';
import 'package:Bcom/presentation/components/Widget/icon_svg.dart';
import 'package:Bcom/presentation/components/Widget/k_home_info.dart';
import 'package:Bcom/utils/constants/assets.dart';
import 'package:custom_navigation_bar/custom_navigation_bar.dart';
import 'package:flutter_svg/flutter_svg.dart';
import '../components/exportcomponent.dart';
import 'package:Bcom/application/export_bloc.dart';

class NoAuthorisation extends StatelessWidget {
  const NoAuthorisation({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<HomeBloc, HomeState>(
        listener: (context, state) {},
        builder: (context, state) => Scaffold(
            backgroundColor: ColorsApp.bg,
            body: Container(
                child: CustomScrollView(slivers: [
              SliverAppBar(
                automaticallyImplyLeading: false,
                leading: Builder(builder: (context) {
                  return InkWell(
                      child: Container(
                        width: 10,
                        height: 10,
                        child: SvgPicture.asset(Assets.menu,
                            color: ColorsApp.white, fit: BoxFit.none),
                      ),
                      onTap: () => Scaffold.of(context).openDrawer());
                }),
                title: Text(
                  'Bcom',
                  overflow: TextOverflow.ellipsis,
                  style: TextStyle(
                      color: ColorsApp.white,
                      fontFamily: 'Lato',
                      fontSize: 20,
                      fontWeight: FontWeight.w600),
                ),
                centerTitle: true,
                // flexibleSpace: Container(
                //   margin:
                //       EdgeInsets.symmetric(horizontal: getWith(context) / 2.5,
                //       vertical: getHeight(context)/2.5),
                //   child: Text(
                //     'Bcom',
                //     overflow: TextOverflow.ellipsis,
                //     style: TextStyle(
                //         color: ColorsApp.white,
                //         fontFamily: 'Lato',
                //         fontSize: 20,
                //         fontWeight: FontWeight.w600),
                //   ),
                // ),
                actions: [
                  InkWell(
                      child: Container(
                          margin: EdgeInsets.only(right: kMarginX * 2),
                          child: SvgIcon(
                            icon: Assets.bell,
                            color: ColorsApp.white,
                          )),
                      onTap: () {
                        // Get.toNamed(AppLinks.NOTIFICATION);
                      }),
                ],
                bottom: PreferredSize(
                  preferredSize: Size.fromHeight(getHeight(context) * .10),
                  child: Container(
                    margin: EdgeInsets.symmetric(
                      horizontal: kMarginX,
                    ).add(EdgeInsets.only(
                      bottom: kMarginY * 3,
                      right: kMarginX,
                    )),
                    child: KHomeInfo(user: state.user),
                  ),
                ),
                pinned: true,
                expandedHeight: getHeight(context) * .22,
                elevation: 10.0,
                backgroundColor: ColorsApp.second, //
              ),
              SliverToBoxAdapter(
                  child: Container(
                alignment: Alignment.center,
                margin: EdgeInsets.only(top: getHeight(context) / 3),
                child: Text(
                  'Vous n\'avez pas l\'authorisaton de consulter cette page',
                  overflow: TextOverflow.ellipsis,
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
              ))
            ])),
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
              ],
              currentIndex: state.index,
              onTap: (index) {},
            )));
  }
}
