// import 'dart:io';
// import 'package:cemorder/api_pdf/pdf_api.dart';
// import 'package:cemorder/app_controller/05_compagnie/model/company_info.dart';
// import 'package:cemorder/app_controller/07_order/model/order_detail_response.dart';
// import 'package:cemorder/theme/app_color.dart';
// import 'package:cemorder/theme/app_font_family.dart';
// import 'package:cemorder/utils/assets_path.dart';
// import 'package:flutter/services.dart';
// import 'package:intl/intl.dart';
// import 'package:pdf/pdf.dart';
// import 'package:pdf/widgets.dart' as pw;
// import 'package:pdf/widgets.dart';

// class PdfInvoiceApi {
//   static Future<File> generate(CompanyOrderInfo companyOrderInfo,
//       CompanyInfo companyInfo, OrderDetailResponse orderDetailResponse) async {
//     final pdf = Document();

//     final font = await rootBundle.load("assets/fonts/OpenSans-Regular.ttf");
//     final ttf = pw.Font.ttf(font);
//     final fontBold = await rootBundle.load("assets/fonts/OpenSans-Bold.ttf");
//     final ttfBold = pw.Font.ttf(fontBold);
//     final fontItalic =
//         await rootBundle.load("assets/fonts/OpenSans-Italic.ttf");
//     final ttfItalic = pw.Font.ttf(fontItalic);
//     final fontBoldItalic =
//         await rootBundle.load("assets/fonts/open-sans-bold-italic.ttf");
//     final ttfBoldItalic = pw.Font.ttf(fontBoldItalic);
//     final fontCourier = await rootBundle.load("assets/fonts/Courier.ttf");
//     final ttfCourier = pw.Font.ttf(fontCourier);
//     final fontOpenSans = await rootBundle.load("assets/fonts/OpenSans.ttf");
//     final ttfOpenSans = pw.Font.ttf(fontOpenSans);
//     final fontMR = await rootBundle.load("assets/fonts/Montserrat-Regular.ttf");
//     final ttfMR = pw.Font.ttf(fontMR);
//     final fontMM = await rootBundle.load("assets/fonts/Montserrat-Medium.ttf");
//     final ttfMM = pw.Font.ttf(fontMM);
//     final fontML = await rootBundle.load("assets/fonts/Montserrat-Light.ttf");
//     final ttfML = pw.Font.ttf(fontML);
//     final fontPal = await rootBundle.load("assets/fonts/Palatino.ttf");
//     final ttfPal = pw.Font.ttf(fontPal);

//     final ByteData image = await rootBundle.load(AsstsPath.logo);
//     Uint8List imageData = (image).buffer.asUint8List();

//     final ByteData imageInvoice = await rootBundle.load(AssetsPath.bg_invoice);
//     Uint8List imageDataBgInvoice = (imageInvoice).buffer.asUint8List();

//     final pw.ThemeData theme = pw.ThemeData.withFont(
//         base: ttfOpenSans,
//         bold: ttfBold,
//         italic: ttfItalic,
//         boldItalic: ttfBoldItalic,
//         fontFallback: [
//           ttfCourier,
//           ttf,
//           ttfMR,
//           ttfMM,
//           ttfML,
//           ttfPal,
//         ]);
//     pdf.addPage(MultiPage(
//       theme: theme,
//       pageFormat: PdfPageFormat.a4,
//       build: (context) => [
//         Container(
//             width: double.infinity,
//             /*decoration: BoxDecoration(
//               image: DecorationImage(
//                 image: pw.MemoryImage(imageDataBgInvoice),
//                 fit: BoxFit.contain,
//               ),
//             ),*/
//             child: pw.Stack(children: [
//               pw.Container(
//                 width: double.infinity,
//                 height: 660,
//                 decoration: BoxDecoration(
//                   image: DecorationImage(
//                     image: pw.MemoryImage(imageDataBgInvoice),
//                     fit: BoxFit.cover,
//                   ),
//                 ),
//               ),
//               Column(children: [
//                 buildHeader(companyInfo, orderDetailResponse, imageData),
//                 buildTitle(),
//                 SizedBox(height: 20),
//                 Container(
//                   child: buildInvoice(orderDetailResponse),
//                 ),
//                 Divider(),
//                 buildTotal(orderDetailResponse),
//                 SizedBox(height: 50),
//                 buildSignature(),
//               ])
//             ]))
//       ],
//       footer: (context) => buildFooter(),
//     ));

