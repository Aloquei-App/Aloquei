import 'package:datetime_picker_formfield/datetime_picker_formfield.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class DateInput extends StatelessWidget {
  final String bday;
  final format = DateFormat("dd-MM-yyyy");
  final Function onChanged;

  DateInput({Key key, this.onChanged, this.bday}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 10.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text("Data de Nascimento"),
          DateTimeField(
            onChanged: onChanged,
            decoration: InputDecoration(
                border: UnderlineInputBorder(
                  borderSide: BorderSide(color: Colors.black)
                ),
                ),
                initialValue: format.parse(bday),
            format: format,
            onShowPicker: (context, currentValue) {
              return showDatePicker(
                //locale: Locale("pt", "BR"),
                context: context,
                firstDate: DateTime(1900),
                initialDate: currentValue ?? DateTime.now(),
                lastDate: DateTime.now(),                
              );
            },
          ),
        ],
      ),
    );
  }
}
