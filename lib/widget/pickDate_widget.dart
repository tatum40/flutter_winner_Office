import 'package:flutter/material.dart';
import 'package:flutter_winner_office/theme/color.dart';

class DatePickerWidget extends StatefulWidget {
  const DatePickerWidget(
      {Key? key, required this.labelText, required this.pickerType})
      : super(key: key);
  final String labelText;
  final String pickerType;
  @override
  _DatePickerWidgetState createState() => _DatePickerWidgetState();
}

class _DatePickerWidgetState extends State<DatePickerWidget> {
  var date;

  String getDate() {
    if (date == null) {
      return '';
    } else {
      if (widget.pickerType != 'credit') {
        return '${date.day}/${date.month}/${date.year}';
      } else {
        return '${date.month}/${date.year}';
      }
    }
  }

  @override
  Widget build(BuildContext context) => Container(
        margin: EdgeInsets.only(top: 20.0),
        width: 320,
        child: TextFormField(
          controller: TextEditingController(text: getDate()),
          onTap: () => pickDate(context),
          keyboardType: TextInputType.datetime,
          decoration: InputDecoration(
            isDense: true,
            border: OutlineInputBorder(
              borderRadius: BorderRadius.all(Radius.circular(5.0)),
            ),
            labelText: widget.labelText,
          ),
        ),
      );

  Future pickDate(BuildContext context) async {
    final initialDate = DateTime.now();
    final newDate = await showDatePicker(
      context: context,
      initialDate: initialDate,
      firstDate: DateTime(DateTime.now().year - 5),
      lastDate: DateTime(DateTime.now().year + 10),
      builder: (context, child) {
        return Theme(
          data: Theme.of(context).copyWith(
            colorScheme: ColorScheme.light(
              primary: mcl1, // header background color
              onPrimary: Colors.black, // header text color
              onSurface: Colors.black, // body text color
            ),
            textButtonTheme: TextButtonThemeData(
              style: TextButton.styleFrom(
                primary: mcl1, // button text color
              ),
            ),
          ),
          child: child!,
        );
      },
    );

    if (newDate == null) {
      return;
    }

    setState(() => date = newDate);
  }
}
