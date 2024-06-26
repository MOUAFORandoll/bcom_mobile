import '../exportcomponent.dart';

class AppInputDescription extends StatefulWidget {
  final TextEditingController controller;
  final String? Function(String? value)? validator;
  final String? label;
  final String? errorText;
  final String? placeholder;
  final ValueChanged<String>? onChanged;
  final bool obscureText;
  final TextInputType? textInputType;
  final Icon? icon;
  final prefix;
  const AppInputDescription(
      {Key? key,
      required this.controller,
      this.label,
      this.validator,
      this.placeholder,
      this.errorText,
      this.onChanged,
      this.obscureText = false,
      this.textInputType,
      this.prefix,
      this.icon})
      : super(key: key);

  @override
  State<AppInputDescription> createState() => _AppInputDescriptionState();
}

class _AppInputDescriptionState extends State<AppInputDescription> {
  bool isVisible = false;
  @override
  Widget build(BuildContext context) {
    return Container(
        alignment: Alignment.center,
        margin:
            EdgeInsets.symmetric(horizontal: kMarginX, vertical: kMarginY / 2),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
                margin: EdgeInsets.symmetric(vertical: kMarginY),
                child: Text(
                  widget.placeholder!,
                  style: TextStyle(
                    fontWeight: FontWeight.w500,
                    // color: ColorsApp.tird,
                    fontSize: 12,
                    fontFamily: 'Lato',
                  ),
                )),
            TextFormField(
              cursorColor: ColorsApp.tird, autofocus: false,
              controller: widget.controller,
              style: TextStyle(
                fontWeight: FontWeight.w500,
                // color: ColorsApp.tird,
                fontSize: 12,
                fontFamily: 'Lato',
              ),
              maxLines: 5,
              // maxLength: widget.maxLength,
              onChanged: widget.onChanged,

              decoration: InputDecoration(
                  fillColor: ColorsApp.second.withOpacity(0.3),
                  focusColor: ColorsApp.second.withOpacity(0.3),
                  hoverColor: ColorsApp.second.withOpacity(0.3),
                  // label: Text(widget.placeholder!),
                  contentPadding: EdgeInsets.all(15),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: ColorsApp.second, width: 1),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  errorBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: ColorsApp.red, width: 1),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: ColorsApp.grey, width: 1),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  errorText: widget.errorText,
                  errorStyle: TextStyle(
                    fontFamily: 'Lato',
                    color: ColorsApp.red,
                  ),
                  prefixIcon: widget.prefix,
                  // hintText: widget.placeholder,
                  hintStyle: TextStyle(
                    fontWeight: FontWeight.w500,
                    fontSize: 12,
                    fontFamily: 'Lato',
                  ),
                  suffixIcon: widget.icon),
              validator: widget.validator,
              obscureText: isVisible,
              keyboardType: widget.textInputType,
            ),
          ],
        ));
  }
}
