import '../../blocs/register_home/register_home_bloc.dart';

import '../../core/models/house_offer_model.dart';
import '../../core/models/user_model.dart';
import '../core/forms/top_menu_gradient.dart';

import 'package:flow_builder/flow_builder.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'host_page_address.dart';
import 'host_page_amenities.dart';
import 'host_page_description.dart';
import 'host_page_furnished.dart';
import 'host_page_photos.dart';
import 'host_page_price.dart';

import 'host_page_title.dart';
import 'host_page_type_size.dart';
import 'components/flow_builder_functions.dart';
import 'components/host_text_image_button.dart';

class HostPageType extends StatelessWidget {
  final UserModel userModel;

  const HostPageType({Key key, @required this.userModel}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => RegisterHomeBloc(userModel)..add(ScreenStarted()),
      child: FlowPages(),
    );
  }
}

class FlowPages extends StatefulWidget {
  const FlowPages({Key key}) : super(key: key);

  @override
  _FlowPagesState createState() => _FlowPagesState();
}

class _FlowPagesState extends State<FlowPages> {
  RegisterHomeBloc registerHomeBloc;

  @override
  void initState() {
    registerHomeBloc = BlocProvider.of<RegisterHomeBloc>(context);
    super.initState();
  }

  @override
  void dispose() {
    registerHomeBloc.close();
    super.dispose();
  }

  List<Page> onGeneratePages(HouseOfferModel houseOfferModel, List<Page> page) {
    return [
      MaterialPage(child: AddHomePage()),
      if (houseOfferModel.houseType != null)
        MaterialPage(child: HostPageTypeSize()),
      if (houseOfferModel.typeRoom != null)
        MaterialPage(child: HostPageFurnished()),
      if (houseOfferModel.furnished != null)
        MaterialPage(child: HostPageAddress()),
      if ((houseOfferModel.address ??
              houseOfferModel.zipCode ??
              houseOfferModel.state ??
              houseOfferModel.city) !=
          null)
        MaterialPage(child: HostPageAmenities()),
      if ((houseOfferModel.garage ??
                  houseOfferModel.courtyard ??
                  houseOfferModel.kitchen ??
                  houseOfferModel.livinRoom ??
                  houseOfferModel.restroom) !=
              null &&
          houseOfferModel.qtdRooms != null)
        MaterialPage(child: HostPageTitle()),
      if (houseOfferModel.name != null) //MaterialPage(child: HostPagePhotos()),
        //if (houseOfferModel.images != null)
        MaterialPage(child: HostPageDescription()),
      if (houseOfferModel.obs != null) MaterialPage(child: HostPagePrice()),
    ];
  }

  @override
  Widget build(BuildContext context) {
    return FlowBuilder(
        onComplete: (HouseOfferModel model) {
          registerHomeBloc.add(SubmitEvent(model));
        },
        state: HouseOfferModel(),
        onGeneratePages: onGeneratePages);
  }
}

class AddHomePage extends StatefulWidget {
  @override
  _AddHomePageState createState() => _AddHomePageState();
}

class _AddHomePageState extends State<AddHomePage> {
  //0 => república
  //1 => casa
  //2 => ap
  //3 => quarto

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Stack(children: [
            TopMenuGradient(
              color1: 0xFF7b22b0,
              color2: 0xFF8621ab,
              text1: 'Em que tipo de espaço você',
              text2: 'vai hospedar?',
            ),
            Padding(
              padding: EdgeInsets.only(top: 30, left: 8.0),
              child: IconButton(
                icon: Icon(Icons.arrow_back, size: 30),
                color: Colors.white,
                onPressed: () {
                  Navigator.of(context, rootNavigator: true).pop(context);
                },
              ),
            ),
          ]),
          Expanded(
            child: ListView(
              padding: EdgeInsets.only(left: 20, right: 20, top: 20),
              children: [
                HostTextImageButton(
                  text: 'Apartamento',
                  image: 'assets/apartment.jpg',
                  ontap: () => continuePressed(houseType: 2, context: context),
                ),
                HostTextImageButton(
                  text: 'Casa',
                  image: 'assets/house.jpg',
                  ontap: () => continuePressed(houseType: 1, context: context),
                ),
                HostTextImageButton(
                  text: 'Quarto',
                  image: 'assets/boutiqueHotel.jpg',
                  ontap: () => continuePressed(houseType: 3, context: context),
                ),
                HostTextImageButton(
                  text: 'República',
                  image: 'assets/frat.jpg',
                  ontap: () => continuePressed(houseType: 0, context: context),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
