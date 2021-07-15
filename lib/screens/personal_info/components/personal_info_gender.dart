import 'package:flutter/material.dart';

enum Genders { Masculino, Feminino, Outro }

class GenderInput extends StatefulWidget {
  const GenderInput({Key? key}) : super(key: key);
  // @override
  State<GenderInput> createState() => _GenderInputState();
}

class _GenderInputState extends State<GenderInput> {
  
  GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  
  Genders? _character = Genders.Masculino;
  
  Future<void> showInformationDialog(BuildContext context) async {
    return await showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          content: Form(
            key: _formKey,
            child: Column(
              children: [
                Text("Gênero"),
                ListTile(
                  title: const Text("Masculino"),
                  leading: Radio<Genders>(
                    value: Genders.Masculino,
                    groupValue: _character,
                    onChanged: (Genders? value) {
                      setState(() {
                        _character = value;
                      });
                    },
                  ),
                ),
                ListTile(
                  title: const Text("Feminino"),
                  leading: Radio<Genders>(
                    value: Genders.Feminino,
                    groupValue: _character,
                    onChanged: (Genders? value) {
                      setState(() {
                        _character = value;
                      });
                    },
                  ),
                ),
                ListTile(
                  title: const Text("Outro"),
                  leading: Radio<Genders>(
                    value: Genders.Outro,
                    groupValue: _character,
                    onChanged: (Genders? value) {
                      setState(() {
                        _character = value;
                      });
                    },
                  ),
                ),
              ],
            ),
          ),
          actions: <Widget>[
            TextButton(
                onPressed: () {
                  if (_formKey.currentState!.validate()) {
                    Navigator.of(context).pop();
                  }
                },
                child: Text("OK"))
          ],
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: TextFormField(
        onTap: () async {
          await showInformationDialog(context);
        },
        readOnly: true,
        initialValue: "Masculino",
      ),
    );
  }
}
