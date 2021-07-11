import 'package:flutter/material.dart';

class AcceptButton extends StatelessWidget {
  final VoidCallback onpressed;
  const AcceptButton({
    Key key,
    this.onpressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 20.0),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(10),
        child: TextButton(
          style: ButtonStyle(
            padding: MaterialStateProperty.all(
              EdgeInsets.all(20),
            ),
            backgroundColor: MaterialStateProperty.all(Colors.grey),
          ),
          onPressed: onpressed,
          child: Text(
            'Concordar e continuar',
            style: TextStyle(color: Colors.white, fontSize: 20),
          ),
        ),
      ),
    );
  }
}
