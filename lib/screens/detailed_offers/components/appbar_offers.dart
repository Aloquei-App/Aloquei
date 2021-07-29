import 'package:flutter/cupertino.dart';

import 'package:flutter/material.dart';

class OffersAppbar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [SliverAppBar()],
      ),
    );
  }
}
