import 'package:flutter/material.dart';

import '../../../core/models/house_offer_model.dart';
import 'place_item.dart';

class ListPlaces extends StatelessWidget {
  final ScrollController scrollController;
  final List<HouseOfferModel> modelList;
  const ListPlaces({
    Key key,
    this.scrollController,
    this.modelList,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 20.0, right: 25, left: 25),
      child: ListView.builder(
        controller: scrollController,
        itemCount: modelList.length,
        itemBuilder: (context, index) {
          return PlaceItem(model: modelList[index]);
        },
      ),
    );
  }
}
