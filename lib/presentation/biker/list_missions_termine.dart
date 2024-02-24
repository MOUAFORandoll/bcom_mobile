import 'package:Bcom/presentation/components/Widget/EmptyMissionComponent.dart';
import 'package:Bcom/presentation/components/Widget/ShimmerData.dart';
import 'package:Bcom/presentation/components/Widget/missionsUserComponent.dart';
import 'package:Bcom/presentation/components/exportcomponent.dart';
import 'package:Bcom/application/export_bloc.dart';
import '../components/Widget/missionsComponent.dart';

// ignore: must_be_immutable
class ListMissionsTerminee extends StatelessWidget {
  ListMissionsTerminee({super.key});
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<BikerBloc, BikerState>(builder: (context, state) {
      return state.load_list_mission_done == 0
          ? ShimmerData()
          : state.list_mission_done == 2
              ? Text('Error')
              : state.list_mission!.length == 0
                  ? EmptyMissionComponent()
                  : Container(
                      child: SingleChildScrollView(
                          child: ListView.builder(
                              physics: NeverScrollableScrollPhysics(),
                              shrinkWrap: true,
                              itemCount: state.list_mission_done!.length,
                              // controller: state,
                              itemBuilder: (_, index) => MissionsUserComponent(
                                    mission: state.list_mission_done![index],
                                  ))));
    });
  }
}
