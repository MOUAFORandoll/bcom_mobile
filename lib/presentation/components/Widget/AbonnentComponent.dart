import 'package:Bcom/application/model/data/AbonnementModel.dart';
import 'package:Bcom/presentation/components/exportcomponent.dart';
import 'package:cached_network_image/cached_network_image.dart';

// ignore: must_be_immutable
class AbonnentComponent extends StatelessWidget {
  AbonnentComponent(
      {required this.abonnement, required this.selected, required this.onTap});
  final AbonnementModel abonnement;

  bool selected;
  var onTap;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        alignment: Alignment.center,
        decoration: BoxDecoration(
            color: ColorsApp.grey.withOpacity(.3),
            borderRadius: BorderRadius.circular(8)),
        padding: EdgeInsets.all(kMarginY),
        child: Stack(
          children: [
            Column(
              children: [
                CachedNetworkImage(
                  height: getHeight(context) / 10,
                  width: getHeight(context) / 10,
                  fit: BoxFit.cover,
                  imageUrl: abonnement.fileService ?? '',
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
                      decoration: BoxDecoration(
                          color: ColorsApp.grey,
                          borderRadius: BorderRadius.circular(50)),
                      child: Center(
                          child: CircularProgressIndicator(
                              color: ColorsApp.second)),
                    );
                  },
                  errorWidget: (context, url, error) {
                    return CircleAvatar(
                        // backgroundColor: ColorsApp.tird,
                        radius: 150,
                        backgroundImage: AssetImage('assets/images/user.jpg'));
                  },
                ),
                Container(
                    margin: EdgeInsets.only(top: kMarginY),
                    child: Text(
                      abonnement.title!,
                      style:
                          TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
                    )),
                Container(
                    child: Text(
                  abonnement.amount! + ' FCFA',
                  overflow: TextOverflow.ellipsis,
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.w800),
                )),
                Container(
                    child: Text(
                  abonnement.description!,
                  overflow: TextOverflow.ellipsis,
                  style: TextStyle(),
                ))
              ],
            ),
            Positioned(
                child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8),
              ),
              child: Icon(Icons.verified_rounded,
                  color: selected ? ColorsApp.second : Colors.grey,
                  size: 30,
                  weight: 10),
            ))
          ],
        ),
      ),
    );
  }
}