//     return PdfApi.saveDocume  nt(
                                  
                                  
//         name: 'CDE${orderDetailResponse.reference}.pdf', pdf: pdf);
//   }
  
//   static Widget buildHeader(CompanyInfo companyInfo,
//           OrderDetailResponse orderDetailResponse, Uint8List logo) =>
//       Column(
//         crossAxisAlignment: CrossAxisAlignment.start,
//         children: [
//           buildCustomerAddress(companyInfo, logo),
//           SizedBox(height: 20),
//           Row(
//               crossAxisAlignment: CrossAxisAlignment.end,
//               mainAxisAlignment: MainAxisAlignment.spaceBetween,
//               children: [
//                 buildInvoiceInfo(orderDetailResponse),
//                 Container(
//                     child: Table.fromTextArray(data: <List<String>>[
//                   <String>['ENTREPRISE', 'VILLE'],
//                   ...DataList.map((e) => [e.name, e.cityName]).toList()
//                 ])),
//               ]),
//           SizedBox(height: 20),
//         ],
//       );

//   static Widget buildCustomerAddress(CompanyInfo companyInfo, Uint8List logo) =>
//       Container(
//           child: Column(
//         crossAxisAlignment: CrossAxisAlignment.stretch,
//         children: [
//           Row(children: [
//             pw.Image(pw.MemoryImage(logo)),
//             pw.Container(
//               child: Column(children: [
//                 Text(
//                   companyInfo.companyName.toUpperCase(),
//                   style: TextStyle(
//                     fontSize: 35,
//                     fontWeight: FontWeight.bold,
//                     color: PdfColor.fromHex("#4D0306"),
//                   ),
//                 ),
//                 Text(
//                   companyInfo.companyService,
//                   style: TextStyle(
//                     fontSize: 16,
//                     fontWeight: FontWeight.bold,
//                     color: PdfColor.fromHex("#000000"),
//                   ),
//                 ),
//                 Text(
//                   companyInfo.companySubtitle,
//                   style: TextStyle(
//                     fontSize: 14,
//                     color: PdfColor.fromHex("#4D0306"),
//                   ),
//                 ),
//                 Text(
//                   companyInfo.companyDef,
//                   style: TextStyle(
//                     fontSize: 15,
//                     color: PdfColor.fromHex("#4D0306"),
//                   ),
//                 ),
//               ]),
//             ),
//           ]),
//           Divider(color: PdfColor.fromHex("#4D0306")),
//         ],
//       ));

//   static Widget buildInvoiceInfo(OrderDetailResponse info) {
//     final titles = <String>[
//       'N° : ',
//     ];
//     final data = <String>[
//       "${info.reference}",
//     ];

//     return Column(
//       crossAxisAlignment: CrossAxisAlignment.start,
//       children: List.generate(titles.length, (index) {
//         final title = titles[index];
//         final value = data[index];

//         return buildText(title: title, value: value, width: 110);
//       }),
//     );
//   }

//   static Widget buildTitle() {
//     DateTime now = DateTime.now();
//     String formattedDate = DateFormat('dd MMMM yyyy', 'fr_FR').format(now);
//     return Row(
//       mainAxisAlignment: MainAxisAlignment.spaceBetween,
//       children: [
//         Text(
//           'BON DE COMMANDE'.toUpperCase(),
//           style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
//         ),
//         Text(
//           "Douala, le $formattedDate",
//           style: TextStyle(fontSize: 12, fontWeight: FontWeight.bold),
//         ),
//       ],
//     );
//   }

