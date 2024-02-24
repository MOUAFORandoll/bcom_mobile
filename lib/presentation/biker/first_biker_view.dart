import 'package:Bcom/application/export_bloc.dart';
import 'package:Bcom/application/home/home_bloc.dart';
import 'package:Bcom/presentation/biker/list_missions_dispo.dart';
import 'package:Bcom/presentation/components/Widget/k_home_info.dart';
import 'package:Bcom/utils/Services/validators.dart';
import 'package:Bcom/utils/constants/assets.dart';
import 'package:flutter_svg/flutter_svg.dart';
import '../components/exportcomponent.dart';
import 'package:Bcom/presentation/components/Widget/HomeModuleComponent.dart';
import 'package:Bcom/presentation/components/Widget/icon_svg.dart';

export 'package:Bcom/application/home/home_bloc.dart';

var loader = AppLoader.bounceLargeColorLoaderController();

class FirstBikerView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<HomeBloc, HomeState>(
        builder: (context, state) => RefreshIndicator(
            color: ColorsApp.second,
            onRefresh: () => Future.delayed(Duration(seconds: 5), () {
                  BlocProvider.of<BikerBloc>(context)
                      .add(GetListMissionBiker());
                }),
            child: Container(
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
                  preferredSize: Size.fromHeight(18.0),
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

                expandedHeight: getHeight(context) * .30,
                elevation: 10.0,
                backgroundColor: ColorsApp.second, //
              ),
              SliverToBoxAdapter(
                  child: Container(
                      height: getHeight(context),
                      padding: EdgeInsets.symmetric(
                          vertical: kMarginY, horizontal: kMarginX),
                      child: Column(children: [
                        HomeModuleComponent(
                          title: 'Listes des missions disponibles '.tr(),
                          image: Assets.shop2,
                          onTap: () => print(''),
                        ),
                        Expanded(
                            child: SingleChildScrollView(
                                child: ListMissionsDispo())),
                      ])))
            ]))));
  }
}

// openUpdateMail(context) => showDialog(
//     context: context,
//     builder: (context) {
//       TextEditingController mail = TextEditingController();
//       var loader = AppLoader.bounceLargeColorLoaderController();

//       return BlocConsumer<UserBloc, UserState>(
//           listener: (context, state) {
//             if (state.updating!) {
//               loader.open(context);
//             } else {
//               loader.close();
//               AutoRouter.of(context).pop();
//               showSuccess('yupdate'.tr(), context);
//             }
//           },
//           builder: (context, state) => AlertDialog(
//               shape: RoundedRectangleBorder(
//                 borderRadius: BorderRadius.circular(10.0),
//               ),
//               title: Container(
//                   child: Row(
//                 mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                 children: [
//                   Container(
//                       width: getWith(context) * .6,
//                       child: Text('recupmailtitle'.tr())),
//                   InkWell(
//                       child: Icon(Icons.close,
//                           color: ColorsApp.primary, weight: 50),
//                       onTap: () {
//                         AutoRouter.of(context).pop();
//                       })
//                 ],
//               )),
//               actions: [
//                 InkWell(
//                     child: Container(
//                       padding: EdgeInsets.all(8),
//                       decoration: BoxDecoration(
//                           borderRadius: BorderRadius.circular(8),
//                           color: ColorsApp.primary),
//                       child: Row(mainAxisSize: MainAxisSize.min, children: [
//                         Text(
//                           'yvalid'.tr(),
//                           style: TextStyle(
//                               color: ColorsApp.white,
//                               fontWeight: FontWeight.w600,
//                               fontSize: 13),
//                         ),
//                         Icon(Icons.check, color: ColorsApp.white, weight: 50)
//                       ]),
//                     ),
//                     onTap: () {
//                       if (mail.text.isNotEmpty) {
//                         context.read<UserBloc>().add(UpdateUserInfo(
//                               data: {'email': mail.text},
//                             ));

//                         context.read<HomeBloc>().add(UserDataEvent());
//                         // context.read<HomeBloc>().add(NoOpenRecupMailModal());
//                       } else {
//                         showError('recupmailtitle'.tr(), context);
//                       }
//                     })
//               ],
//               content: Container(
//                   child: SingleChildScrollView(
//                       child: Column(children: [
//                 Padding(
//                   padding: EdgeInsets.symmetric(
//                     vertical: kMarginY * 2,
//                   ),
//                   child: AppInput(
//                     controller: mail,
//                     onChanged: (value) {},
//                     placeholder: 'labelemail'.tr(),
//                     validator: (value) {
//                       return Validators.isValidEmail(value!);
//                     },
//                   ),
//                 ),
//               ])))));
//     });
// openModalLivraison(context) => showModalBottomSheet(
//       context: context,
//       builder: (BuildContext context) => Container(
//           height: getHeight(context) * .4,
//           padding: EdgeInsets.symmetric(horizontal: kMarginX),
//           decoration: BoxDecoration(
//             borderRadius: BorderRadius.only(
//               topLeft: Radius.circular(10),
//               topRight: Radius.circular(10),
//             ),
//             color: ColorsApp.white,
//           ),
//           child:
//               Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
//             Container(
//                 alignment: Alignment.topRight,
//                 margin: EdgeInsets.only(top: kMarginY * 2),
//                 // padding: EdgeInsets.symmetric(
//                 //     horizontal: kMarginX / 2),
//                 child: InkWell(
//                   onTap: () => Navigator.of(context).pop,
//                   child: Icon(Icons.close),
//                 )),
//             Container(
//                 alignment: Alignment.center,
//                 margin: EdgeInsets.symmetric(vertical: kMarginY * 2),
//                 child: Text(
//                   'yservice'.tr(),
//                   style: TextStyle(fontWeight: FontWeight.w500),
//                 )),
//             Container(
//                 margin: EdgeInsets.only(top: kMarginY * 2),
//                 child: Column(
//                   // mainAxisSize: MainAxisSize.max,
//                   children: [
//                     Container(
//                       margin: EdgeInsets.only(bottom: 8),
//                       child: AppButton(
//                           text: 'ser1'.tr(),
//                           // width: getWith(context) / 2.5,
//                           size: MainAxisSize.max,
//                           bgColor: ColorsApp.second,
//                           onTap: () {
//                             AutoRouter.of(context)
//                                 .pushNamed(NewLivraisonPage.routeName);
//                             // setService(1);
//                           }),
//                     ),
//                     AppButton(
//                         text: 'ser2'.tr(),
//                         // width: getWith(context) / 2.5,
//                         size: MainAxisSize.max,
//                         // bgColor: AppColors.secondarytext,
//                         onTap: () {
//                           // Get.toNamed(AppLinks.NEWLIVRAISON);
//                           // setService(2);
//                         }),
//                   ],
//                 ))
//           ])),
//       shape: RoundedRectangleBorder(
//         borderRadius: BorderRadius.vertical(top: Radius.circular(16)),
//       ),
//       backgroundColor: Colors.transparent,
//     );
