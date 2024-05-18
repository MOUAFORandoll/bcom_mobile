import 'package:Bcom/presentation/components/exportcomponent.dart';

Future<TimeOfDay?> customSelectTime(
    {required BuildContext context, TimeOfDay? initialTime}) async {
  var picked = await showTimePicker(
    builder: (BuildContext context, Widget? child) {
      return Theme(
        data: ThemeData.light().copyWith(
          colorScheme: const ColorScheme.light(
            primary: ColorsApp.second,
          ),
        ),
        child: child!,
      );
    },
    context: context,
    initialTime: initialTime ?? TimeOfDay.now(),
  );

  return picked;
}
