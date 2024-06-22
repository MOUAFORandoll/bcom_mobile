import '../exportcomponent.dart';

// ignore: must_be_immutable
class AppDropdown extends StatelessWidget {
  var value;
  final List<String> items;
  final ValueChanged<String>? onChanged;
  final String? label;

    AppDropdown({
    Key? key,
    required this.value,
    this.label,
    required this.items,
    this.onChanged,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin:
          EdgeInsets.symmetric(horizontal: kMarginX, vertical: kMarginY / 2),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            child: Text(
              label!,
              style: TextStyle(
                fontWeight: FontWeight.w500,
                fontSize: 12,
                fontFamily: 'Lato',
                overflow: TextOverflow.ellipsis,
              ),
            ),
          ),
          Container(
            decoration: BoxDecoration(
              border: Border.all(color: ColorsApp.grey, width: 1),
              borderRadius: BorderRadius.circular(10),
            ),
            height: getHeight(context) * .06,
            width: getWith(context),
            margin: EdgeInsets.only(
              top: kMarginY * 1.5,
            ),
            alignment: Alignment.center,
            child: DropdownButton<String>(
              value: items.contains(value) ? value : items.first,
              icon: Icon(
                Icons.keyboard_arrow_down_outlined,
              ),
              hint: Container(
                width: getWith(context) * .65,
                alignment: Alignment.center,
                padding: EdgeInsets.symmetric(horizontal: 0),
                child: Text(
                  label!,
                  style: TextStyle(
                    fontWeight: FontWeight.w500,
                    fontSize: 12,
                    fontFamily: 'Lato',
                    overflow: TextOverflow.ellipsis,
                  ),
                ),
              ),
              iconSize: 25,
              underline: SizedBox(),
              style: TextStyle(color: ColorsApp.primary, fontSize: 12),
              isExpanded: true,
              onChanged: (v) => onChanged!(v!),
              items: items.map((item) {
                return DropdownMenuItem<String>(
                  value: item,
                  child: Container(
                      width: getWith(context) * .65,
                      alignment: Alignment.center,
                      padding: EdgeInsets.only(left: kMarginX),
                      child: Text(item)),
                );
              }).toList(),
            ),
          ),
        ],
      ),
    );
  }
}
