import 'package:Bcom/presentation/components/exportcomponent.dart';

// ignore: must_be_immutable
class TextForm extends StatelessWidget {
  String? hint;
  IconData? icon;
  TextInputType? type;
  TextEditingController? controller;
  Function(String)? onChange;
  Function? onTap;
  bool? obscureText;
  TextForm(
      {this.hint,
      this.icon,
      this.onChange,
      this.type,
      this.controller,
      this.obscureText = false,
      this.onTap});
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: kMarginY),
      child: TextFormField(
        onChanged: (String value) {
          if (onChange != null) onChange!(value);
        },
        minLines: 5,
        maxLines: 15,
        controller: controller,
        validator: (value) {
          return value!.isEmpty ? 'veillez remplir se champs' : null;
        },
        keyboardType: type,
        obscureText: obscureText!,
        decoration: new InputDecoration(
          fillColor: ColorsApp.second.withOpacity(0.3),
          focusColor: ColorsApp.second.withOpacity(0.3),
          hoverColor: ColorsApp.second.withOpacity(0.3),
          // label: Text(widget.placeholder!),
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
          contentPadding: EdgeInsets.only(
            left: 15,
            bottom: 11,
            top: 15,
            right: 15,
          ),
          hintText: hint,
          hintStyle: TextStyle(
            color: Colors.grey,
          ),
          suffixIcon: InkWell(
            onTap: () => onTap,
            child: Icon(
              icon,
              color: Colors.grey,
            ),
          ),
        ),
      ),
    );
  }
}
