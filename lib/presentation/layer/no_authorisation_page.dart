import 'package:Bcom/presentation/biker/first_biker_view.dart';
import 'package:Bcom/presentation/biker/list_missions_view.dart';
import 'package:Bcom/presentation/components/Widget/icon_svg.dart';
import 'package:Bcom/presentation/components/Widget/k_home_info.dart';
import 'package:Bcom/utils/constants/assets.dart';
import 'package:custom_navigation_bar/custom_navigation_bar.dart';
import 'package:flutter_svg/flutter_svg.dart';
import '../components/exportcomponent.dart';
import 'package:Bcom/application/export_bloc.dart';

class NoAuthorisation extends StatelessWidget {
  const NoAuthorisation({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<HomeBloc, HomeState>(
        listener: (context, state) {},
        builder: (context, state) => Container(
              alignment: Alignment.center,
              margin: EdgeInsets.only(top: getHeight(context) / 3),
              child: Text(
                'Vous n\'avez pas l\'authorisaton de consulter cette page',
                overflow: TextOverflow.ellipsis,
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
            ));
  }
}
