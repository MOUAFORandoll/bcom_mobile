import 'dart:async';
import 'dart:developer';

import 'package:Bcom/application/export_bloc.dart';
import 'package:Bcom/entity.dart';
import 'package:Bcom/presentation/components/Widget/global_bottom_sheet.dart';
import 'package:Bcom/presentation/components/Widget/k_home_info.dart';
import 'package:Bcom/presentation/devis/presentation_page.dart';
import 'package:Bcom/presentation/devis/historique_demande_devis_page.dart';
import 'package:Bcom/presentation/components/Widget/shimmer_home_page.dart';
import 'package:Bcom/presentation/user/complete_info_page.dart';
import 'package:Bcom/routes/app_router.dart';
import 'package:Bcom/utils/constants/assets.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:custom_navigation_bar/custom_navigation_bar.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_svg/svg.dart';
import 'package:new_version_plus/new_version_plus.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:video_player/video_player.dart';

import '../../presentation/components/exportcomponent.dart';

export 'package:Bcom/application/home/home_bloc.dart';

var loader = AppLoader.bounceLargeColorLoaderController();

@RoutePage()
class HomePage extends StatefulWidget {
  static const routeName = '/home';

  const HomePage({super.key});
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> with WidgetsBindingObserver {
  VideoPlayerController? _controller;
  void initState() {
    super.initState();
    // _checkForUpdate();

    // WidgetsBinding.instance.addObserver(this);

    log('https://www.youtube.com/watch?v=fS0aWtc1snM');
    _controller = VideoPlayerController.networkUrl(Uri.parse(
        BlocProvider.of<HomeBloc>(context)
            .state
            .homeInfo!
            .bcomHomeInfo!
            .onboardingVideo!
            .linkFile))
      ..initialize().then((_) {
        setState(() {
          log('---------------------play');
          _controller!.play();
        });
      });
  }

  // ignore: unused_element
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
    return BlocConsumer<DevisBloc, DevisState>(
        listener: (context0, state0) {
          if (state0.updateData == true) {
            print('---------8888');
            BlocProvider.of<HomeBloc>(context0).add(UserDataEvent());
          }
          if (state0.updateData == false) {}

          if (state0.isRequest == 0) {
            EasyLoading.show(
                dismissOnTap: true,
                status: 'En cours',
                maskType: EasyLoadingMaskType.black);
          } else if (state0.isRequest == 2) {
            EasyLoading.dismiss();
            showError('Une erreur est survenue', context);
          } else if (state0.isRequest == 1) {
            showSuccess('Operation reussi', context);
            EasyLoading.dismiss();
          }
        },
        builder: (context0, state0) => BlocBuilder<HomeBloc, HomeState>(
            builder: (context, state) => Scaffold(
                backgroundColor: ColorsApp.bg,
                drawer: CustomDrawer(user: state.user!),
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
                      'Bcom Assist ',
                      overflow: TextOverflow.ellipsis,
                      style: TextStyle(
                          color: ColorsApp.white,
                          fontFamily: 'Lato',
                          fontSize: 20,
                          fontWeight: FontWeight.w600),
                    ),
                    centerTitle: true,

                    actions: [
                      InkWell(
                          child: Container(
                              alignment: Alignment.center,
                              margin: EdgeInsets.only(right: kMarginX * 2),
                              child: Icon(
                                FontAwesomeIcons.youtube,
                                color: ColorsApp.red,
                              )),
                          onTap: () => GlobalBottomSheet.show(
                              context: context,
                              widget: Container(
                                  child: GestureDetector(
                                      onTap: () {
                                        setState(() {
                                          if (_controller!.value.isPlaying) {
                                            _controller!.pause();
                                          } else {
                                            _controller!.play();
                                          }
                                        });
                                      },
                                      child: AnimatedContainer(
                                          duration: Duration(milliseconds: 500),
                                          width:
                                              MediaQuery.of(context).size.width,
                                          height: MediaQuery.of(context)
                                              .size
                                              .height,
                                          child: AspectRatio(
                                            aspectRatio: 9.7 / 17.7,
                                            child: VideoPlayer(_controller!),
                                          )))))),
                      InkWell(
                          child: Container(
                              margin: EdgeInsets.only(right: kMarginX * 2),
                              child: Icon(
                                FontAwesomeIcons.whatsapp,
                                color: ColorsApp.white,
                              )),
                          onTap: () => launchUrl(Uri.parse(
                              'https://wa.me/${state.homeInfo!.bcomHomeInfo!.whatsappPhone}?text=Hello Je suis interesse par vos services'))),
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
                        child: KHomeInfo(user: state.user!),
                      ),
                    ),
                    pinned: true,
                    expandedHeight: getHeight(context) * .22,
                    elevation: 10.0,
                    backgroundColor: ColorsApp.primary, //
                  ),
                  // SliverToBoxAdapter(
                  //     child: state.user!.status!
                  //         ? state.index == 0
                  //             ? PresentationPage()
                  //             : HistoriqueDemandeDevisPage()
                  //         : CompleteEntrepriseInfoPage())

                  SliverToBoxAdapter(child: PresentationPage())
                ])),
                bottomNavigationBar: CustomNavigationBar(
                  iconSize: 30.0,
                  // elevation: 0.0,
                  scaleFactor: 0.4,
                  selectedColor: ColorsApp.primary,
                  strokeColor: ColorsApp.grey,
                  unSelectedColor: Colors.grey[600],
                  backgroundColor:
                      /*     state.index == 2 ? ColorsApp.primary : */ ColorsApp
                          .white,
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
                                ? ColorsApp.primary
                                : ColorsApp.grey,
                          ),
                        ),
                        title: Container(
                            padding: EdgeInsets.only(bottom: 3),
                            decoration: BoxDecoration(
                                border: Border(
                                    bottom: state.index == 0
                                        ? BorderSide(
                                            color: ColorsApp.primary, width: 2)
                                        : BorderSide.none,
                                    top: BorderSide.none)),
                            child: Text('Home'.tr(),
                                style: TextStyle(
                                  fontSize: kMin,
                                  fontWeight: FontWeight.w600,
                                  color: state.index == 0
                                      ? ColorsApp.primary
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
                              ? ColorsApp.primary
                              : ColorsApp.grey,
                        ),
                      ),
                      title: Container(
                          padding: EdgeInsets.only(bottom: 3),
                          decoration: BoxDecoration(
                              border: Border(
                                  bottom: state.index == 1
                                      ? BorderSide(
                                          color: ColorsApp.primary, width: 2)
                                      : BorderSide.none,
                                  top: BorderSide.none)),
                          child: Text('Demandes'.tr(),
                              style: TextStyle(
                                fontSize: kMin,
                                fontWeight: FontWeight.w600,
                                color: state.index == 1
                                    ? ColorsApp.primary
                                    : ColorsApp.grey,
                              ))),
                    ),
                  ],
                  currentIndex: state.index,
                  onTap: (index) {
                    print(index);

                    if (index == 1) {
                      print(index);
                      AutoRouter.of(context)
                          .pushNamed(HistoriqueDemandeDevisPage.routeName);
                    }
                  },
                ))));
  }
}

