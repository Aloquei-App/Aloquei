import 'package:flutter/material.dart';
import 'package:flutter_image_slideshow/flutter_image_slideshow.dart';

class PlaceItem extends StatefulWidget {
  final String name;
  final double cost;
  final double dist;
  final List<Widget> imgs;
  const PlaceItem({
    Key key,
    this.imgs,
    this.name,
    this.cost,
    this.dist,
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
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Stack(
          children:[
            ClipRRect(
              borderRadius: BorderRadius.circular(20.0),
              child: ImageSlideshow(
                height: 400,
                width: double.infinity,
                initialPage: 0,
                indicatorColor: Colors.grey,
                indicatorBackgroundColor: Colors.grey[300],
                children: widget.imgs,
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
                widget.name,
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
                    TextSpan(text: 'R\$${widget.cost}'),
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
            "${widget.dist} km de distância",
            style: TextStyle(
                color: Colors.black54,
                fontWeight: FontWeight.normal,
                fontSize: 20),
          ),
        )
      ],
    );
  }
}
