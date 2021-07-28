import 'package:aloquei_app/screens/hosting/components/host_title_button.dart';
import 'package:aloquei_app/screens/hosting/host_page_three.dart';
import 'package:flutter/material.dart';

class HostAppBar extends StatelessWidget {
  final String text;
  final VoidCallback onpressed;

  HostAppBar({Key key, this.text, this.onpressed}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return AppBar(
      elevation: 0,
      backgroundColor: Colors.white,
      title: Text(
        'Confirme seu endereço',
        style: TextStyle(color: Colors.black, fontWeight: FontWeight.w700),
      ),
      leading: Padding(
        padding: EdgeInsets.only(left: 8.0),
        child: IconButton(
          icon: Icon(Icons.arrow_back, size: 30),
          color: Colors.black,
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => HostPageThree()),
            );
          },
        ),
      ),
    );
  }
}
