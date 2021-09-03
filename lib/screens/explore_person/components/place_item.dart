import 'package:flutter/material.dart';
import 'package:random_color/random_color.dart';

class PlaceItem extends StatelessWidget {
  final String name;
  final String descricao;
  final String img;
  const PlaceItem({
    Key key,
    this.img,
    this.name,
    this.descricao,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    RandomColor _randomColor = RandomColor();
    Color _color = _randomColor.randomColor(
      colorBrightness: ColorBrightness.light,
    );
  var nameInit = name[0].toUpperCase();
  if (img.length > 0){
    nameInit ='';
  };
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
          CircleAvatar(
            backgroundColor: _color,
            foregroundColor: Colors.black,
            backgroundImage: AssetImage(img),
            radius: 40,
            child: Text(
              nameInit, style:TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 20,
            )
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: 5.0, right: 5),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  name,
                  style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontSize: 20),
                ),
                Row(
                  children:[
                    Container(
                      width: 285,
                      child:
                    RichText(
                      textAlign: TextAlign.justify,
                      overflow: TextOverflow.clip,
                      text: TextSpan(
                        style: DefaultTextStyle.of(context).style,
                        children: <TextSpan>[
                          TextSpan(text: descricao, style: TextStyle(fontSize: 15)),
                        ],
                      ),
                    ),)
                  ]
                ),
              ],
            ),
          ),
        ],
        ),
          Padding(
            padding: EdgeInsets.only(left: 5.0, top: 3, bottom: 20),
          )
      ],
    );
  }
}
