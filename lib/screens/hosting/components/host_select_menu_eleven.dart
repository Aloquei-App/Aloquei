import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class HostSelectMenuEleven extends StatelessWidget {
  final VoidCallback onpressed;

  const HostSelectMenuEleven({Key key, this.onpressed}) : super(key: key);

  Pattern get whitelistedPattern => null;

  @override
  Widget build(BuildContext context) {
    return Expanded(
        child: ListView(
            padding: EdgeInsets.only(left: 20, right: 20, top: 20),
            children: [
          Container(
            padding: EdgeInsets.only(bottom: 20),
            child: ClipRRect(
                borderRadius: BorderRadius.circular(12),
                child: Image.asset("assets/cellphonePhoto.jpg")),
          ),
          Container(
              padding: EdgeInsets.only(bottom: 20),
              child: Text(
                'Titulo Anuncio',
                style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.w800,
                    fontSize: 28),
              )),
          Divider(
            thickness: 1,
          ),
          Container(
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                Text('Descrição Anuncio',
                    style: TextStyle(
                        color: Colors.grey[900],
                        fontWeight: FontWeight.w600,
                        fontSize: 24)),
                Image.asset(
                  'assets/prof.png',
                  height: 50,
                  width: 50,
                )
              ])),
          Divider(),
        ]));
  }
}
