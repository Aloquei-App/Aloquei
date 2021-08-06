import 'package:aloquei_app/screens/hosting/components/host_counter.dart';
import 'package:flutter/material.dart';

class HostSelectMenuTen extends StatelessWidget {
  final VoidCallback onpressed;

  const HostSelectMenuTen({Key key, this.onpressed}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
        child: ListView(
            padding: EdgeInsets.only(left: 20, right: 20, top: 20),
            children: [
          Padding(
              padding: EdgeInsets.only(bottom: 25),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Guests',
                    style: TextStyle(fontSize: 22),
                  ),
                  CounterView()
                ],
              )),
          Padding(
              padding: EdgeInsets.only(bottom: 25),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Beds',
                    style: TextStyle(fontSize: 22),
                  ),
                  CounterView()
                ],
              )),
          Padding(
              padding: EdgeInsets.only(bottom: 25),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Bedrooms',
                    style: TextStyle(fontSize: 22),
                  ),
                  CounterView()
                ],
              )),
        ]));
  }
}
