import 'package:flutter/material.dart';

enum Genders { Masculino, Feminino, Outro }

class GenderInput extends StatefulWidget {
  final String gender;
  const GenderInput({Key key, this.gender}) : super(key: key);
  // @override
  State<GenderInput> createState() => _GenderInputState(gender);
}

class _GenderInputState extends State<GenderInput> {
  final String gender;
  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  Genders _character = Genders.Masculino;

  _GenderInputState(this.gender);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 15),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text("Gênero"),
          TextFormField(
            onTap: () {
              showInformationDialog(context);
            },
            readOnly: true,
            initialValue: gender,
          ),
        ],
      ),
    );
  }

  showInformationDialog(BuildContext context) {
    return showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          insetPadding: EdgeInsets.symmetric(vertical: 260),
          content: Form(
            key: _formKey,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("Gênero"),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("Masculino"),
                    Radio<Genders>(
                      value: Genders.Masculino,
                      groupValue: _character,
                      onChanged: (Genders value) {
                        setState(() {
                          _character = value;
                          Navigator.of(context).pop();
                        });
                      },
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("Feminino"),
                    Radio<Genders>(
                      value: Genders.Feminino,
                      groupValue: _character,
                      onChanged: (Genders value) {
                        setState(() {
                          _character = value;
                          Navigator.of(context).pop();
                        });
                      },
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("Outro"),
                    Radio<Genders>(
                      value: Genders.Outro,
                      groupValue: _character,
                      onChanged: (Genders value) {
                        setState(() {
                          _character = value;
                          Navigator.of(context).pop();
                        });
                      },
                    ),
                  ],
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
