import 'dart:io';

import 'package:Bcom/presentation/components/Widget/global_bottom_sheet.dart';
import 'package:Bcom/presentation/components/exportcomponent.dart';

bottomSheetChoosePicture({required BuildContext context, required action}) {
  return GlobalBottomSheet.show(
      context: context, widget: ChooseLogoWidget(action: action));
}

class ChooseLogoWidget extends StatefulWidget {
  const ChooseLogoWidget({super.key, this.action});
  final action;

  @override
  State<ChooseLogoWidget> createState() => _ChooseLogoWidgetState();
}

class _ChooseLogoWidgetState extends State<ChooseLogoWidget> {
  chooseLogo({required String type}) async {
    var image = await ImagePicker().pickImage(
        source: type == 'camera' ? ImageSource.camera : ImageSource.gallery,
        imageQuality: 100,
        maxHeight: 500,
        maxWidth: 500);
    if (image == null) return;
    var fileLenght = await image.length();
    int maxFileSize = 5 * 1024 * 1024;
    if (fileLenght <= maxFileSize) {
      File logoImage = (File(image.path));
      widget.action(logoImage);
    } else {
      showError(
        'selectsize'.tr(),
        context,
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container(
        height: getHeight(context) * .4,
        padding: EdgeInsets.symmetric(horizontal: kMarginX),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(10),
            topRight: Radius.circular(10),
          ),
          color: ColorsApp.white,
        ),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Container(
              alignment: Alignment.topRight,
              margin: EdgeInsets.symmetric(vertical: kMarginY * 2),
              child: InkWell(
                onTap: () => AutoRouter.of(context).pop(),
                child: Icon(Icons.close),
              )),
          Container(
              alignment: Alignment.center,
              margin: EdgeInsets.only(bottom: kMarginY),
              child: Text(
                'Selectionner une option'.tr(),
                style: TextStyle(fontWeight: FontWeight.w500),
              )),
          Container(
              child: Column(
            children: [
              AppButton(
                text: 'Camera'.tr(),
                size: MainAxisSize.max,
                iconData: Icons.camera_alt_rounded,
                onTap: () async {
                  chooseLogo(type: 'camera');
                },
              ),
              Padding(
                padding: EdgeInsets.only(top: 10.0),
                child: AppButton(
                    text: 'Galerie'.tr(),
                    size: MainAxisSize.max,
                    iconData: Icons.camera_front,
                    onTap: () async {
                      chooseLogo(type: 'gallery');
                    }),
              ),
            ],
          ))
        ]));
  }
}
