import 'package:Bcom/presentation/components/exportcomponent.dart';

class AppRadioGroup extends StatelessWidget {
  String value;
  final List<String> items;
  final ValueChanged<String>? onChanged;
  final bool isRequired;
  final String? label;

  AppRadioGroup({
    Key? key,
    required this.value,
    required this.items,
      this.isRequired = false,
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
         
             Container(
            margin: EdgeInsets.only(bottom: kMarginY),
            child: Row(
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
                if ( isRequired)
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
