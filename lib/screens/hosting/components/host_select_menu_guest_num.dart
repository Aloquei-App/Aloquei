import 'package:flutter/material.dart';

import 'host_counter.dart';

class HostSelectMenuGuestNum extends StatelessWidget {
  final VoidCallback onpressed;

  const HostSelectMenuGuestNum({Key key, this.onpressed}) : super(key: key);

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
                    'Hóspedes',
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
                    'Camas',
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
                    'Banheiros',
                    style: TextStyle(fontSize: 22),
                  ),
                  CounterView()
                ],
              )),
        ]));
  }
}
