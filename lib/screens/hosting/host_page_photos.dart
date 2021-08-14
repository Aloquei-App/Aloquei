import 'package:aloquei_app/screens/hosting/components/host_bottombar.dart';
import 'package:aloquei_app/screens/hosting/components/host_select_menu_photos.dart';
import 'package:aloquei_app/screens/core/forms/top_menu_image.dart';
import 'package:aloquei_app/screens/hosting/host_page_title.dart';

import 'package:flutter/material.dart';

class HostPagePhotos extends StatelessWidget {
  const HostPagePhotos({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        bottomNavigationBar: HostBottomBar(
          text: 'Avançar',
          color: Colors.grey[900],
          onPressedBack: () {
            Navigator.pop(context);
          },
          onpressedNext: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => HostPageTitle()),
            );
          },
        ),
        body: Container(
            color: Colors.white,
            child: Column(
              children: [
                TopMenuImage(
                  image1: "assets/cellphonePhoto.jpg",
                  text1: 'A seguir, vamos adicionar',
                  text2: 'algumas fotos do seu espaço',
                ),
                HostSelectMenuPhotos(
                  onpressed: () {},
                ),
              ],
            )));
  }
}
