import 'package:flutter/material.dart';

class AppBarContent extends StatelessWidget {
  final VoidCallback onpressed1;
  final VoidCallback onpressed2;

  const AppBarContent({Key key, this.onpressed1, this.onpressed2})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        height: 80,
        padding: EdgeInsets.only(left: 10, right: 10),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            TextButton(
              child: Text(
                'Remover\n todos',
                textAlign: TextAlign.center,
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 18,
                    fontWeight: FontWeight.w700),
              ),
              onPressed: onpressed1,
            ),
            TextButton(
              style: TextButton.styleFrom(
                  backgroundColor: Colors.grey[900],
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10))),
              child: Padding(
                  padding: EdgeInsets.only(left: 35, right: 35),
                  child: Text('Mostrar\n acomodações',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 18,
                          fontWeight: FontWeight.w500))),
              onPressed: onpressed2,
            ),
          ],
        ));
  }
}
