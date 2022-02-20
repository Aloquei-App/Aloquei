import 'package:flutter/material.dart';

class TopMenuImage extends StatelessWidget {
  final String text1;
  final String text2;
  final String image1;

  const TopMenuImage({Key key, this.text1, this.text2, this.image1})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.width * 0.7,
      decoration: BoxDecoration(
          image: DecorationImage(image: AssetImage(image1), fit: BoxFit.cover)),
      child: Column(children: [
        Container(
            padding: EdgeInsets.only(top: 30, left: 10, right: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                // TextButton(
                //   style: TextButton.styleFrom(
                //     backgroundColor: Color.fromRGBO(16, 19, 11, 0.5),
                //     shape: CircleBorder(),
                //   ),
                //   child: Icon(
                //     Icons.close_sharp,
                //     color: Colors.white,
                //   ),
                //   onPressed: () {
                //     Navigator.pop(context);
                //   },
                // ),
                // TextButton(
                //   style: TextButton.styleFrom(
                //       minimumSize: Size(80, 45),
                //       backgroundColor: Color.fromRGBO(16, 19, 11, 0.5),
                //       shape: RoundedRectangleBorder(
                //           borderRadius: BorderRadius.all(Radius.circular(40)))),
                //   child: Text('Ajuda',
                //       style: TextStyle(fontSize: 17, color: Colors.white)),
                //   onPressed: () {
                //     navigateToHelp(context);
                //   },
                // ),
              ],
            )),
        Expanded(child: SizedBox()),
        Container(
            alignment: Alignment.bottomLeft,
            padding: EdgeInsets.only(right: 20, left: 20),
            child: Column(
              children: [
                Text(text1,
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 30,
                        fontWeight: FontWeight.w500)),
              ],
            )),
        Container(
            alignment: Alignment.bottomLeft,
            padding: EdgeInsets.only(right: 20, left: 20, bottom: 10),
            child: Column(
              children: [
                Text(text2,
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 30,
                        fontWeight: FontWeight.w500))
              ],
            ))
      ]),
    );
  }
}
