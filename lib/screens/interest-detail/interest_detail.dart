import 'dart:io';
import 'dart:typed_data';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:path_provider/path_provider.dart';
import 'package:random_color/random_color.dart';
import 'package:screenshot/screenshot.dart';
import 'package:share/share.dart';

import '../../blocs/interest-detail/interest_detail_bloc.dart';
import '../../core/models/interest_offer_model.dart';
import '../../core/models/user_model.dart';
import '../core/colors.dart';
import 'components/card_image.dart';
import 'components/custom_app_bar.dart';
import 'components/description_offers.dart';
import 'components/description_offers_grey.dart';
import 'components/divide.dart';
import 'components/elements.dart';
import 'components/text_offers.dart';
import 'components/title_offers.dart';

class InterestDetail extends StatelessWidget {
  final UserModel user;
  const InterestDetail({Key key, this.user}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final InterestModel person = ModalRoute.of(context).settings.arguments;
    return BlocProvider(
      create: (context) =>
          InterestDetailBloc(user: user)..add(InterestDetailStartedEvent()),
      child: InterestDetailPage(person: person),
    );
  }
}

class InterestDetailPage extends StatefulWidget {
  final InterestModel person;

  const InterestDetailPage({Key key, this.person}) : super(key: key);
  @override
  _InterestDetailPageState createState() => _InterestDetailPageState();
}

class _InterestDetailPageState extends State<InterestDetailPage> {
  final ScreenshotController _screenshotController = ScreenshotController();
  final RandomColor _randomColor = RandomColor();
  InterestDetailBloc _interestDetailBloc;
  @override
  void initState() {
    _interestDetailBloc = BlocProvider.of<InterestDetailBloc>(context);
    super.initState();
  }

  @override
  void dispose() {
    _interestDetailBloc.close();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
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
                  // CarouselOffers(widget.houseModel.images),
                  CustomAppBar(
                    onSharePressed: () async {
                      await _screenshotController
                          .capture(delay: const Duration(milliseconds: 5))
                          .then(
                        (Uint8List image) async {
                          if (image != null) {
                            final directory =
                                await getApplicationDocumentsDirectory();
                            final imagePath =
                                await File('${directory.path}/image.png')
                                    .create();
                            await imagePath.writeAsBytes(image);

                            await Share.shareFiles([imagePath.path]);
                          }
                        },
                      );
                    },
                  ),
                ],
              ),
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 30),
                    child: CircleAvatar(
                      backgroundColor: _randomColor.randomColor(
                        colorBrightness: ColorBrightness.light,
                      ),
                      foregroundColor: Colors.black,
                      radius: 60,
                      child: Text(
                        widget.person.postUserName[0].toUpperCase(),
                        style: TextStyle(
                          fontWeight: FontWeight.w500,
                          fontSize: 50,
                          fontFamily: 'RobotoMono',
                        ),
                      ),
                    ),
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      TitleOffers(widget.person.postUserName),
                      DescriptionOffersGrey(
                        "${widget.person.city}/${widget.person.state}",
                      ),
                      DescriptionOffersGrey("${widget.person.university}"),
                    ],
                  ),
                ],
              ),
              Divide(),
              TextOffers('Informações'),
              DescriptionOffers("", "Email: ${widget.person.mail}"),
              // "\nFone: ${widget.person.phone}"),
              Divide(),
              TextOffers('Interesses'),
              Elements(
                FontAwesomeIcons.houseUser,
                "        Possui casa:",
                "        ${widget.person.hasHouse ? 'Sim' : 'Não'}",
              ),
              Elements(
                FontAwesomeIcons.dog,
                "        Gosta de animais:",
                "        ${widget.person.likesPets ? 'Sim' : 'Não'}",
              ),
              Elements(
                FontAwesomeIcons.info,
                "        Observações:",
                "        ${widget.person.observations}",
              ),
              Elements(
                (FontAwesomeIcons.venusMars),
                "        Genero preferencial:",
                "        ${widget.person.desiredGender}",
              ),
              Divide(),
              TextOffers('Universidades próximas'),
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
            ],
          ),
        ),
      ),
    );
  }
}
