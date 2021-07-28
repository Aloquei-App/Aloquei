import 'package:aloquei_app/screens/hosting/components/host_appbar.dart';
import 'package:aloquei_app/screens/hosting/host_page_three.dart';
import 'package:flutter/material.dart';

class HostPageFour extends StatelessWidget {
  const HostPageFour({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: HostAppBar(),
      body: Column(
        children: [
          Padding(
              padding: EdgeInsets.only(top: 30, left: 30, right: 30),
              child: TextFormField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'text',
                ),
              )),
          Padding(
              padding: EdgeInsets.only(left: 30, right: 30),
              child: TextFormField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'text',
                ),
              ))
        ],
      ),
    );
  }
}
