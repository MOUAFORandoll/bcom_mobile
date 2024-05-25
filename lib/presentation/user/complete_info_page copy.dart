// // ignore_for_file: must_be_immutable

// import 'package:Bcom/application/database/database_cubit.dart';

// import 'package:Bcom/application/export_bloc.dart';
// import 'package:Bcom/presentation/components/exportcomponent.dart';

// import 'package:Bcom/core.dart';
// import 'package:Bcom/utils/Services/validators.dart';
// import 'package:dio/dio.dart';
// import 'package:flutter/widgets.dart';
// import 'package:flutter_easyloading/flutter_easyloading.dart';

// @RoutePage()
// class CompleteEntrepriseInfoPage extends StatefulWidget {
//   @override
//   State<CompleteEntrepriseInfoPage> createState() =>
//       _CompleteEntrepriseInfoPageState();
// }

// class _CompleteEntrepriseInfoPageState
//     extends State<CompleteEntrepriseInfoPage> {
//   var loader = AppLoader.bounceLargeColorLoaderController();

//   final formKey = GlobalKey<FormState>();

//   TextEditingController name = TextEditingController();
//   TextEditingController email = TextEditingController();
//   TextEditingController phone = TextEditingController();
//   TextEditingController adress = TextEditingController();
//   TextEditingController city = TextEditingController();
//   TextEditingController numImpot = TextEditingController();
//   TextEditingController numContribuable = TextEditingController();
//   TextEditingController webSite = TextEditingController();
//   TextEditingController country = TextEditingController();
//   TextEditingController registreCommerce = TextEditingController();

//   @override
//   Widget build(BuildContext context) {
//     return BlocConsumer<UserBloc, UserState>(
//         listener: (context, state) {
//           if (state.isLoading == 1) {
//             EasyLoading.show(
//                 dismissOnTap: true,
//                 status: 'En cours',
//                 maskType: EasyLoadingMaskType.black);
//           } else if (state.isLoading == 3) {
//             EasyLoading.dismiss();
//             showError(state.eventMessage!, context);
//           } else if (state.isLoading == 2) {
//             EasyLoading.dismiss();

