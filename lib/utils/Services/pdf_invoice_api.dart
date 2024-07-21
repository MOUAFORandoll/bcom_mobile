import 'dart:io';
import 'package:Bcom/application/model/data/ProformatModel.dart';
import 'package:Bcom/utils/functions/datetime_format_utils.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:pdf/pdf.dart';
import 'package:pdf/widgets.dart' as pw;
import 'package:Bcom/utils/Services/pdf_api.dart';
import 'package:Bcom/utils/constants/assets.dart';
import 'package:Bcom/entity.dart';

class PdfInvoiceApi {
  static Future<File> generate({required ProformatModel dataProformat}) async {
    final pdf = pw.Document();

    // Load fonts once
    final fontData = await rootBundle.load('assets/fonts/Lato/Lato-Black.ttf');
    final ttf = pw.Font.ttf(fontData);
    final fontBold = await rootBundle.load('assets/fonts/Lato/Lato-Bold.ttf');
    final ttfBold = pw.Font.ttf(fontBold);
    final fontItalic =
        await rootBundle.load('assets/fonts/Lato/Lato-Italic.ttf');
    final ttfItalic = pw.Font.ttf(fontItalic);
    final fontBoldItalic =
        await rootBundle.load('assets/fonts/Lato/Lato-BoldItalic.ttf');
    final ttfBoldItalic = pw.Font.ttf(fontBoldItalic);
    final fontCourier =
        await rootBundle.load('assets/fonts/Lato/Lato-Bold.ttf');
    final ttfCourier = pw.Font.ttf(fontCourier);
    final fontOpenSans =
        await rootBundle.load('assets/fonts/Lato/Lato-BlackItalic.ttf');
    final ttfOpenSans = pw.Font.ttf(fontOpenSans);

    final ByteData image = await rootBundle.load(Assets.logo);
    final Uint8List imageData = image.buffer.asUint8List();

    final ByteData bgImage =
        await rootBundle.load('assets/images/background.png');
    final Uint8List bgImageData = bgImage.buffer.asUint8List();

    final pw.ThemeData theme = pw.ThemeData.withFont(
      base: ttfOpenSans,
      bold: ttfBold,
      italic: ttfItalic,
      boldItalic: ttfBoldItalic,
      fontFallback: [
        ttfCourier,
        ttf,
      ],
    );

    pdf.addPage(
      pw.Page(
        theme: theme,
        pageFormat: PdfPageFormat.a4,
        build: (context) => pw.Stack(
          children: [
            pw.Positioned.fill(
              child:
                  pw.Image(pw.MemoryImage(bgImageData), fit: pw.BoxFit.cover),
            ),
            pw.Column(
              mainAxisAlignment: pw.MainAxisAlignment.start,
              crossAxisAlignment: pw.CrossAxisAlignment.start,
              children: [
                pw.Container(
                    margin: pw.EdgeInsets.only(right: 50),
                    alignment: pw.Alignment.topRight,
                    child: buildText(
                        title: 'Fait le ',
                        value: FormatDateTime()
                            .dateToSimpleDate(new DateTime.now().toString()),
                        width: 110)),
                pw.Column(
                  mainAxisAlignment: pw.MainAxisAlignment.start,
                  crossAxisAlignment: pw.CrossAxisAlignment.start,
                  children: [
                    pw.SizedBox(height: 110),
                    buildText(
                        title: 'Nom Complet',
                        value: dataProformat.user.fullName,
                        width: 110),
                    buildText(
                        title: 'Téléphone',
                        value: dataProformat.user.phone,
                        width: 110),
                    buildText(
                        title: 'Adresse mail',
                        value: dataProformat.user.email!,
                        width: 110),
                    pw.SizedBox(height: 110),
                  ],
                ),
                pw.Container(
                  alignment: pw.Alignment.center,
                  margin: pw.EdgeInsets.only(top: 5),
                  child: pw.Row(
                    mainAxisAlignment: pw.MainAxisAlignment.spaceBetween,
                    children: [
                      pw.Text(
                        'Contenu de la demande de devis',
                      ),
                      pw.Text(
                        dataProformat.devisNumber,
                      )
                    ],
                  ),
                ),
                pw.Divider(),
                pw.SizedBox(height: 10),
                buildParameterTable(dataProformat.parametre),
                pw.SizedBox(height: 10),
                pw.Container(
                    alignment: pw.Alignment.bottomRight,
                    margin: pw.EdgeInsets.only(top: 30, right: 60),
                    child: buildText(
                        title: 'Prix ',
                        value: dataProformat.amount.toString() + ' FCFA',
                        width: 50)),
              ],
            ),
          ],
        ),
      ),
    );

    return PdfApi.saveDocument(name: 'bcom.pdf', pdf: pdf);
  }

  static pw.Widget buildText({
    required String title,
    required String value,
    double width = double.infinity,
    pw.TextStyle? titleStyle,
    bool unite = false,
  }) {
    final style = titleStyle ?? pw.TextStyle(fontWeight: pw.FontWeight.bold);

    return pw.Container(
      width: width,
      child: pw.Row(
        mainAxisAlignment: pw.MainAxisAlignment.spaceBetween,
        children: [
          pw.Text(title, style: style),
          pw.SizedBox(width: 20),
          pw.Text(value, style: unite ? style : null),
        ],
      ),
    );
  }

  static pw.Widget buildParameterTable(List<Parametre2> parametres) {
    return pw.Table.fromTextArray(
      headers: ['Parametre', 'Valeur'],
      data: parametres
          .map((param) => [param.title, param.value.toString()])
          .toList(),
      border: pw.TableBorder.all(),
      headerStyle: pw.TextStyle(fontWeight: pw.FontWeight.bold),
      cellAlignment: pw.Alignment.centerLeft,
      headerDecoration: pw.BoxDecoration(
        color: PdfColors.grey300,
      ),
      cellHeight: 30,
      cellAlignments: {
        0: pw.Alignment.centerLeft,
        1: pw.Alignment.centerRight,
      },
    );
  }
}