//   static Widget buildSignature() {
//     return Row(
//       mainAxisAlignment: MainAxisAlignment.end,
//       children: [
//         Text(
//           'LE RESPSONSABLE DES VENTES'.toUpperCase(),
//           style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
//         ),
//       ],
//     );
//   }

//   static Widget buildInvoice(OrderDetailResponse orderDetailResponse) {
//     final headers = [
//       'DESIGNATION',
//       'TONNES',
//       'SACS',
//     ];
//     final data = orderDetailResponse.products?.map((item) {
//       return [
//         item.label,
//         "${item.packaging == 'tons' ? item.pivot?.quantity! : '0'}",
//         "${item.packaging == 'bags' ? item.pivot?.quantity! : '0'}",
//       ];
//     }).toList();

//     return Table.fromTextArray(
//       headers: headers,
//       data: data!,
//       border: null,
//       headerStyle: TextStyle(fontWeight: FontWeight.bold),
//       headerDecoration: BoxDecoration(color: PdfColors.grey300),
//       cellHeight: 30,
//       cellAlignments: {
//         0: Alignment.centerLeft,
//         1: Alignment.centerRight,
//         2: Alignment.centerRight,
//       },
//     );
//   }

//   static Widget buildTotal(OrderDetailResponse orderDetailResponse) {
//     return Container(
//       alignment: Alignment.centerRight,
//       child: Row(
//         children: [
//           Expanded(
//             flex: 4,
//             child: Column(
//               crossAxisAlignment: CrossAxisAlignment.start,
//               mainAxisAlignment: MainAxisAlignment.spaceBetween,
//               children: [
//                 buildText(
//                   title: 'TOTAL',
//                   value:
//                       "${orderDetailResponse.amount} ${orderDetailResponse.currency}",
//                   unite: true,
//                 ),
//                 SizedBox(height: 2 * PdfPageFormat.mm),
//                 Container(height: 1, color: PdfColors.grey400),
//                 SizedBox(height: 0.5 * PdfPageFormat.mm),
//                 Container(height: 1, color: PdfColors.grey400),
//               ],
//             ),
//           ),
//         ],
//       ),
//     );
//   }

//   static Widget buildFooter() => Container(
//           child: Column(
//         crossAxisAlignment: CrossAxisAlignment.center,
//         children: [
//           Divider(),
//           SizedBox(height: 2 * PdfPageFormat.mm),
//           buildSimpleText(
//               title:
//                   'B.P.: 8083 Douala - Direction - Générale : Douala-Maképé montée Ecole SIRA'),
//           SizedBox(height: 1 * PdfPageFormat.mm),
//           buildSimpleText(
//             title:
//                 'Tèl.: (+237) 233 47 85 01 / 683 73 19 56 / 678 18 99 34 / 658 83 03 12 - E.mail:batiprocameroun@gmail.com',
//           ),
//           SizedBox(height: 1 * PdfPageFormat.mm),
//           buildSimpleText(
//             title: 'NUI: M102015235973Q / RCCM RC/DLA/2020/B/5292',
//           ),
//         ],
//       ));

//   static buildSimpleText({
//     required String title,
//   }) {
//     final style = TextStyle(fontWeight: FontWeight.bold, fontSize: 10);

//     return Row(
//       mainAxisSize: MainAxisSize.min,
//       crossAxisAlignment: pw.CrossAxisAlignment.center,
//       children: [
//         Text(title, style: style),
//       ],
//     );
//   }

//   static buildText({
//     required String title,
//     required String value,
//     double width = double.infinity,
//     TextStyle? titleStyle,
//     bool unite = false,
//   }) {
//     final style = titleStyle ?? TextStyle(fontWeight: FontWeight.bold);

//     return Container(
//       width: width,
//       child: Row(
//         mainAxisAlignment: MainAxisAlignment.spaceBetween,
//         children: [
//           Text(title, style: style),
//           Text(value, style: unite ? style : null),
//         ],
//       ),
//     );
//   }
// }
