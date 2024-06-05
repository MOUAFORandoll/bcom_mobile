import '../exportcomponent.dart';

class AppDropdown extends StatefulWidget {
  final value;
  final List<int>? items;
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
  State<AppDropdown> createState() => _AppDropdownState();
}

class _AppDropdownState extends State<AppDropdown> {
  late int valueData;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: kMarginX),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            margin: EdgeInsets.only(
              top: kMarginY,
            ),
            child: Text(
              widget.label!,
              style: TextStyle(
                fontWeight: FontWeight.w500,
                // color: ColorsApp.tird,
                fontSize: 12,
                fontFamily: 'Lato',
              ),
            ),
          ),
          Container(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                widget.items!.map(
                  (value) => Row(
                    children: [
                      Radio(
                        value: value,
                        activeColor: ColorsApp.second,
                        groupValue: valueData,
                        onChanged: (value) {
                          setState(() {
                            valueData = value as int;
                          });
                        },
                      ),
                      Text('Jour'.tr()),
                    ],
                  ),
                ) as Widget
              ],
            ),
          ),
        ],
      ),
    );
  }
}
