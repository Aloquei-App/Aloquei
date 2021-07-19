import 'package:datetime_picker_formfield/datetime_picker_formfield.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class DateInput extends StatelessWidget {
  final format = DateFormat("dd-MM-yyyy");
  final Function onChanged;

  DateInput({Key key, this.onChanged}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 10.0),
      child: Column(
        children: [
          DateTimeField(
            onChanged: onChanged,
            decoration: InputDecoration(
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.all(
                    Radius.circular(6),
                  ),
                ),
                labelText: 'Dia de nascimento'),
            format: format,
            onShowPicker: (context, currentValue) {
              return showDatePicker(
                locale: Locale("pt", "BR"),
                context: context,
                firstDate: DateTime(1900),
                initialDate: currentValue ?? DateTime.now(),
                lastDate: DateTime.now(),
              );
            },
          ),
          SizedBox(
            height: 10,
          ),
          Text(
            'Para se cadastrar,você precisa ter pelo menos 18 anos.Outras pessoas que usam o aloquei não verão sua data de nascimento.',
            style: TextStyle(
              color: Colors.black54,
            ),
          )
        ],
      ),
    );
  }
}
