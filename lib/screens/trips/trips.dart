import 'package:flutter/material.dart';

class TripsPage extends StatelessWidget {
  const TripsPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("WishlistsPage"),
        centerTitle: true,
      ),
      body: Center(
        child: Container(
          color: Colors.white,
        ),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