//             showSuccess('Mise a jour effectuee', context);
//             initLoad(context);
//             print('-----44--------*********');
//           }
//         },
//         builder: (context, state) => Container(
//                 child: Column(children: [
//               Container(
//                   // height: getHeight(context),
//                   margin: EdgeInsets.symmetric(horizontal: kMarginX),
//                   child: Column(children: [
//                     /* Expanded(
//                       child: */
//                     Container(
//                       child: SingleChildScrollView(
//                         child: Column(
//                             mainAxisAlignment: MainAxisAlignment.center,
//                             crossAxisAlignment: CrossAxisAlignment.center,
//                             children: [
//                               Container(
//                                 margin: EdgeInsets.only(
//                                   top: kMarginY,
//                                 ),
//                                 child: Text(
//                                   'Renseignez nous les informations de votre entreprise'
//                                       .tr(),
//                                   textAlign: TextAlign.center,
//                                   style: TextStyle(
//                                     fontSize: 13,
//                                     // color: ColorsApp.orange,
//                                     fontWeight: FontWeight.w700,
//                                   ),
//                                 ),
//                               ),
//                               Container(
//                                 margin: EdgeInsets.symmetric(
//                                   vertical: kMarginY / 2,
//                                 ),
//                                 child: Column(
//                                   // mainAxisAlignment:
//                                   //     MainAxisAlignment.center,
//                                   children: [
//                                     Padding(
//                                       padding: EdgeInsets.only(
//                                         top: kMarginY,
//                                       ),
//                                       child: AppInput(
//                                         controller: name,
//                                         onChanged: (value) {},
//                                         placeholder: 'labelnameEntreprise'.tr(),
//                                         validator: (value) {
//                                           return Validators.isValidUsername(
//                                               value!);
//                                         },
//                                       ),
//                                     ),
//                                     AppInput(
//                                       controller: email,
//                                       onChanged: (value) {},
//                                       placeholder: 'labelemailEntreprise'.tr(),
//                                       validator: (value) {
//                                         return Validators.isValidEmail(value!);
//                                       },
//                                     ),
//                                     AppInput(
//                                       controller: phone,
//                                       onChanged: (value) {},
//                                       placeholder: 'labelphoneEntreprise'.tr(),
//                                       validator: (value) {
//                                         return Validators.usPhoneValid(value!);
//                                       },
//                                     ),
//                                     AppInput(
//                                       controller: adress,
//                                       onChanged: (value) {},
//                                       placeholder: 'labeladressEntreprise'.tr(),
//                                       validator: (value) {
//                                         return Validators.isValidUsername(
//                                             value!);
//                                       },
//                                     ),
//                                     AppInput(
//                                       controller: city,
//                                       onChanged: (value) {},
//                                       placeholder: 'labelcityEntreprise'.tr(),
//                                       validator: (value) {
//                                         return Validators.isValidUsername(
//                                             value!);
//                                       },
//                                     ),
//                                     AppInput(
//                                       controller: webSite,
//                                       onChanged: (value) {},
//                                       placeholder:
//                                           'labelwebSiteEntreprise'.tr(),
//                                       validator: (value) {
//                                         return Validators.isValidUsername(
//                                             value!);
//                                       },
//                                     ),
//                                     AppInput(
//                                       controller: country,
//                                       onChanged: (value) {},
//                                       placeholder:
//                                           'labelcountryEntreprise'.tr(),
//                                       validator: (value) {
//                                         return Validators.isValidUsername(
//                                             value!);
//                                       },
//                                     ),
//                                     AppInput(
//                                       controller: numImpot,
//                                       onChanged: (value) {},
//                                       placeholder: 'labelimpotEntreprise'.tr(),
//                                       validator: (value) {
//                                         return Validators.isValidUsername(
//                                             value!);
//                                       },
//                                     ),
//                                     AppInput(
//                                       controller: numContribuable,
//                                       onChanged: (value) {},
//                                       placeholder:
//                                           'labelcontribEntreprise'.tr(),
//                                       validator: (value) {
//                                         return Validators.isValidUsername(
//                                             value!);
//                                       },
//                                     ),
//                                     AppInput(
//                                       controller: registreCommerce,
//                                       onChanged: (value) {},
//                                       placeholder:
//                                           'labelcountryEntreprise'.tr(),
//                                       validator: (value) {
//                                         return Validators.isValidUsername(
//                                             value!);
//                                       },
//                                     ),
//                                   ],
//                                 ),
//                               ),
//                             ]),
//                       ),
//                     ),
//                     /* ), */
//                     Container(
//                       child: AppButton(
//                           size: MainAxisSize.max,
//                           // bgColor: ColorsApp.primary,
//                           text: 'Terminer'.tr(),
//                           onTap: () async {
//                             print(name.text);
//                             print(registreCommerce.text.isEmpty);

//                             if (name.text.isEmpty ||
//                                 registreCommerce.text.isEmpty) {
//                               showError(
//                                   'Veuillez remplir tous les champs', context);
//                             } else {
//                               print('ok');
                              
//                               context.read<UserBloc>()
//                                 ..add(AddInfoClient(
//                                     name: name.text,
//                                     email: email.text,
//                                     phone: phone.text,
//                                     adress: adress.text,
//                                     city: city.text,
//                                     numImpot: numImpot.text,
//                                     numContribuable: numContribuable.text,
//                                     webSite: webSite.text,
//                                     country: country.text,
//                                     registreCommerce: registreCommerce.text))
//                                 ..add(GetUserEvent());
//                               BlocProvider.of<HomeBloc>(context)
//                                   .add(UserDataEvent());
//                             }
//                           }),
//                     )
//                   ]))
//             ])));
//   }
// }
