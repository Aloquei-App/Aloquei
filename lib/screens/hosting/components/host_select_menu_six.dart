import 'package:aloquei_app/screens/hosting/components/host_big_iconbutton.dart';
import 'package:flutter/material.dart';

class HostSelectMenuSix extends StatelessWidget {
  final VoidCallback onpressed;

  const HostSelectMenuSix({Key key, this.onpressed}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
        child: ListView(
            padding: EdgeInsets.only(left: 20, right: 20, top: 20),
            children: [
          Padding(
            padding: EdgeInsets.only(bottom: 10),
            child: Text(
              'Do you have any standout amenities?',
              style: TextStyle(fontSize: 17, fontWeight: FontWeight.w600),
            ),
          ),
          HostBigIconButton(
            title1: 'Pool',
            icon1: Icon(Icons.pool, color: Colors.black),
            onpressed1: () {},
            title2: 'Hot tub',
            icon2: Icon(Icons.hot_tub, color: Colors.black),
            onpressed2: () {},
          ),
          HostBigIconButton(
            title1: 'Pool',
            icon1: Icon(Icons.pool, color: Colors.black),
            onpressed1: () {},
            title2: 'Hot tub',
            icon2: Icon(Icons.hot_tub, color: Colors.black),
            onpressed2: () {},
          ),
          HostBigIconButton(
            title1: 'Pool',
            icon1: Icon(Icons.pool, color: Colors.black),
            onpressed1: () {},
            title2: 'Hot tub',
            icon2: Icon(Icons.hot_tub, color: Colors.black),
            onpressed2: () {},
          ),
        ]));
  }
}
