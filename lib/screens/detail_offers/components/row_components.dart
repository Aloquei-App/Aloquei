import 'package:flutter/material.dart';

import 'component.dart';

class Components extends StatelessWidget {
  final int bedroom, beds, bath;
  //guests, this.guests,
  Components(this.bedroom, this.beds, this.bath);

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding:
            EdgeInsets.only(top: 15.0, bottom: 15.0, left: 30.0, right: 30.0),
        child: Row(
          children: [
            // Component(
            //     guests.toString() + (guests > 1 ? ' hóspedes' : ' hóspede')),
            Component('  •  ' +
                bedroom.toString() +
                (bedroom > 1 ? ' quartos' : ' quarto')),
            beds > 0
                ? Component(
                    '  •  ' + beds.toString() + (beds > 1 ? ' camas' : ' cama'))
                : Container(),
            Component('  •  ' +
                bath.toString() +
                (bath > 1 ? ' banheiros' : ' banheiro')),
          ],
        ));
  }
}
