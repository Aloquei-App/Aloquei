import 'package:flutter/material.dart';

class NotificationButton extends StatelessWidget {
  final VoidCallback onPressed;
  final bool status;
  const NotificationButton({
    Key key,
    this.onPressed,
    this.status,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 8.0, bottom: 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            'Não quero receber mensagens de \nmarketing do Aloquei',
            style: TextStyle(
              color: Colors.black,
            ),
          ),
          Switch(
            value: status,
            onChanged: (bool state) {
              onPressed();
            },
            activeColor: Colors.white,
            activeTrackColor: Colors.black,
          ),
        ],
      ),
    );
  }
}
