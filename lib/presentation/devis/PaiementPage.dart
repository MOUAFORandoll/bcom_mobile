import 'package:Bcom/application/export_bloc.dart';

import '../../presentation/components/exportcomponent.dart';

import 'package:webview_flutter/webview_flutter.dart';

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

    setState(() {
      controller = WebViewController()
        ..setJavaScriptMode(JavaScriptMode.unrestricted)
        ..setBackgroundColor(const Color(0x00000000))
        ..setNavigationDelegate(
          NavigationDelegate(
            onProgress: (int progress) {
              // Update loading bar.
              print(progress);
              if (mounted) {
                setState(() {
                  _progress = progress;
                });
              }
            },
            onPageStarted: (String url) {
              print('start------${url}');
            },
            onPageFinished: (String url) {
              print('fichinin------${_progress}');
            },
            onWebResourceError: (WebResourceError error) {},
            onNavigationRequest: (NavigationRequest request) {
              if (request.url.startsWith('https://www.youtube.com/')) {
                return NavigationDecision.prevent;
              }
              return NavigationDecision.navigate;
            },
          ),
        )
        ..loadRequest(
            Uri.parse(BlocProvider.of<DevisBloc>(context).state.paiement_url!));
    });
  }

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<DevisBloc, DevisState>(
        listener: (ctx, state) {},
        builder: (context, state) {
          return Scaffold(
              appBar: AppBar(
                leading: AppBackButton(),
                title: const Text('Paiement de votre livraison'),
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
                              color: ColorsApp.primary,
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
                  : WebViewWidget(controller: controller!));
        });
  }
}
//237654434782
