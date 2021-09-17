import 'package:flutter/material.dart';

import '../../core/definitions.dart';
import '../../core/models/house_offer_model.dart';
import '../core/colors.dart';
import '../login/components/title_offers.dart';
import 'components/bottom_navigation.dart';
import 'components/card_image.dart';
import 'components/carousel_options.dart';
import 'components/contain_element.dart';
import 'components/custom_app_bar.dart';
import 'components/description.dart';
import 'components/description_offers.dart';
import 'components/description_offers_grey.dart';
import 'components/divide.dart';
import 'components/elements.dart';
import 'components/row_components.dart';
import 'components/text_offers.dart';

class OfferDetail extends StatelessWidget {
  final String text = 'Tunico house (hospedado por Tunico)';
  final String textDesc = 'Entire residential home';
  final String descriptionOffer = 'Oriental, Rio Grande do Sul Brasil';
  final int guests = 2;
  final int bedroom = 2;
  final int beds = 2;
  final int bath = 1;
  final int value = 1846;
  final String dateInit = 'Set 1';
  final String dateFinal = 'Out 2';
  final String description =
      'Local tranquilo junto a natureza. Simples mais confortavel';
  final String imgBedroom =
      'https://hips.hearstapps.com/hmg-prod.s3.amazonaws.com/images/edc020121toolbox-001-1607447196.jpg';
  final String textBedroom = '1 cama king, 1 sofa cama';
  final String textRoom = '1 cama';

  @override
  Widget build(BuildContext context) {
    final HouseOfferModel houseModel =
        ModalRoute.of(context).settings.arguments;
    return Scaffold(
        backgroundColor: backgroundColor,
        extendBodyBehindAppBar: true,
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Stack(
                children: [
                  CarouselOffers(houseModel.images),
                  CustomAppBar(),
                ],
              ),
              TitleOffers(houseModel.name),
              DescriptionOffersGrey(houseModel.address),
              Divide(),
              //TextOffers(houseModel.),
              DescriptionOffers(houseTypes[houseModel.houseType]),
              Components(
                  houseModel.maxTenants,
                  houseModel.qtdRooms,
                  houseModel.roomUsersQtd,
                  houseModel.restroom,
                  houseModel.typeRoom),
              Divide(),
              Elements(Icons.house_outlined, 'Casa inteira',
                  'Voce tem a casa inteira'),
              Elements(Icons.house_outlined, 'Casa inteira',
                  'Voce tem a casa inteira'),
              Elements(Icons.house_outlined, 'Casa inteira',
                  'Voce tem a casa inteira'),
              Elements(Icons.house_outlined, 'Casa inteira',
                  'Voce tem a casa inteira'),
              Divide(),
              Description(description),
              Divide(),
              TextOffers('Onde você vai dormir'),
              Padding(
                padding: EdgeInsets.only(
                    top: 15.0, bottom: 10.0, left: 30.0, right: 30.0),
                child: Row(
                  children: [
                    CardImage(imgBedroom, textBedroom),
                    CardImage(imgBedroom, textRoom)
                  ],
                ),
              ),
              Divide(),
              ContaimElement(Icons.wifi, 'Wifi'),
              ContaimElement(Icons.kitchen, 'Cozinha'),
              ContaimElement(Icons.tv, 'TV')
            ],
          ),
        ),
        bottomNavigationBar: BottomNavigation(
          value: houseModel.valueMonth,
          condominio: houseModel.valueCondominium,
        ));
  }
}
