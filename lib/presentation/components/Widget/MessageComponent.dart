import 'package:Bcom/application/export_bloc.dart';
import 'package:Bcom/application/model/data/MessageModel.dart';
import 'package:Bcom/utils/constants/assets.dart';
import 'package:cached_network_image/cached_network_image.dart';

import '../exportcomponent.dart';

class MessageComponent extends StatelessWidget {
  const MessageComponent({required this.message});
  final MessageModel message;

  @override
  Widget build(BuildContext context) {
    final alignment =
        message.isEmetteur ? Alignment.centerRight : Alignment.centerLeft;
    final color = message.isEmetteur ? ColorsApp.primary : ColorsApp.second;

    return Align(
        alignment: alignment,
        child: Row(
          mainAxisAlignment: message.isEmetteur
              ? MainAxisAlignment.end
              : MainAxisAlignment.start,
          children: [
            if (!message.isEmetteur)
              Container(
                margin: EdgeInsets.only(right: kMarginX / 2),
                child: CircleAvatar(
                    radius: 20, backgroundImage: AssetImage(Assets.logo)),
              ),
            Container(
                margin: EdgeInsets.only(bottom: kMarginY / 2),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8), color: color),
                constraints: BoxConstraints(
                  maxWidth: getWith(context) * .50,
                ),
                padding: EdgeInsets.symmetric(
                    horizontal: kMarginX * 1.3, vertical: kMarginY),

                // width: getWith(context) * .58,
                child: Text(message.message,
                    style: TextStyle(
                      fontFamily: 'Lato',
                      color: ColorsApp.white,
                    ))),
            if (message.isEmetteur)
              BlocBuilder<HomeBloc, HomeState>(
                builder: (context, state) => Container(
                  margin: EdgeInsets.only(left: kMarginX / 2),
                  child: CircleAvatar(
                    radius: 20,
                    child: CachedNetworkImage(
                      fit: BoxFit.cover,
                      imageUrl: 'state.user!.',
                      imageBuilder: (context, imageProvider) {
                        return Container(
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            image: DecorationImage(
                              image: imageProvider,
                              fit: BoxFit.cover,
                            ),
                          ),
                        );
                      },
                      placeholder: (context, url) {
                        return Container(
                          child: Center(
                              child: CircularProgressIndicator(
                            color: ColorsApp.primary,
                          )),
                        );
                      },
                      errorWidget: (context, url, error) {
                        return CircleAvatar(
                            backgroundColor: ColorsApp.primary,
                            radius: 20,
                            backgroundImage: AssetImage(Assets.babana));
                      },
                    ),
                  ),
                ),
              ),
          ],
        ));
  }
}
