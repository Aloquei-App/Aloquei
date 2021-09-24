import 'package:flutter/material.dart';

class PasswordInput extends StatefulWidget {
  final TextEditingController controller;

  const PasswordInput({
    Key key,
    this.controller,
  }) : super(key: key);

  @override
  _PasswordInputState createState() => _PasswordInputState(controller);
}

class _PasswordInputState extends State<PasswordInput> {
  final TextEditingController controller;

  _PasswordInputState(this.controller);
  bool _obscureText = true;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10.0),
      child: Column(
        children: [
          TextFormField(
            keyboardType: TextInputType.text,
            obscureText: _obscureText,
            controller: controller,
            decoration: InputDecoration(
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.all(
                    Radius.circular(6),
                  ),
                ),
                suffixIcon: TextButton(
                  onPressed: () {
                    setState(
                      () {
                        _obscureText = !_obscureText;
                      },
                    );
                  },
                  child: Text(
                    _obscureText ? 'Mostrar' : 'Ocultar',
                    style: TextStyle(
                        color: Colors.black, fontWeight: FontWeight.bold),
                  ),
                ),
                labelText: "Senha"),
          ),
        ],
      ),
    );
  }
}
