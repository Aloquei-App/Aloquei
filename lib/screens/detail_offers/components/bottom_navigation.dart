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
          height:
              MediaQuery.of(context).size.height * (condominio > 0 ? 1 : 0.08),
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
              // condominio > 0
              //     ? Padding(
              //         padding: EdgeInsets.only(left: 25, top: 5.0),
              //         child: Text(
              //           'Condomínio. R\$ ${this.condominio} / mês',
              //           textAlign: TextAlign.center,
              //           style: TextStyle(
              //               fontWeight: FontWeight.w800,
              //               fontSize: 16,
              //               fontFamily: 'Arial'),
              //         ),
              //       )
              //     :
              Container(),
            ],
          )),
      elevation: 0,
    );
  }
}
