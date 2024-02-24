import 'package:Bcom/application/biker/biker_bloc.dart';
import 'package:Bcom/presentation/biker/list_missions_termine.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../components/exportcomponent.dart';
import 'package:Bcom/presentation/components/Widget/icon_svg.dart';

import 'package:Bcom/utils/constants/assets.dart';

import 'package:flutter_svg/svg.dart';

var loader = AppLoader.bounceLargeColorLoaderController();

// ignore: must_be_immutable
class ListMissionsView extends StatelessWidget {
  ScrollController _scrollController = new ScrollController();

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<BikerBloc, BikerState>(
        builder: (context, state) => SafeArea(
            child: RefreshIndicator(
                color: ColorsApp.second,
                onRefresh: () => Future.delayed(Duration(seconds: 5), () {}),
                child:
                    CustomScrollView(controller: _scrollController, slivers: [
                  SliverAppBar(
                    backgroundColor: ColorsApp.bg,
                    automaticallyImplyLeading: false,
                    leading: Builder(builder: (context) {
                      return InkWell(
                          child: Container(
                            width: 10,
                            height: 10,
                            child:
                                SvgPicture.asset(Assets.menu, fit: BoxFit.none),
                          ),
                          onTap: () => Scaffold.of(context).openDrawer());
                    }),
                    title: Text(
                      'yList'.tr() +' Terminee',
                      overflow: TextOverflow.ellipsis,
                      style: TextStyle(
                          fontFamily: 'Lato', fontWeight: FontWeight.w600),
                    ),
                    centerTitle: true,
                    actions: [
                      InkWell(
                          child: Container(
                              margin: EdgeInsets.only(right: kMarginX),
                              child: SvgIcon(icon: Assets.bell)),
                          onTap: () {
                            // Get.toNamed(AppLinks.NOTIFICATION);
                          }),
                    ],
                    pinned: true,
                  ),
                  SliverToBoxAdapter(
                      child: Container(
                    height: getHeight(context),
                    padding: EdgeInsets.symmetric(
                        vertical: kMarginY, horizontal: kMarginX),
                    child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                         
                          Expanded(
                              child: SingleChildScrollView(
                                  child: ListMissionsTerminee())),
                        ]),
                  ))
                ]))));
  }
}
