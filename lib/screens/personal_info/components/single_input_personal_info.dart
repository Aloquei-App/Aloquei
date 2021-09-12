import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class SingleInputPersonalInfo extends StatelessWidget {
  final TextEditingController nameController;
  final String labelText;
  final Function onChanged;
  final String initialValue;
  final Function validator;
  const SingleInputPersonalInfo({
    Key key,
    this.nameController,
    this.labelText,
    this.initialValue,
    this.onChanged,
    this.validator,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 15),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(labelText),
          TextFormField(
            onChanged: onChanged,
            validator: validator,
            initialValue: initialValue,
            //Mudar a string para o nome que estiver no banco de dados.
            decoration: InputDecoration(
              focusColor: Colors.black38,
              suffixIcon: IconButton(
                onPressed: () {},
                icon: Icon(
                  FontAwesomeIcons.solidTimesCircle,
                  size: 20,
                ),
                color: Colors.black38,
              ),
              border: UnderlineInputBorder(
                borderSide: BorderSide(color: Colors.black54),
              ),
              focusedBorder: UnderlineInputBorder(
                borderSide: BorderSide(color: Colors.black54),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
