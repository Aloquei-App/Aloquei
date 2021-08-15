import '../../../core/models/house_offer_model.dart';
import 'package:flutter/material.dart';

import 'house_item.dart';

class HouseListView extends StatelessWidget {
  final List<HouseOfferModel> houseList;
  const HouseListView({Key key, this.houseList}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 350,
      child: ListView.builder(
        physics: ClampingScrollPhysics(),
        shrinkWrap: true,
        scrollDirection: Axis.horizontal,
        itemCount: houseList.length,
        itemBuilder: (context, index) {
          return HouseItem(
              name: houseList[index].name, img: houseList[index].images.first);
        },
      ),
    );
  }
}