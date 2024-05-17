import 'package:Bcom/presentation/devis/devis_home_page.dart';
import 'package:Bcom/presentation/user/complete_entreprise_info_page.dart';

import 'package:Bcom/routes/app_router.gr.dart';
import 'package:Bcom/utils/constants/assets.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter_svg/svg.dart';
import 'package:new_version_plus/new_version_plus.dart';
import '../../presentation/components/exportcomponent.dart';
import 'package:Bcom/application/export_bloc.dart';
import 'dart:async';

import 'package:Bcom/presentation/components/Widget/k_home_info.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:Bcom/presentation/components/Widget/icon_svg.dart';

export 'package:Bcom/application/home/home_bloc.dart';
import 'package:custom_navigation_bar/custom_navigation_bar.dart';

import 'package:flutter_easyloading/flutter_easyloading.dart';

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
    return BlocConsumer<DevisBloc, DevisState>(
        listener: (context0, state0) {
          if (state0.updateData == true) {
            print('---------8888');
            BlocProvider.of<HomeBloc>(context0).add(UserDataEvent());
          }
          if (state0.updateData == false) {}

          if (state0.isRequest == 0) {
            EasyLoading.show(
                status: 'En cours', maskType: EasyLoadingMaskType.black);
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
                drawer: CustomDrawer(user: state.user),
                // floatingActionButton:
                //     state.user == null || !state.user!.infoComplete
                //         ? null
                //         : state.user!.typeUser == 4
                //             ? state.user!.disponibilite == false
                //                 ? FloatingActionButton(
                //                     backgroundColor: ColorsApp.second,
                //                     child: Icon(
                //                       Icons.play_arrow,
                //                       color: Colors.white,
                //                     ),
                //                     onPressed: () {
                //                       BlocProvider.of<DevisBloc>(context)
                //                           .add(StartDisponibiliteDevis());
                //                     })
                //                 : FloatingActionButton(
                //                     backgroundColor: Colors.red,
                //                     child: Icon(
                //                       Icons.stop,
                //                       color: Colors.white,
                //                     ),
                //                     onPressed: () {
                //                       BlocProvider.of<DevisBloc>(context)
                //                           .add(EndDisponibiliteDevis());
                //                     })
                //             : null,
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
                      child: state.user!.infoComplete
                          ? PresentationPage()
                          : CompleteEntrepriseInfoPage())
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
          EasyLoading.show(
              status: 'En cours', maskType: EasyLoadingMaskType.black);
        } else if (state.isUpdateUserImage == 3) {
          EasyLoading.dismiss();
          showError(state.authenticationFailedMessage!, context);
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
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Text(
                              ViewFunctions().capitalizeFirstLetter(user.nom),
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
