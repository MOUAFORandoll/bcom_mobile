import 'package:Bcom/presentation/biker/biker_home_page.dart';
import 'package:Bcom/presentation/components/Button/themeButton.dart';
import 'package:Bcom/presentation/layer/no_authorisation_page.dart';
import 'package:Bcom/presentation/tcontroller/tcontroller_home_page.dart';
import 'package:Bcom/presentation/user/complete_biker_info_page.dart';
import 'package:Bcom/routes/app_router.gr.dart';
import 'package:Bcom/utils/constants/assets.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter_svg/svg.dart';
import 'package:new_version_plus/new_version_plus.dart';
import '../../presentation/components/exportcomponent.dart';
import 'package:Bcom/application/export_bloc.dart';
import 'dart:async';

import 'package:Bcom/application/export_bloc.dart';
import 'package:Bcom/presentation/components/Widget/ShimmerData.dart';
import 'package:Bcom/presentation/components/Widget/k_home_info.dart';
import 'package:Bcom/presentation/components/Widget/missionsComponent.dart';
import 'package:Bcom/routes/app_router.gr.dart';
import 'package:Bcom/utils/constants/assets.dart';
import 'package:cron/cron.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:Bcom/presentation/components/Widget/icon_svg.dart';

export 'package:Bcom/application/home/home_bloc.dart';
import 'package:Bcom/presentation/biker/first_biker_view.dart';
import 'package:Bcom/presentation/biker/list_missions_view.dart';
import 'package:Bcom/utils/constants/assets.dart';
import 'package:custom_navigation_bar/custom_navigation_bar.dart';
import 'package:flutter_svg/flutter_svg.dart';
import '../components/exportcomponent.dart';
import 'package:Bcom/application/export_bloc.dart';

var loader = AppLoader.bounceLargeColorLoaderController();

@RoutePage()
class HomePage extends StatefulWidget {
  static const routeName = '/home';

