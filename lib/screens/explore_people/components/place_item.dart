import 'package:flutter/material.dart';

import '../../../core/models/interest_offer_model.dart';

class PlaceItem extends StatelessWidget {
  final InterestModel model;
  final Function onClick;
  const PlaceItem({
    Key key,
    this.model,
    this.onClick,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    var nameInit = model.postUserName[0].toUpperCase();
    return InkWell(
      onTap: onClick,
      child: Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CircleAvatar(
            backgroundColor: model.color,
            foregroundColor: Colors.black,
            //backgroundImage: AssetImage(img),
            radius: 40,
            child: Text(nameInit,
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                )),
          ),
          Padding(
            padding: EdgeInsets.only(left: 5.0, right: 5, top: 10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  model.postUserName,
                  style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontSize: 20),
                ),
                Row(children: [
                  Container(
                    width: 285,
                    child: RichText(
                      textAlign: TextAlign.justify,
                      overflow: TextOverflow.clip,
                      text: TextSpan(
                        style: DefaultTextStyle.of(context).style,
                        children: <TextSpan>[
                          TextSpan(
                              text: model.observations,
                              style: TextStyle(fontSize: 15)),
                          TextSpan(
                              text: '\nProcura: ',
                              style: TextStyle(
                                  fontSize: 15,
                                  fontWeight: FontWeight.w600)),
                          TextSpan(
                              text: model.desiredGender,
                              style: TextStyle(fontSize: 15)),
                          TextSpan(
                              text: ' | ', style: TextStyle(fontSize: 15)),
                          TextSpan(
                              text: model.desiredCourse,
                              style: TextStyle(fontSize: 15)),
                        ],
                      ),
                    ),
                  ),
                ]),
              ],
            ),
          ),
        ],
      ),
      Padding(
        padding: EdgeInsets.only(left: 5.0, top: 3, bottom: 20),
      )
    ],
      ),
    );
  }
}
