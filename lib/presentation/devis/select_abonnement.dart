// ignore_for_file: must_be_immutable

import 'package:Bcom/application/export_bloc.dart';
import 'package:Bcom/presentation/components/Widget/ErrorReloadUnitComponent.dart';
import 'package:Bcom/presentation/components/Widget/ShimmerData.dart';
import 'package:Bcom/presentation/components/exportcomponent.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';

class SelectAbonnementWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocConsumer<AbonnementBloc, AbonnementState>(
        listener: (context, state) {
          if (state.loadRequest == 0) {
            EasyLoading.show(
                dismissOnTap: true,
                status: 'En cours',
                maskType: EasyLoadingMaskType.black);
          } else if (state.loadRequest == 2) {
            EasyLoading.dismiss();
            showError('Une erreur est survenue', context);
          } else if (state.loadRequest == 1) {
            showSuccess('Operation reussi', context);
            EasyLoading.dismiss();
          }
        },
        builder: (context0, state) => Column(children: [
              Container(
                  margin: EdgeInsets.symmetric(vertical: kMarginY * 2),
                  child: Text(
                    'Selectionner votre abonnement',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 15,
                      // color: ColorsApp.orange,
                      fontWeight: FontWeight.w700,
                    ),
                  )),
              Container(
                margin: EdgeInsets.symmetric(horizontal: kMarginX),
                height: getHeight(context) * .6,
                child: Stack(children: [
                  state.loadListAbonnement == 0
                      ? ShimmerData()
                      : state.loadListAbonnement == 2
                          ? ErrorReloadUnitComponent(
                              onTap: () =>
                                  BlocProvider.of<AbonnementBloc>(context)
                                      .add(GetListAbonnement()),
                            )
                          : GridView.builder(
                              physics: NeverScrollableScrollPhysics(),
                              gridDelegate:
                                  SliverGridDelegateWithFixedCrossAxisCount(
                                      crossAxisCount: 2,
                                      crossAxisSpacing: 10.0,
                                      childAspectRatio: 20,
                                      mainAxisExtent: 200,
                                      mainAxisSpacing: 20.0),
                              itemCount: state.listAbonnement!.length,
                              itemBuilder: (_ctx, index) => InkWell(
                                    onTap: () => BlocProvider.of<
                                            AbonnementBloc>(context)
                                        .add(AbonnementEvent.selectAbonnement(
                                            abonnement:
                                                state.listAbonnement![index])),
                                    child: Container(
                                      alignment: Alignment.center,
                                      decoration: BoxDecoration(
                                          color: ColorsApp.grey.withOpacity(.3),
                                          borderRadius:
                                              BorderRadius.circular(8)),
                                      padding: EdgeInsets.all(kMarginY),
                                      child: Stack(
                                        children: [
                                          Column(
                                            children: [
                                              CachedNetworkImage(
                                                height: getHeight(context) / 10,
                                                width: getHeight(context) / 10,
                                                fit: BoxFit.cover,
                                                imageUrl: state
                                                        .listAbonnement![index]
                                                        .fileService ??
                                                    '',
                                                imageBuilder:
                                                    (context, imageProvider) {
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
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(50)),
                                                    child: Center(
                                                        child:
                                                            CircularProgressIndicator(
                                                                color: ColorsApp
                                                                    .second)),
                                                  );
                                                },
                                                errorWidget:
                                                    (context, url, error) {
                                                  return CircleAvatar(
                                                      // backgroundColor: ColorsApp.tird,
                                                      radius: 150,
                                                      backgroundImage: AssetImage(
                                                          'assets/images/user.jpg'));
                                                },
                                              ),
                                              Container(
                                                  margin: EdgeInsets.only(
                                                      top: kMarginY),
                                                  child: Text(
                                                    state.listAbonnement![index]
                                                        .title!,
                                                    style: TextStyle(
                                                        fontSize: 16,
                                                        fontWeight:
                                                            FontWeight.w600),
                                                  )),
                                              Container(
                                                  padding:
                                                      EdgeInsets.all(kMarginX),
                                                  child: Text(
                                                    state.listAbonnement![index]
                                                        .description!,
                                                    overflow:
                                                        TextOverflow.ellipsis,
                                                    style: TextStyle(),
                                                  ))
                                            ],
                                          ),
                                          Positioned(
                                              child: Container(
                                            decoration: BoxDecoration(
                                              borderRadius:
                                                  BorderRadius.circular(8),
                                            ),
                                            child: Icon(Icons.verified_rounded,
                                                color: state.abonnement ==
                                                        state.listAbonnement![
                                                            index]
                                                    ? Colors.greenAccent
                                                    : Colors.grey,
                                                size: 30,
                                                weight: 10),
                                          ))
                                        ],
                                      ),
                                    ),
                                  ))
                ]),
              ),
              Container(
                margin: EdgeInsets.symmetric(
                    vertical: kMarginY, horizontal: kMarginX),
                child: AppButton(
                    size: MainAxisSize.max,
                    // bgColor: ColorsApp.primary,
                    text: 'Payer l\'abonnement'.tr(),
                    onTap: () => BlocProvider.of<AbonnementBloc>(context)
                        .add(NewAbonnement())),
              ),
            ]));
  }
}
