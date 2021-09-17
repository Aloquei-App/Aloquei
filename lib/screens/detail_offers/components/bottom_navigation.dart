import 'package:flutter/material.dart';

class BottomNavigation extends StatelessWidget {
  final double value;
  final double condominio;

  BottomNavigation({this.value, this.condominio});

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
                  'Alug. R\$' + this.value.toString(),
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
                  'Cond. R\$' + this.condominio.toString(),
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
              // Padding(
              //   padding: EdgeInsets.only(bottom: 15.0, top: 15.0),
              //   child: Text(
              //     this.dateInit + ' - ' + this.dateFinal,
              //     textAlign: TextAlign.center,
              //     style: TextStyle(
              //         decoration: TextDecoration.underline,
              //         fontWeight: FontWeight.w600,
              //         fontSize: 16,
              //         fontFamily: 'Arial'),
              //   ),
              // )
            ],
          )),
      elevation: 0,
    );
  }
}
