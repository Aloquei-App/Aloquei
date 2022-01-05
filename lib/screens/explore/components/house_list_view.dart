import 'package:flutter/material.dart';

import '../../../core/models/house_offer_model.dart';
import '../../core/navigation.dart';
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
              onTap: () {
                navigateToOfferDetail(context, houseList[index]);
              },
              name: houseList[index].name,
              img: houseList[index].images.first);
        },
      ),
    );
  }
}
