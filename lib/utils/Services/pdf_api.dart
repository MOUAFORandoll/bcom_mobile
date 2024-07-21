import 'dart:io';

import 'package:open_file/open_file.dart';
import 'package:path_provider/path_provider.dart';
import 'package:pdf/widgets.dart';

class PdfApi {
  static Future<File> saveDocument({
    required String name,
    required Document pdf,
  }) async {
    final bytes = await pdf.save();

    final dir = await getDownloadsDirectory();
    print('---${dir!.path}/$name------save---sdsd---data');
    final file = File('${dir!.path}/$name');
    print('---------save---sdsd---data');

    await file.writeAsBytes(bytes);
    openFile(file);
    return file;
  }

  static Future openFile(File file) async {
    final url = file.path;

    await OpenFile.open(url);
  }
}
