// ignore_for_file: must_be_immutable

import 'package:Bcom/application/export_bloc.dart';
import 'package:Bcom/presentation/components/exportcomponent.dart';

import 'package:Bcom/core.dart';
import 'package:Bcom/presentation/user/complete_info_steps/first_steps.dart';
import 'package:Bcom/presentation/user/complete_info_steps/second_steps.dart'; 
import 'package:flutter_easyloading/flutter_easyloading.dart';

@RoutePage()
class CompleteEntrepriseInfoPage extends StatefulWidget {
  @override
  State<CompleteEntrepriseInfoPage> createState() =>
      _CompleteEntrepriseInfoPageState();
}

class _CompleteEntrepriseInfoPageState
    extends State<CompleteEntrepriseInfoPage> {
  var loader = AppLoader.bounceLargeColorLoaderController();
  int _state = 0;
  final formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<UserBloc, UserState>(
        listener: (context, state) {
          if (state.isLoading == 1) {
            EasyLoading.show(
                dismissOnTap: true,
                status: 'En cours',
                maskType: EasyLoadingMaskType.black);
          } else if (state.isLoading == 3) {
            EasyLoading.dismiss();
            showError(state.eventMessage!, context);
          } else if (state.isLoading == 2) {
            EasyLoading.dismiss();

            showSuccess('Mise a jour effectuee', context);
            initLoad(context);
            print('-----44--------*********');
          }
        },
        builder: (context, state) => Container(
                child: Column(children: [
              _state == 0 ? FirstStep() : SecondStep(),
              Container(
                // height: getHeight(context),
                margin: EdgeInsets.symmetric(horizontal: kMarginX),
                child: _state == 0
                    ? AppButton(
                        size: MainAxisSize.max,
                        disabled:
                            BlocProvider.of<UserBloc>(context).getState1(),
                        text: 'Next'.tr(),
                        onTap: () async {
                          setState(() {
                            _state = 1;
                          });
                        })
                    : Container(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(
                              width: getWith(context) * .45,
                              child: AppButton(
                                  size: MainAxisSize.max,
                                  // bgColor: ColorsApp.primary,
                                  text: 'Back'.tr(),
                                  onTap: () async {
                                    setState(() {
                                      _state = 0;
                                    });
                                  }),
                            ),
                            Container(
                              width: getWith(context) * .45,
                              child: AppButton(
                                  size: MainAxisSize.max,
                                  disabled: BlocProvider.of<UserBloc>(context)
                                      .getState2(),
                                  text: 'Terminer'.tr(),
                                  onTap: () async {
                                    context.read<UserBloc>()
                                      ..add(AddInfoClient())
                                      ..add(GetUserEvent());
                                    BlocProvider.of<HomeBloc>(context)
                                        .add(UserDataEvent());
                                  }),
                            ),
                          ],
                        ),
                      ),
              )
            ])));
  }
}
