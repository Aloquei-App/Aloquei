import '../core/bottom_bars/bottom_bar.dart';
import 'package:flutter/material.dart';

import '../core/forms/top_menu_image.dart';
import 'components/flow_builder_functions.dart';

class HostPageDescription extends StatelessWidget {
  const HostPageDescription({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    String description;
    return Scaffold(
      bottomNavigationBar: BottomBar(
        text: 'Avançar',
        color: Colors.grey[900],
        onPressedBack: () {
          Navigator.pop(context);
        },
        showNext: true,
        onpressedNext: () =>
            continuePressed(obs: description, context: context),
      ),
      body: Container(
        color: Colors.white,
        child: Column(
          children: [
            TopMenuImage(
              image1: "assets/insideHouse.jpg",
              text1: 'Agora vamos ser mais',
              text2: 'específicos',
            ),
            Expanded(
              child: ListView(
                padding: EdgeInsets.only(left: 20, right: 20, top: 20),
                children: [
                  Container(
                    margin: EdgeInsets.all(15),
                    height: 200,
                    child: TextField(
                      onChanged: (value) => (description = value),
                      maxLines: 7,
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 17,
                          fontWeight: FontWeight.w800),
                      decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        hintText: 'Escreva uma breve descrição do seu local',
                        hintStyle: TextStyle(
                            color: Colors.grey,
                            fontSize: 17,
                            fontWeight: FontWeight.w800),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
