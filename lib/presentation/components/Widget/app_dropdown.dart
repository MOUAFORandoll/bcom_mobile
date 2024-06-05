import '../exportcomponent.dart';

class AppDropdown extends StatelessWidget {
  final value;
  final items;
  final ValueChanged<String>? onChanged;
  final String? label;
  const AppDropdown({
    Key? key,
    this.value,
    this.label,
    this.items,
    this.onChanged,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        border: Border.all(color: ColorsApp.grey, width: 1),
        borderRadius: BorderRadius.circular(8),
      ),
      height: getHeight(context) * .06,
      width: getWith(context),
      margin: EdgeInsets.only(
        top: kMarginY * 1.5,
      ),
      alignment: Alignment.center,
      child: DropdownButton(
        value: value,
        icon: Container(
          // padding: EdgeInsets.only(top: 4),
          child: Icon(
            Icons.keyboard_arrow_down_outlined,
          ),
        ),
        hint: Container(
          width: getWith(context) * .65,
          alignment: Alignment.center,
          padding: EdgeInsets.symmetric(
            horizontal: 0,
          ),
          child: Text(
            'Choisir le type de communication'.tr(),
            style: TextStyle(
                fontWeight: FontWeight.w500,
                // color: ColorsApp.tird,
                fontSize: 12,
                fontFamily: 'Lato',
                overflow: TextOverflow.ellipsis),
          ),
        ),
        iconSize: 25,
        underline: SizedBox(),
        style: TextStyle(color: ColorsApp.primary, fontSize: 12),
        onChanged: (newValue) {},
        items: items.map((value) {
          return DropdownMenuItem(
            value: value,
            child: Center(
              child: Text(
                value!,
              ),
            ),
          );
        }).toList(),
      ),
    );
  }
}
