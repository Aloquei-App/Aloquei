import 'package:flutter/material.dart';

class EmailInput extends StatelessWidget {
  final TextEditingController controller;
  const EmailInput({
    Key key,
    this.controller,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10.0),
      child: Column(
        children: [
          TextFormField(
            controller: null,
            decoration: InputDecoration(
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.all(
                    Radius.circular(6),
                  ),
                ),
                labelText: "E-mail"),
          ),
          SizedBox(
            height: 10,
          ),
          Text(
            'Vamos enviar uma confirmação de reserva para você por email.',
            style: TextStyle(
              color: Colors.black54,
            ),
          ),
        ],
      ),
    );
  }
}
