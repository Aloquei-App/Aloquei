import '../core/bottom_bars/bottom_bar.dart';

import 'components/flow_builder_functions.dart';
import 'package:flutter/material.dart';

import '../core/forms/top_menu_image.dart';

class HostPageTitle extends StatelessWidget {
  const HostPageTitle({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    String title;
    return Scaffold(
        bottomNavigationBar: BottomBar(
          text: 'Avançar',
          color: Colors.grey[900],
          onPressedBack: () {
            Navigator.pop(context);
          },
          showNext: true,
          onpressedNext: () => continuePressed(name: title, context: context),
        ),
        body: Container(
            color: Colors.white,
            child: Column(
              children: [
                TopMenuImage(
                  image1: "assets/woodenHouse.jpg",
                  text1: 'Vamos dar um nome ao',
                  text2: 'seu espaço',
                ),
                Expanded(
                    child: ListView(
                        padding: EdgeInsets.only(left: 20, right: 20, top: 20),
                        children: [
                      Container(
                          margin: EdgeInsets.all(15),
                          height: 150,
                          child: TextField(
                            maxLines: 7,
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 30,
                                fontWeight: FontWeight.w800),
                            onChanged: (value) => (title = value),
                            decoration: InputDecoration(
                              border: OutlineInputBorder(),
                              hintText: 'Casa de hóspedes adorável em Varanasi',
                              hintStyle: TextStyle(
                                  color: Colors.grey,
                                  fontSize: 30,
                                  fontWeight: FontWeight.w800),
                            ),
                          ))
                    ])),
              ],
            )));
  }
}
