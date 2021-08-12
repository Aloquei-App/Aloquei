import 'package:aloquei_app/blocs/auth/auth_bloc.dart';
import 'package:aloquei_app/screens/core/app_bars/default_app_bar.dart';
import 'package:flutter/material.dart';

import 'components/rental_present_card.dart';
import 'components/rental_title.dart';

class RentalList extends StatelessWidget {
  const RentalList({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var widget;
    return Scaffold(
      appBar: DefaultAppBar(
        action: () => widget.authBloc.add(
          ExitEvent(),
        ),
      ),
      body: Container(
        child: ListView(
          children: [
            RentalTitle("Moradias"),
            RentalPresentCard(),
            // RentalSubtitle(),
            // RentalUnitCards(),
          ],
        ),
      ),
    );
  }
}
