import 'dart:io';
import 'dart:typed_data';

import 'package:flutter/material.dart';
import 'package:path_provider/path_provider.dart';
import 'package:screenshot/screenshot.dart';
import 'package:share/share.dart';

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
  final ScreenshotController _screenshotController = ScreenshotController();
  @override
  Widget build(BuildContext context) {
    final HouseOfferModel houseModel =
        ModalRoute.of(context).settings.arguments;
    return Screenshot(
      controller: _screenshotController,
      child: Scaffold(
        backgroundColor: backgroundColor,
        extendBodyBehindAppBar: true,
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Stack(
                children: [
                  CarouselOffers(houseModel.images),
                  CustomAppBar(
                    favorite: true,
                    onFavoritePressed: () {},
                    onSharePressed: () async {
                      await _screenshotController
                          .capture(delay: const Duration(milliseconds: 5))
                          .then((Uint8List image) async {
                        if (image != null) {
                          final directory =
                              await getApplicationDocumentsDirectory();
                          final imagePath =
                              await File('${directory.path}/image.png')
                                  .create();
                          await imagePath.writeAsBytes(image);

                          await Share.shareFiles([imagePath.path]);
                        }
                      });
                    },
                  ),
                ],
              ),
              TitleOffers(houseModel.name),
              DescriptionOffersGrey(
                  "${houseModel.address} - ${houseModel.zipCode} - ${houseModel.city} - ${houseModel.state}"),
              Divide(),
              TextOffers(
                  "${houseModel.descHouseType} alocado por ${houseModel.postUserName}"),
              DescriptionOffers(
                  houseModel.descHouseType, houseModel.mail, houseModel.phone),
              Components(
                houseModel.maxTenants,
                houseModel.qtdRooms,
                houseModel.roomUsersQtd,
                houseModel.restroom,
              ),
              Divide(),
              Elements(Icons.bed, 'Quarto',
                  'O quarto ofertado é ${houseModel.typeRoom}'),
              houseModel.garage > 0
                  ? Elements(Icons.garage, 'Garagem',
                      'A casa tem garagem com ${houseModel.garage} vaga(s)')
                  : Container(),
              Elements(Icons.kitchen, 'Cozinha',
                  'A casa tem ${houseModel.kitchen} cozinha(s)'),
              Elements(Icons.living_outlined, 'Sala',
                  'A casa tem ${houseModel.livinRoom} sala(s)'),
              houseModel.courtyard
                  ? Elements(Icons.grass_sharp, 'Pátio',
                      'Você tem um pátio para apreciar')
                  : Container(),
              Elements(Icons.chair_outlined, 'Mobília',
                  'A casa se encontra ${houseModel.furnished}'),
              Divide(),
              Description(houseModel.observations),
              Divide(),
              TextOffers('Universidades próximas'),
              // TODO colocar as universidades próximas listadas
              Padding(
                padding: EdgeInsets.only(
                    top: 15.0, bottom: 10.0, left: 30.0, right: 30.0),
                child: Row(
                  children: [
                    CardImage(
                        "https://sites.usp.br/kidssavelivesbrasil/wp-content/uploads/sites/631/2021/01/logo-furg.png",
                        "FURG"),
                    CardImage(
                        "https://ifrs.edu.br/wp-content/uploads/2017/08/logo_vertical.png",
                        "IFRS")
                  ],
                ),
              ),
              Divide(),
              TextOffers('Itens inclusos no valor'),
              Column(
                  children: List.generate(
                      houseModel.includedOnValue.length,
                      (index) => ContaimElement(Icons.star_border,
                          houseModel.includedOnValue[index])))
            ],
          ),
        ),
        bottomNavigationBar: BottomNavigation(
          value: houseModel.valueMonth,
          condominio: houseModel.valueCondominium,
        ),
      ),
    );
  }
}
