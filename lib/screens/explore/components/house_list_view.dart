import 'package:flutter/material.dart';

import 'house_item.dart';

class HouseListView extends StatelessWidget {
  final bool isRepublic;
  const HouseListView({Key key, this.isRepublic}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 350,
      child: ListView.builder(
        physics: ClampingScrollPhysics(),
        shrinkWrap: true,
        scrollDirection: Axis.horizontal,
        itemCount: 4,
        itemBuilder: (context, index) {
          return HouseItem(
            name: isRepublic ? 'Nome da republica' : 'Nome da casa',
            img: isRepublic
                ? 'https://images.adsttc.com/media/images/5d80/c8bb/284d/d15e/5d00/0915/newsletter/featured-image-moradia-estudantil-lucien-cornil-a-plus-architecture.jpg?1568721073'
                : 'https://s2.glbimg.com/l5tf5ALrBpZgm6SyiYv55yoUlh0=/620x413/smart/e.glbimg.com/og/ed/f/original/2020/01/20/leve-e-iluminada-esta-casa-na-bahia-mistura-estrutura-metalica-madeira-e-vidro_9.jpg',
          );
        },
      ),
    );
  }
}
