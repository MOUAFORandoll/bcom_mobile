 
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
