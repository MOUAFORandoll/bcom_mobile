// ignore_for_file: must_be_immutable

import '../exportcomponent.dart';

class AppInput extends StatefulWidget {
  TextEditingController controller;
  final String? Function(String? value)? validator;
  final String? label;
  final String? errorText;
  final String? placeholder;
  final ValueChanged<String>? onChanged;
  final bool isRequired;
  final TextInputType? textInputType;
  final Icon? icon;
  final prefix;
  AppInput(
      {Key? key,
      required this.controller,
      this.label,
      this.validator,
      this.placeholder = '',
      this.errorText,
      this.onChanged,
      this.isRequired = false,
      this.textInputType,
      this.prefix,
      this.icon})
      : super(key: key);

  @override
  State<AppInput> createState() => _AppInputState();
}

class _AppInputState extends State<AppInput> {
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
              margin: EdgeInsets.only(bottom: kMarginY),
              child: Row(
                children: [
                  Container(
                      child: Text(
                    widget.placeholder!,
                    style: TextStyle(
                      fontWeight: FontWeight.w500,
                      // color: ColorsApp.tird,
                      fontSize: 12,
                      fontFamily: 'Lato',
                    ),
                  )),
                  if (widget.isRequired)
                    Container(
                        margin: EdgeInsets.only(left: kMarginX),
                        child: Text(
                          '*',
                          style: TextStyle(
                            fontWeight: FontWeight.w500,
                            color: ColorsApp.red,
                            fontSize: 20,
                            fontFamily: 'Lato',
                          ),
                        )),
                ],
              ),
            ),
            TextFormField(
              cursorColor: ColorsApp.tird, autofocus: false,
              controller: widget.controller,
              style: TextStyle(
                fontWeight: FontWeight.w500,
                // color: ColorsApp.tird,
                fontSize: 12,
                fontFamily: 'Lato',
              ),

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
                    fontSize: 11,
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

class AppInputPassword extends StatefulWidget {
  final TextEditingController controller;
  final String? Function(String? value)? validator;

  final String? errorText;
  final String placeholder;
  final ValueChanged<String>? onChanged;
  final bool obscureText;
  // final bool valid;
  final TextInputType? textInputType;
  const AppInputPassword({
    Key? key,
    required this.controller,
    this.validator,
    // this.valid = false,
    this.placeholder = '',
    this.errorText,
    this.onChanged,
    this.obscureText = false,
    this.textInputType,
  }) : super(key: key);

  @override
  State<AppInputPassword> createState() => _AppInputPasswordState();
}

class _AppInputPasswordState extends State<AppInputPassword> {
  bool isVisible = true;
  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      margin: EdgeInsets.symmetric(horizontal: kMarginX, vertical: kMarginY),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            margin: EdgeInsets.only(bottom: kMarginY),
            child: Row(
              children: [
                Container(
                    child: Text(
                  widget.placeholder,
                  style: TextStyle(
                    fontWeight: FontWeight.w500,
                    // color: ColorsApp.tird,
                    fontSize: 12,
                    fontFamily: 'Lato',
                  ),
                )),
                Container(
                    margin: EdgeInsets.only(left: kMarginX),
                    child: Text(
                      '*',
                      style: TextStyle(
                        fontWeight: FontWeight.w500,
                        color: ColorsApp.red,
                        fontSize: 20,
                        fontFamily: 'Lato',
                      ),
                    )),
              ],
            ),
          ),
          TextFormField(
            autofocus: false,
            controller: widget.controller,
            style: TextStyle(
              fontWeight: FontWeight.w500,
              // color: ColorsApp.tird,
              fontSize: 12,
              fontFamily: 'Lato',
            ),
            cursorColor: ColorsApp.tird,
            // maxLength: widget.maxLength,
            onChanged: widget.onChanged,

            decoration: InputDecoration(
                fillColor: ColorsApp.second.withOpacity(0.3),
                focusColor: ColorsApp.second.withOpacity(0.3),
                hoverColor: ColorsApp.second.withOpacity(0.3),
                // label: Text(widget.placeholder),
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
                // errorText: widget.errorText,
                errorStyle: TextStyle(
                  fontSize: 11,
                  fontFamily: 'Lato',
                  color: ColorsApp.red,
                ),
                // hintText: widget.placeholder,
                hintStyle: TextStyle(
                  fontWeight: FontWeight.w500,
                  fontSize: 12,
                  fontFamily: 'Lato',
                ),
                suffixIcon: widget.obscureText == true
                    ? IconButton(
                        onPressed: () {
                          setState(() {
                            isVisible = !isVisible;
                          });
                        },
                        icon: Icon(
                            isVisible
                                ? Icons.remove_red_eye
                                : FontAwesomeIcons.eyeSlash,
                            size: isVisible ? 22 : 19
                            /*     */
                            ),
                      )
                    : null),
            validator: widget.validator,
            obscureText: isVisible,
            keyboardType: widget.textInputType,
          ),
        ],
      ),
    );
  }
}
