import 'package:flutter/material.dart';

class GlobalBottomSheet {
  static void show(
      {required BuildContext context,
      required Widget? widget,
      double? maxHeight}) {
    showModalBottomSheet(
      context: context,
      isScrollControlled: true,
      useRootNavigator: true,
      constraints: BoxConstraints(
          maxHeight: maxHeight ?? MediaQuery.of(context).size.height * 0.95,
          minHeight: MediaQuery.of(context).size.height * 0.3,
          maxWidth: MediaQuery.of(context).size.width),
      shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(20.0), topRight: Radius.circular(20.0))),
      barrierColor: Colors.black.withOpacity(0.7),
      builder: (context) => widget!,
    );
  }
}