// ignore: must_be_immutable
class CustomDrawer extends StatelessWidget {
  CustomDrawer({required User this.user});
  final User user;
  @override
  Widget build(BuildContext context) {
    return BlocConsumer<UserBloc, UserState>(
      listener: (context, state) {
        if (state.isUpdateUserImage == 1) {
          EasyLoading.show(
              dismissOnTap: true,
              status: 'En cours',
              maskType: EasyLoadingMaskType.black);
        } else if (state.isUpdateUserImage == 3) {
          EasyLoading.dismiss();
          showError(state.eventMessage!, context);
        } else if (state.isUpdateUserImage == 2) {
          showSuccess('Profil mis a jour', context);

          EasyLoading.dismiss();
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
                            imageUrl: 'user.profile',
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
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Text(
                              ViewFunctions()
                                  .capitalizeFirstLetter(user.userName),
                              style: TextStyle(
                                  color: ColorsApp.grey,
                                  fontSize: 15,
                                  fontWeight: FontWeight.w600),
                            ),
                            // ThemeButtonWidget()
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
            // ListTile(
            //   // leading: Icon(Icons.home),
            //   title: AppLangButton(),
            //   onTap: () {},
            // ),
            ListTile(
              leading: Icon(Icons.home),
              title: Text(
                'Acceuil',
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
                'Parametres',
                style: TextStyle(color: ColorsApp.primary, fontSize: kBasics),
              ),
              onTap: () {
                // Navigate to the settings page or perform an action
                Navigator.pop(context);
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
