import 'package:Bcom/application/export_bloc.dart';

import 'package:Bcom/utils/constants/assets.dart';
import 'package:Bcom/presentation/components/exportcomponent.dart';

// ignore: must_be_immutable
class ContactAdminMissionComponent extends StatelessWidget {
  Widget build(BuildContext context) {
    return Container(
        padding: EdgeInsets.symmetric(vertical: kMarginY),
        decoration: BoxDecoration(
          color: ColorsApp.bg,
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            // Container(
            //     height: getHeight(context) / 4,
            //     margin: EdgeInsets.only(left: kMarginX),
            //     decoration: BoxDecoration(
            //         image:
            //             DecorationImage(image: AssetImage(Assets.empty_shop)))),
            Container(
                padding: EdgeInsets.symmetric(
                    horizontal: kMarginX, vertical: kMarginY * 2),
                child: Text(
                  'Contacter administrateur pour avoir une mission.',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.grey,
                    fontSize: kDescription,
                  ),
                )),
            Container(
                margin: EdgeInsets.symmetric(vertical: kMarginY * 2),
                padding: EdgeInsets.symmetric(
                    horizontal: kMarginX, vertical: kMarginY),
                child: AppButton(
                  size: MainAxisSize.max,
                  bgColor: ColorsApp.second,
                  iconData: Icons.call,
                  text: 'Contacter',
                  onTap: () {
                    BlocProvider.of<BikerBloc>(context).add(DemandeMission());
                  },
                ))
          ],
        ));
  }
}
