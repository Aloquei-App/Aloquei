import 'package:flutter/material.dart';
import 'package:flutter_image_slideshow/flutter_image_slideshow.dart';
import '../../../blocs/wishlist/wishlist_bloc.dart';

import '../../../core/models/house_offer_model.dart';
import '../../core/navigation.dart';

class PlaceItem extends StatefulWidget {
  final HouseOfferModel model;

  const PlaceItem({
    Key key,
    this.model,
  }) : super(key: key);

  @override
  _PlaceItemState createState() => _PlaceItemState();
}

class _PlaceItemState extends State<PlaceItem> {
  bool _isFavorited = false;
  void _toggleFavorite() {
    setState(() {
      _isFavorited = !_isFavorited;
    });
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        navigateToOfferDetail(context, widget.model);
      },
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Stack(
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(20.0),
                child: ImageSlideshow(
                  height: 400,
                  width: double.infinity,
                  initialPage: 0,
                  indicatorColor: Colors.grey,
                  indicatorBackgroundColor: Colors.grey[300],
                  children: List.generate(widget.model.images.length,
                      (i) => Image.network(widget.model.images[i])),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  IconButton(
                    iconSize: 75,
                    icon: (_isFavorited
                        ? const Icon(Icons.favorite)
                        : const Icon(Icons.favorite_border)),
                    color: Colors.white,
                    onPressed: _toggleFavorite,
                  ),
                ],
              ),
            ],
          ),
          Padding(
            padding: EdgeInsets.only(left: 5.0, top: 8, right: 5),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  widget.model.name,
                  style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontSize: 20),
                ),
                RichText(
                  text: TextSpan(
                    style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 20),
                    children: [
                      TextSpan(text: 'R\$${widget.model.valueMonth}'),
                      TextSpan(
                          text: ' / mês',
                          style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.normal,
                              fontSize: 20)),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: 5.0, top: 3, bottom: 20),
            child: Text(
              "? km de distância",
              style: TextStyle(
                  color: Colors.black54,
                  fontWeight: FontWeight.normal,
                  fontSize: 20),
            ),
          )
        ],
      ),
    );
  }
}
