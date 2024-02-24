// ignore: must_be_immutable

import 'package:Bcom/presentation/components/exportcomponent.dart';

// ignore: must_be_immutable
class PlaceComponent extends StatelessWidget {
  var place, onTap, selectedPlace, status;

  PlaceComponent({this.place, this.status, this.onTap, this.selectedPlace});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      child: Container(
          height: getHeight(context),
          width: getWith(context),
          alignment: Alignment.center,
          padding: EdgeInsets.all(0),
          decoration: BoxDecoration(
              color: (status == true)
                  ? Colors.red
                  : (selectedPlace == place.toString())
                      ? Colors.blue
                      : Colors.green,
              border: Border.all()),
          child: Text(' $place')),
      onTap: onTap,
    );
  }
}
