import 'package:flutter/material.dart';

class BottomNavigation extends StatelessWidget {
  final double value;

  BottomNavigation({this.value});

  @override
  Widget build(BuildContext context) {
    return BottomAppBar(
      color: Colors.white,
      child: Container(
          width: double.infinity,
          height: MediaQuery.of(context).size.height * 0.08,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: EdgeInsets.only(left: 25, bottom: 5.0, top: 10.0),
                child: Text(
                  'Aluguel R\$ ${this.value} / mês',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      fontWeight: FontWeight.w800,
                      fontSize: 16,
                      fontFamily: 'Arial'),
                ),
              ),
              Container(),
            ],
          )),
      elevation: 0,
    );
  }
}
