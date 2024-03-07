import 'package:Bcom/presentation/biker/first_biker_view.dart';
import 'package:Bcom/presentation/biker/list_missions_view.dart';
import 'package:Bcom/utils/constants/assets.dart';
import 'package:custom_navigation_bar/custom_navigation_bar.dart';
import 'package:flutter_svg/flutter_svg.dart';
import '../components/exportcomponent.dart';
import 'package:Bcom/application/export_bloc.dart';

var loader = AppLoader.bounceLargeColorLoaderController();

class BikerHomePage extends StatefulWidget {
  const BikerHomePage({super.key});
  @override
  State<BikerHomePage> createState() => _BikerHomePageState();
}

class _BikerHomePageState extends State<BikerHomePage>
    with WidgetsBindingObserver {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<HomeBloc, HomeState>(
        builder: (context, state) => SafeArea(
            child: state.index == 0 ? FirstBikerView() : ListMissionsView()));
  }
}
