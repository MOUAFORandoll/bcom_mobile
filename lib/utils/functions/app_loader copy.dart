import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';

class AppLoader {
  void open(BuildContext context) {
    showDialog(
      context: context,
      barrierDismissible: false,
      builder: (BuildContext context) {
        return Dialog(
          child: AlertDialog(
            content: Container(
              height: 50,
              width: 50,
              child: SpinKitFadingCircle(
                color: Colors.blue,
                size: 50.0,
              ),
            ),
          ),
        );
      },
    );
  }

  void close() {
    // Navigator.of(context).pop();
  }
}
