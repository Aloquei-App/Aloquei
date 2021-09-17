import 'package:flutter/material.dart';

import 'component.dart';

class Components extends StatelessWidget {
  final int guests, bedroom, beds, bath;
  final String roomtype;

  Components(this.guests, this.bedroom, this.beds, this.bath, this.roomtype);

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding:
            EdgeInsets.only(top: 15.0, bottom: 15.0, left: 30.0, right: 30.0),
        child: Row(
          children: [
            Component(guests.toString() + ' hóspedes'),
            Component('  •  ' + bedroom.toString() + ' quartos'),
            Component('  •  ' + roomtype.toString()),
            beds > 0
                ? Component('  •  ' + beds.toString() + ' camas')
                : Container(),
            Component('  •  ' + bath.toString() + ' banheiros'),
          ],
        ));
  }
}
