import 'package:Bcom/presentation/components/Widget/EmptyMissionComponent.dart';
import 'package:Bcom/presentation/components/Widget/ShimmerData.dart';
import 'package:Bcom/presentation/components/exportcomponent.dart';
import 'package:Bcom/application/export_bloc.dart';
import '../components/Widget/missionsComponent.dart';

// ignore: must_be_immutable
class ListMissionsDispo extends StatelessWidget {
  ListMissionsDispo({super.key});
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<BikerBloc, BikerState>(builder: (context, state) {
      return state.load_list_mission == 0
          ? ShimmerData()
          : state.load_list_mission == 2
              ? Text('Error')
              : state.list_mission!.length == 0
                  ? Container()
                  : Container(
                      child: SingleChildScrollView(
                          child: ListView.builder(
                              physics: NeverScrollableScrollPhysics(),
                              shrinkWrap: true,
                              itemCount: state.list_mission!.length,
                              // controller: state,
                              itemBuilder: (_, index) => MissionsComponent(
                                    mission: state.list_mission![index],
                                  ))));
    });
  }
}