  const HomePage({super.key});
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> with WidgetsBindingObserver {
  void initState() {
    super.initState();
    // _checkForUpdate();

    WidgetsBinding.instance.addObserver(this);
  }

  Future<void> _checkForUpdate() async {
    final newVersionPlus = NewVersionPlus(
      iOSId: null,
      androidId: 'com.app.Bcom',
    );
    final status = await newVersionPlus.getVersionStatus();
    print('*---------***--------------------**');
    print(status!.canUpdate);
    print(status.localVersion);
    print(status.storeVersion);
    print(status.appStoreLink);
    newVersionPlus.showAlertIfNecessary(context: context);
    print('*---------***--------------------**');
  }

  void didChangeAppLifecycleState(AppLifecycleState state) {
    print('state*************************');
    print(AppLifecycleState.resumed);
    if (state == AppLifecycleState.paused) {}
  }

  @override
  void dispose() {
    WidgetsBinding.instance.removeObserver(this);
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<HomeBloc, HomeState>(
        builder: (context, state) => RefreshIndicator(
            color: ColorsApp.second,
            onRefresh: () => Future.delayed(Duration(seconds: 5), () {
                  if (state.user!.typeUser == 4) {
                    if (state.index == 0) {
                      BlocProvider.of<BikerBloc>(context)
                          .add(GetListMissionBiker());
                    } else {
                      BlocProvider.of<BikerBloc>(context)
                          .add(GetListMissionBikerEffectue());
                    }
                  }
                  if (state.user!.typeUser == 3) {
                    if (state.index == 0) {
                      BlocProvider.of<TcontrollerBloc>(context)
                          .add(GetListMissionTcontroller());
                    } else {
                      BlocProvider.of<TcontrollerBloc>(context)
                          .add(GetListMissionTcontrollerDone());
                    }
                  }
                }),
            child: Scaffold(
                backgroundColor: ColorsApp.bg,
                drawer: CustomDrawer(user: state.user),
                bottomNavigationBar: state.user == null ||
                        !state.user!.infoComplete
                    ? null
                    : state.user!.typeUser == 4 || state.user!.typeUser == 3
                        ? CustomNavigationBar(
                            iconSize: 30.0,
                            // elevation: 0.0,
                            scaleFactor: 0.4,
                            selectedColor: Color(0xff0c18fb),
                            strokeColor: Color(0x300c18fb),
                            unSelectedColor: Colors.grey[600],
                            backgroundColor:
                                /*     state.index == 2 ? ColorsApp.second : */ ColorsApp
                                    .bg,
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
                                                      color: ColorsApp.second,
                                                      width: 2)
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
                                    color: state.index == 1
                                        ? ColorsApp.second
                                        : ColorsApp.grey,
                                  ),
                                ),
                                title: Container(
                                    padding: EdgeInsets.only(bottom: 3),
                                    decoration: BoxDecoration(
                                        border: Border(
                                            bottom: state.index == 1
                                                ? BorderSide(
                                                    color: ColorsApp.second,
                                                    width: 2)
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
                              context
                                  .read<HomeBloc>()
                                  .add(SetIndexEvent(index: index));
                            },
                          )
                        : null,
                body: Container(
                    child: CustomScrollView(slivers: [
                  SliverAppBar(
                    automaticallyImplyLeading: false,
                    leading: Builder(builder: (context) {
                      return GestureDetector(
                        child: Container(
                          width: 10,
                          height: 10,
                          child: SvgPicture.asset(Assets.menu,
                              color: ColorsApp.white, fit: BoxFit.none),
                        ),
                        onTap: () {
                          Scaffold.of(context).openDrawer();
                        },
                      );
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
                          onTap: () => showModalBottomSheet(
                              context: context,
                              builder: (BuildContext context) => SafeArea(
                                    minimum: EdgeInsets.only(top: 30),
                                    child: Container(
                                        height: getHeight(context) * .9,
                                        width: getWith(context),
                                        decoration: BoxDecoration(
                                          borderRadius: BorderRadius.only(
                                            topLeft: Radius.circular(30),
                                            topRight: Radius.circular(30),
                                          ),
                                          color: ColorsApp.white,
                                        ),
                                        padding: EdgeInsets.symmetric(
                                            horizontal: kMarginX),
                                        child: Column(children: [
                                          Expanded(
                                              child: SingleChildScrollView(
                                                  child: Container(
                                                      child: Text(
                                                          'Module en cours de developpement')))),
                                        ])),
                                  ))),
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
                    backgroundColor: ColorsApp.primary, //
                  ),
                  SliverToBoxAdapter(
                      child: SafeArea(
                          child: state.user!.typeUser == 4
                              ? state.user!.infoComplete
                                  ? BikerHomePage()
                                  : CompleteBikerInfoPage()
                              : state.user!.typeUser == 3
                                  ? TcontrollerHomePage()
                                  : NoAuthorisation()))
                ])))));
  }
}

// ignore: must_be_immutable
class CustomDrawer extends StatelessWidget {
  CustomDrawer({required this.user});
  final user;
  @override
  Widget build(BuildContext context) {
    return BlocConsumer<UserBloc, UserState>(
      listener: (context, state) {
        if (state.isUpdateUserImage == 1) {
          loader.open(context);
        } else if (state.isUpdateUserImage == 3) {
          loader.close();
          showError(state.authenticationFailedMessage!, context);
        } else if (state.isUpdateUserImage == 2) {
          showSuccess('Profil mis a jour', context);

          loader.close();
          BlocProvider.of<HomeBloc>(context).add(UserDataEvent());
          print('-----44------find noe--446465465*******');
        }
      },
      builder: (context, state) => Drawer(
        width: getWith(context) / 1.35,
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            DrawerHeader(
                // padding: EdgeInsets.only(bottom: 18.0),
                margin: EdgeInsets.only(bottom: 8.0),
                decoration: BoxDecoration(
                    color: ColorsApp.primary,
                    border: Border(bottom: BorderSide.none)),
                child: Container(
                    padding: EdgeInsets.all(10),
                    child: Column(children: [
                      CircleAvatar(
                        radius: 30,
                        backgroundColor: Colors.white,
                        child: InkWell(
                          onTap: () => BlocProvider.of<UserBloc>(context)
                              .add(UpdateUserImage()),
                          child: CachedNetworkImage(
                            height: getHeight(context) / 10,
                            width: getHeight(context) / 10,
                            fit: BoxFit.cover,
                            imageUrl: user.profile,
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
                                    child: CircularProgressIndicator(
                                        color: ColorsApp.second)),
                              );
                            },
                            errorWidget: (context, url, error) {
                              return CircleAvatar(
                                  // backgroundColor: ColorsApp.tird,
                                  radius: 150,
                                  backgroundImage:
                                      AssetImage('assets/images/user.jpg'));
                            },
                          ),
                        ),
                      ),
                      Container(
                        // margin: EdgeInsets.only(top: kMarginY),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              ViewFunctions().capitalizeFirstLetter(user.nom),
                              style: TextStyle(
                                  color: ColorsApp.grey,
                                  fontSize: 15,
                                  fontWeight: FontWeight.w600),
                            ),
                            ThemeButtonWidget()
                          ],
                        ),
                      ),
                      Container(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              user.phone,
                              style: TextStyle(
                                  color: ColorsApp.grey,
                                  fontSize: 12,
                                  fontWeight: FontWeight.w400),
                            ),
                          ],
                        ),
                      ),
                    ]))),
            ListTile(
              // leading: Icon(Icons.home),
              title: AppLangButton(),
              onTap: () {},
            ),
            ListTile(
              leading: Icon(Icons.home),
              title: Text(
                'Home',
                style: TextStyle(color: ColorsApp.primary, fontSize: kBasics),
              ),
              onTap: () {
                // Navigate to the home page or perform an action
                Navigator.pop(context);
              },
            ),
            ListTile(
              leading: Icon(Icons.settings),
              title: Text(
                'Settings',
                style: TextStyle(color: ColorsApp.primary, fontSize: kBasics),
              ),
              onTap: () {
                // Navigate to the settings page or perform an action
                Navigator.pop(context);
              },
            ),
            ListTile(
              leading: Icon(Icons.policy),
              title: Text(
                'Politique',
                style: TextStyle(color: ColorsApp.primary, fontSize: kBasics),
              ),
              onTap: () {
                AutoRouter.of(context).replaceAll([PolitiqueRoute()]);
              },
            ),
            ListTile(
              leading: Icon(Icons.exit_to_app),
              title: Text(
                'Logout'.tr(),
                style: TextStyle(
                    color: ColorsApp.red,
                    fontWeight: FontWeight.w700,
                    fontSize: kBasics),
              ),
              onTap: () {
                BlocProvider.of<UserBloc>(context)
                    .add(SignOutEvent(context: context));
              },
            ),
          ],
        ),
      ),
    );
  }
}
