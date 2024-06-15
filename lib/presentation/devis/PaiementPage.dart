import 'package:Bcom/application/export_bloc.dart';
import 'package:Bcom/presentation/home/home_page.dart';
import 'package:webview_flutter/webview_flutter.dart';

import '../../presentation/components/exportcomponent.dart';

@RoutePage()
class PaimentPage extends StatefulWidget {
  static const routeName = '/paiement';

  const PaimentPage({super.key});
  @override
  State<PaimentPage> createState() => _PaimentPageState();
}

class _PaimentPageState extends State<PaimentPage> {
  WebViewController? controller;
  int _progress = 0;
  void initState() {
    super.initState();
    print(BlocProvider.of<AbonnementBloc>(context).state.paiement_url!);
    setState(() {
      controller = WebViewController()
        ..setJavaScriptMode(JavaScriptMode.unrestricted)
        ..setBackgroundColor(const Color(0x00000000))
        ..setNavigationDelegate(
          NavigationDelegate(
            onProgress: (int progress) {
              // Update loading bar.
              print(progress);
              // if (mounted) {
              setState(() {
                _progress = progress;
              });
              // }
            },
            onPageStarted: (String url) {
              print('start------${url}');
            },
            onPageFinished: (String url) {
              print('fichinin------${_progress}');
            },
            onWebResourceError: (WebResourceError error) {
              print('fichinin------${error}');
            },
            onNavigationRequest: (NavigationRequest request) {
              if (request.url.startsWith('https://www.youtube.com/')) {
                return NavigationDecision.prevent;
              }
              return NavigationDecision.navigate;
            },
          ),
        )
        ..loadRequest(Uri.parse(
            BlocProvider.of<AbonnementBloc>(context).state.paiement_url!));
    });
  }

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<AbonnementBloc, AbonnementState>(
        listener: (ctx, state) {
      if (state.loadsuccessPay == 1) {
        showSuccess('Operation reussi', context);
        AutoRouter.of(context).replaceNamed(HomePage.routeName);
      }
    }, builder: (context, state) {
      return WillPopScope(
          onWillPop: () async {
            print('----------------');
            // AutoRouter.of(context).pop();
            openVerifyPayment(context);
            print('----------${state.isClosePaiementView}------');
            return true;
          },
          child: Scaffold(
              appBar: AppBar(
                leading: Container(),
                actions: [
                  InkWell(
                    child: Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(30),
                          border: Border.all(
                            color: ColorsApp.second,
                          )),
                      padding: EdgeInsets.all(kMarginX / 5),
                      margin: EdgeInsets.only(right: kMarginX),
                      child: Icon(
                        Icons.check,
                        color: ColorsApp.second,
                        size: 30,
                      ),
                    ),
                    onTap: () => AutoRouter.of(context).pop(),
                  )
                ],
                title: const Text('Paiement de votre abonnement'),
                centerTitle: true,
              ),
              // backgroundColor: ColorsApp.bg,
              body: controller == null || _progress != 100
                  ? Center(
                      child: Container(
                        alignment: Alignment.center,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            CircularProgressIndicator(
                              color: ColorsApp.second,
                            ),
                            Container(
                                margin: EdgeInsets.only(top: kMarginY),
                                child: Text(
                                  'En cours ...',
                                  style: TextStyle(
                                      // color: ColorsApp.second,
                                      ),
                                ))
                          ],
                        ),
                      ), // Afficher un indicateur de chargement si controller est null
                    )
                  : WebViewWidget(controller: controller!)));
    });
  }

  openVerifyPayment(context) => showDialog(
      context: context,
      builder: (context) {
        return BlocBuilder<AbonnementBloc, AbonnementState>(
            builder: (context, state) => AlertDialog(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10.0),
                ),
                title: Container(
                    child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                        width: getWith(context) * .6,
                        child: Text(
                          'Verifier le payement de votre abonnement'.tr(),
                        )),
                    InkWell(
                        child: Icon(Icons.close,
                            color: ColorsApp.primary, weight: 50),
                        onTap: () {
                          BlocProvider.of<AbonnementBloc>(context)
                              .add(EventPayementView(value: false));
                          AutoRouter.of(context).pop();
                        })
                  ],
                )),
                actions: [
                  InkWell(
                      child: Container(
                        padding: EdgeInsets.all(8),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8),
                            color: ColorsApp.primary),
                        child: Row(mainAxisSize: MainAxisSize.min, children: [
                          Text(
                            'Sortir'.tr(),
                            style: TextStyle(
                                color: ColorsApp.white,
                                fontWeight: FontWeight.w600,
                                fontSize: 13),
                          ),
                          Icon(Icons.check, color: ColorsApp.white, weight: 50)
                        ]),
                      ),
                      onTap: () {
                        AutoRouter.of(context).replaceNamed(HomePage.routeName);
                      }),
                  InkWell(
                      child: Container(
                        padding: EdgeInsets.all(8),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8),
                            color: ColorsApp.second),
                        child: Row(mainAxisSize: MainAxisSize.min, children: [
                          Text(
                            'Verifier'.tr(),
                            style: TextStyle(
                                color: ColorsApp.white,
                                fontWeight: FontWeight.w600,
                                fontSize: 13),
                          ),
                          Icon(Icons.check, color: ColorsApp.white, weight: 50)
                        ]),
                      ),
                      onTap: () {
                        BlocProvider.of<AbonnementBloc>(context)
                            .add(VerifyPayement());
                      })
                ],
                content: Container(
                    child: SingleChildScrollView(
                        child: Column(children: [
                  state.loadsuccessPay == 0
                      ? CircularProgressIndicator(
                          color: ColorsApp.second,
                        )
                      : state.loadsuccessPay == 1
                          ? Container(
                              child: Text('Votre abonnement est valide'))
                          : state.loadsuccessPay == 2
                              ? Container(child: Text('Echec de verification'))
                              : state.loadsuccessPay == 3
                                  ? Container(
                                      child: Text('En attente de validation'))
                                  : Container()
                ])))));
      });
}
//237654434782
