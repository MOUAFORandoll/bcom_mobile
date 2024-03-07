import 'package:Bcom/presentation/components/exportcomponent.dart';

class AppButton extends StatelessWidget {
  final Color bgColor;
  final Color textColor;
  final String text;
  final Widget? leading;
  final VoidCallback? onTap;
  final bool disabled;
  final bool shadow;
  final double? width;
  final MainAxisSize size;
  final BoxBorder? border;
  final IconData? iconData;
  AppButton({
    Key? key,
    required this.text,
    this.bgColor = ColorsApp.second,
    this.textColor = ColorsApp.primary,
    this.onTap,
    this.leading,
    this.border,
    this.shadow = true,
    this.disabled = false,
    this.width,
    this.iconData,
    this.size = MainAxisSize.min,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: disabled ? null : onTap,
      child: Container(
        alignment: Alignment.center,
        margin: EdgeInsets.symmetric(horizontal: kMarginX, vertical: kMarginY),
        constraints: const BoxConstraints(minHeight: 56),
        width: width,
        padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: disabled ? Colors.grey : bgColor,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisSize: size,
          children: [
            if (iconData != null)
              Icon(
                iconData,
                color: Colors.black,
              ),
            if (leading != null)
              Padding(
                padding: const EdgeInsets.only(right: 5.0),
                child: leading!,
              ),
            Container(
                child: Text(
              text,
              textAlign: TextAlign.center,
              style: TextStyle(
                fontFamily: 'Lato',
                color: disabled
                    ? textColor.withOpacity(.5)
                    : bgColor == ColorsApp.primary
                        ? ColorsApp.white
                        : textColor,
                fontWeight: FontWeight.w600,
                // fontSize: kMediumText,
              ),
            )),
          ],
        ),
      ),
    );
  }
}
