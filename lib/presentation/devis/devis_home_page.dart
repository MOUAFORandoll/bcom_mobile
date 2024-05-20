import 'package:Bcom/presentation/components/Widget/app_carroussel_item_second.dart';
import 'package:Bcom/presentation/devis/command_devis_page.dart';
import 'package:Bcom/routes/app_router.gr.dart';
import 'package:Bcom/utils/constants/assets.dart';
import 'package:carousel_slider/carousel_controller.dart';
import 'package:carousel_slider/carousel_slider.dart';

import '../components/exportcomponent.dart';
import 'package:Bcom/application/export_bloc.dart';

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
    return BlocBuilder<HomeBloc, HomeState>(
        builder: (context, state) => Container(
                child: Column(children: [
              Container(
                height: getHeight(context) * .80,
                child: Stack(
                  children: [
                    CarouselSlider(
                      carouselController: controller,
                      items: [
                        AppCarrousselItemSecond(
                          title: 'ctitle1'.tr(),
                          description:
                              'Bcom est une plateforme numérique conçue pour connecter les annonceurs avec des motocyclistes ou des entreprises de services de livraison à moto pour promouvoir des produits, des services ou des événements.'
                                  .tr(),
                          image: Assets.onb1,
                        ),
                        AppCarrousselItemSecond(
                            title: 'Marketing'.tr(),
                            description:
                                'Bcom offre une application de publicité par moto moyen pratique et efficace pour les annonceurs qui cherchent à promouvoir leurs produits ou services de manière innovante en utilisant des motocyclistes comme support publicitaire mobile.'
                                    .tr(),
                            image: Assets.onb2,
                            index: state.index),
                        AppCarrousselItemSecond(
                            title: 'Commander un devis'.tr(),
                            description:
                                'A partir de vos propositions nous mettons a votre disposition un devis pour vos besoin de marketing et de publicité.'
                                    .tr(),
                            image: Assets.onb3,
                            index: state.index)
                      ],
                      options: CarouselOptions(
                          aspectRatio: 16 / 9,
                          enlargeStrategy: CenterPageEnlargeStrategy.scale,
                          initialPage: 0,
                          enableInfiniteScroll: false,
                          reverse: false,
                          onPageChanged: (index, reason) {
                            context.read<AppActionCubit>().setIndex(index);
                          },
                          disableCenter: true,
                          height: getHeight(context),
                          // enlargeCenterPage: true,
                          // autoPlay: true,

                          // autoPlayCurve: Curves.fastOutSlowIn,
                          // enableInfiniteScroll: true,
                          viewportFraction: 1.0,
                          autoPlayCurve: Curves.fastOutSlowIn,
                          scrollDirection: Axis.horizontal),
                    ),
                    Positioned(
                      bottom: getHeight(context) / 5,
                      left: 0,
                      right: 0,
                      child: BlocBuilder<AppActionCubit, AppActionState>(
                        builder: (context, state) => Container(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children:
                                ['0', '1', '2'].asMap().entries.map((entry) {
                              return GestureDetector(
                                  onTap: () {
                                    context.read<AppActionCubit>().setIndex(1);
                                    controller.animateToPage(
                                      entry.key,
                                      duration: Duration(seconds: 10),
                                      curve: Curves.linearToEaseOut,
                                    );
                                  },
                                  child: Container(
                                    width: 15.0,
                                    height: 15.0,
                                    margin: EdgeInsets.symmetric(
                                        vertical: 10.0, horizontal: 4.0),
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(30),
                                        color: state.index != entry.key
                                            ? Colors.grey.withOpacity(0.2)
                                            : ColorsApp.second),
                                  ));
                            }).toList(),
                          ),
                        ),
                      ),
                    ),
                    Positioned(
                      bottom: getHeight(context) / 12,
                      left: 0,
                      right: 0,
                      child: Container(
                        margin: EdgeInsets.symmetric(
                            vertical: kMarginY, horizontal: kMarginX),
                        child: AppButton(
                            size: MainAxisSize.max,
                            // bgColor: ColorsApp.primary,
                            text: 'Commander'.tr(),
                            onTap: () async {
                              AutoRouter.of(context)
                                  .pushNamed(CommandDevisPage.routeName);
                            }),
                      ),
                    ),
                  ],
                ),
              ),

              // Container(
              //   height: getHeight(context) * .5,
              //   child: Column(
              //     children: [
              //       Icon(Icons.access_alarm, size: 50),
              //       Container(child: Text('Do cillum nisi fugiat irure.')),
              //       Container(
              //           child: Text(
              //               'Excepteur aliqua irure incididunt consequat sit anim sit consectetur ut aute. Ut esse irure et cillum. Ipsum adipisicing quis deserunt non irure ullamco pariatur nostrud ut excepteur occaecat. Consequat occaecat reprehenderit dolor est duis do cillum nisi fugiat irure.'))
              //     ],
              //   ),
              // ),
            ])));
  }
}
