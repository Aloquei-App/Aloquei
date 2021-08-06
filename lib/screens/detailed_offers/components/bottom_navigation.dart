import 'package:flutter/material.dart';

class BottomNavigation extends StatelessWidget {
  final int value;
  final String date_init;
  final String date_final;

  BottomNavigation(this.value, this.date_init, this.date_final);

  @override
  Widget build(BuildContext context) {
    return BottomAppBar(
      color: Colors.white,
      child: Container(
          width: double.infinity,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: EdgeInsets.only(bottom: 15.0, top: 15.0),
                child: Text(
                  'R\$' + this.value.toString(),
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      fontWeight: FontWeight.w800,
                      fontSize: 16,
                      fontFamily: 'Arial'),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(bottom: 15.0, top: 15.0),
                child: Text(
                  ' / mês            ',
                  style: TextStyle(
                      fontWeight: FontWeight.w400,
                      fontSize: 16,
                      fontFamily: 'Arial'),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(bottom: 15.0, top: 15.0),
                child: Text(
                  this.date_init + ' - ' + this.date_final,
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      decoration: TextDecoration.underline,
                      fontWeight: FontWeight.w600,
                      fontSize: 16,
                      fontFamily: 'Arial'),
                ),
              )
            ],
          )),
      elevation: 0,
    );
  }
}
