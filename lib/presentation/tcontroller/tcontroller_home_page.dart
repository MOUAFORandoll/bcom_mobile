import 'package:Bcom/presentation/components/Button/themeButton.dart';
import 'package:Bcom/presentation/tcontroller/first_controller_view.dart';
import 'package:Bcom/presentation/tcontroller/list_mission_control.dart';
import 'package:Bcom/routes/app_router.gr.dart';
import 'package:Bcom/utils/Services/validators.dart';
import 'package:Bcom/utils/constants/assets.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:custom_navigation_bar/custom_navigation_bar.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:new_version_plus/new_version_plus.dart';
import '../components/exportcomponent.dart';
import 'package:Bcom/application/export_bloc.dart';

var loader = AppLoader.bounceLargeColorLoaderController();

class TcontrollerHomePage extends StatefulWidget {
  const TcontrollerHomePage({super.key});
  @override
  State<TcontrollerHomePage> createState() => _TcontrollerHomePageState();
}

class _TcontrollerHomePageState extends State<TcontrollerHomePage>
    with WidgetsBindingObserver {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<HomeBloc, HomeState>(
        builder: (context, state) => SafeArea(
            child: state.index == 0
                ? FirstControllerView()
                : ListMissionsControlView()));
  }
}
