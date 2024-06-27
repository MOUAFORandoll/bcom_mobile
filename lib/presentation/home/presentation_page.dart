import 'package:Bcom/application/export_bloc.dart';
import 'package:Bcom/presentation/components/Widget/app_carroussel_item_second.dart';
import 'package:Bcom/presentation/components/Widget/global_bottom_sheet.dart';
import 'package:Bcom/presentation/devis/command_devis_page.dart';
import 'package:Bcom/presentation/devis/select_abonnement.dart';
import 'package:Bcom/presentation/components/Widget/shimmer_home_page.dart';
import 'package:Bcom/presentation/user/complete_info_page.dart';
import 'package:carousel_slider/carousel_slider.dart';

import '../components/exportcomponent.dart';

var loader = AppLoader.bounceLargeColorLoaderController();

class PresentationPage extends StatefulWidget {
  const PresentationPage({super.key});
  @override
  State<PresentationPage> createState() => _PresentationPageState();
}

class _PresentationPageState extends State<PresentationPage>
    with WidgetsBindingObserver {
  final CarouselController controller = CarouselController();
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<UserBloc, UserState>(
      builder: (context, stateUser) => BlocBuilder<HomeBloc, HomeState>(
          builder: (context, state) => state.loadHomeInfo == 0
              ? ShimmerHomePage()
              : Container(
                  child: Column(children: [
                  Container(
                    height: getHeight(context) * .80,
                    child: Stack(
                      children: [
                        if (state.bcomInfo != null)
                          if (state.bcomInfo!.onboardingImage != null)
                            CarouselSlider(
                              carouselController: controller,
                              items: state.bcomInfo!.onboardingImage!
                                  .map(
                                    (e) => AppCarrousselItemSecond(
                                      title: e.title,
                                      description: e.description,
                                      image: e.linkFile,
                                    ),
                                  )
                                  .toList(),
                              options: CarouselOptions(
                                  aspectRatio: 16 / 9,
                                  enlargeStrategy:
                                      CenterPageEnlargeStrategy.scale,
                                  initialPage: 0,
                                  enableInfiniteScroll: false,
                                  reverse: false,
                                  onPageChanged: (index, reason) {
                                    context
                                        .read<AppActionCubit>()
                                        .setIndex(index);
                                  },
                                  disableCenter: true,
                                  height: getHeight(context),
                                  viewportFraction: 1.0,
                                  autoPlayCurve: Curves.fastOutSlowIn,
                                  scrollDirection: Axis.horizontal),
                            ),
                        // Positioned(
                        //   bottom: getHeight(context) / 5,
                        //   left: 0,
                        //   right: 0,
                        //   child: BlocBuilder<AppActionCubit, AppActionState>(
                        //     builder: (context, state) => Container(
                        //       child: Row(
                        //         mainAxisAlignment: MainAxisAlignment.center,
                        //         children: ['0', '1', '2'].asMap().entries.map((entry) {
                        //           return GestureDetector(
                        //               onTap: () {
                        //                 context.read<AppActionCubit>().setIndex(1);
                        //                 controller.animateToPage(
                        //                   entry.key,
                        //                   duration: Duration(seconds: 10),
                        //                   curve: Curves.linearToEaseOut,
                        //                 );
                        //               },
                        //               child: Container(
                        //                 width: 15.0,
                        //                 height: 15.0,
                        //                 margin: EdgeInsets.symmetric(
                        //                     vertical: 10.0, horizontal: 4.0),
                        //                 decoration: BoxDecoration(
                        //                     borderRadius: BorderRadius.circular(30),
                        //                     color: state.index != entry.key
                        //                         ? Colors.grey.withOpacity(0.2)
                        //                         : ColorsApp.second),
                        //               ));
                        //         }).toList(),
                        //       ),
                        //     ),
                        //   ),
                        // ),
                        Positioned(
                          bottom: getHeight(context) / 9,
                          left: 0,
                          right: 0,
                          child: BlocBuilder<AbonnementBloc, AbonnementState>(
                              builder: (context, state) => state
                                          .loadUserAbonnement ==
                                      0
                                  ? Shimmer.fromColors(
                                      baseColor: ColorsApp.grey,
                                      highlightColor: ColorsApp.primary,
                                      child: Container(
                                        alignment: Alignment.center,
                                        child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            children: [
                                              Container(
                                                  child: Icon(
                                                Icons.location_on,
                                                color: ColorsApp.white,
                                                size: 25,
                                              )),
                                              Container(
                                                  child: Column(
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .center,
                                                      crossAxisAlignment:
                                                          CrossAxisAlignment
                                                              .center,
                                                      children: [
                                                    Container(
                                                        child: Text(
                                                            'Abonnement',
                                                            style: TextStyle(
                                                                color: ColorsApp
                                                                    .white,
                                                                fontSize: 8,
                                                                fontWeight:
                                                                    FontWeight
                                                                        .normal))),
                                                    Container(
                                                        child: Text(
                                                            'En cours de chargement',
                                                            style: TextStyle(
                                                              fontWeight:
                                                                  FontWeight
                                                                      .w800,
                                                              color: ColorsApp
                                                                  .white,
                                                              fontSize: 11,
                                                            ))),
                                                  ])),
                                            ]),
                                      ))
                                  : !stateUser.user!.status!
                                      ? Container(
                                          margin: EdgeInsets.symmetric(
                                              vertical: kMarginY,
                                              horizontal: kMarginX),
                                          child: AppButton(
                                              size: MainAxisSize.max,
                                              text: 'Commander un devis',
                                              onTap: () async {
                                                AutoRouter.of(context).pushNamed(
                                                    CompleteEntrepriseInfoPage
                                                        .routeName);
                                              }
                                              /*  =>
                                                          abonnement(context) */
                                              ),
                                        )
                                      : state.loadUserAbonnement == 1
                                          ? state.userAbonnement != null
                                              ? state.userAbonnement!.isPay ==
                                                          1 &&
                                                      DateTime.now().isBefore(
                                                          DateTime.parse(state
                                                              .userAbonnement!
                                                              .endDate))
                                                  ? Container(
                                                      margin:
                                                          EdgeInsets.symmetric(
                                                              vertical:
                                                                  kMarginY,
                                                              horizontal:
                                                                  kMarginX),
                                                      child: AppButton(
                                                          size:
                                                              MainAxisSize.max,
                                                          text:
                                                              'Commander un devis'
                                                                  .tr(),
                                                          onTap: () async {
                                                            AutoRouter.of(
                                                                    context)
                                                                .pushNamed(
                                                                    CommandDevisPage
                                                                        .routeName);
                                                          }
                                                          /*  =>
                                                          abonnement(context) */
                                                          ),
                                                    )
                                                  : !(DateTime.now().isBefore(
                                                          DateTime.parse(state
                                                              .userAbonnement!
                                                              .endDate)))
                                                      ? renouvellerWidget(
                                                          context)
                                                      : abonnerWidget(context)
                                              : abonnerWidget(context)
                                          : abonnerWidget(context)),
                        ),
                      ],
                    ),
                  ),
                ]))),
    );
  }

  renouvellerWidget(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: kMarginY, horizontal: kMarginX),
      constraints: BoxConstraints(minWidth: getWith(context) * .7),
      child: AppButton(
          size: MainAxisSize.max,
          text: 'Renouveller mon abonnement'.tr(),
          onTap: () => BlocProvider.of<AbonnementBloc>(context)
              .add(ReNewCurrentAbonnement())),
    );
  }

  abonnerWidget(BuildContext context) {
    return AppButton(
        size: MainAxisSize.max,
        text: 'Commander un devis'.tr(),
        onTap: () => abonnement(context));
  }
}

abonnement(context) => GlobalBottomSheet.show(
    context: context,
    widget: Container(
        height: getHeight(context) * .8,
        padding: EdgeInsets.symmetric(horizontal: kMarginX),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(10),
            topRight: Radius.circular(10),
          ),
          color: ColorsApp.white,
        ),
        child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [SelectAbonnementWidget()])));
