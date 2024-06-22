import 'package:Bcom/presentation/components/exportcomponent.dart';

class AppRadioGroup extends StatelessWidget {
  String value;
  final List<String> items;
  final ValueChanged<String>? onChanged;
  final String? label;

  AppRadioGroup({
    Key? key,
    required this.value,
    required this.items,
    this.onChanged,
    this.label,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin:
          EdgeInsets.symmetric(horizontal: kMarginX, vertical: kMarginY / 2),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          if (label != null)
            Padding(
              padding: const EdgeInsets.only(bottom: 8.0),
              child: Text(
                label!,
                style: TextStyle(
                  fontWeight: FontWeight.w500,
                  fontSize: 12,
                  fontFamily: 'Lato',
                ),
              ),
            ),
          Container(
            decoration: BoxDecoration(
              border: Border.all(color: ColorsApp.grey, width: 1),
              borderRadius: BorderRadius.circular(10),
            ),
            child:
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              ...items.map((item) {
                return RadioListTile<String>(
                  value: item,
                  groupValue: value,
                  onChanged: (item) => onChanged!(item!),
                  title: Text(item),
                );
              }).toList(),
            ]),
          )
        ],
      ),
    );
  }
}
