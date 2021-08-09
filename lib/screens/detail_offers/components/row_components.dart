import 'package:flutter/material.dart';

import 'component.dart';

class Components extends StatelessWidget {
  final int guests, bedroom, beds, bath;

  Components(this.guests, this.bedroom, this.beds, this.bath);

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding:
            EdgeInsets.only(top: 15.0, bottom: 15.0, left: 30.0, right: 30.0),
        child: Row(
          children: [
            Component(guests.toString() + ' hóspedes'),
            Component('  •  ' + bedroom.toString() + ' quartos'),
            Component('  •  ' + beds.toString() + ' camas'),
            Component('  •  ' + bath.toString() + ' banheiros'),
          ],
        ));
  }
}
