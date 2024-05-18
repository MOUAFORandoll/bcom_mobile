import 'package:Bcom/presentation/components/Widget/select_time.dart';
import 'package:Bcom/presentation/components/exportcomponent.dart';

class EntryTimeField extends StatefulWidget {
  final String label;
  final Function(TimeOfDay?) onPressed;

  final bool? isRequired;
  final bool? hasInitial;
  final bool? readOnly;
  final TimeOfDay? initialeTime;
  const EntryTimeField(
      {super.key,
      required this.label,
      required this.onPressed,
      this.isRequired,
      this.hasInitial,
      this.initialeTime,
      this.readOnly});

  @override
  State<EntryTimeField> createState() => _EntryTimeFieldState();
}

class _EntryTimeFieldState extends State<EntryTimeField> {
  @override
  Widget build(BuildContext context) {
    return InkWell(
        onTap: widget.readOnly == true
            ? null
            : (() async {
                var timeOfDay = await customSelectTime(
                    context: context, initialTime: widget.initialeTime);
                if (timeOfDay != null) {
                  widget.onPressed(timeOfDay);
                }
              }),
        child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                child: Text(
                  widget.label,
                  style: TextStyle(
                    fontWeight: FontWeight.w500,
                    // color: ColorsApp.tird,
                    fontSize: 12,
                    fontFamily: 'Lato',
                  ),
                ),
              ),
              Material(
                elevation: 1.0,
                shape: OutlineInputBorder(
                  borderSide: BorderSide(color: ColorsApp.grey, width: 0),
                  borderRadius: BorderRadius.circular(8),
                ),
                child: SizedBox(
                  height: 50,
                  child: Row(
                    children: [
                      const Padding(
                        padding: EdgeInsets.only(left: 15.0),
                        child: Icon(Icons.timelapse,
                            size: 20.0, color: Colors.grey),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Text(
                          widget.initialeTime!
                              .format(context) /*   widget.label */,
                          style: TextStyle(color: ColorsApp.primary),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ]));
  }
}
