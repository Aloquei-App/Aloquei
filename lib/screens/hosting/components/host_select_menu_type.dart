import 'package:aloquei_app/blocs/home/home_bloc.dart';
import 'package:aloquei_app/blocs/register_home/register_home_bloc.dart';
import 'package:aloquei_app/core/models/house_offer_model.dart';
import 'package:aloquei_app/core/models/user_model.dart';
import 'package:aloquei_app/screens/core/forms/host_top_menu_gradient.dart';
import 'package:flow_builder/flow_builder.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../host_page_desc.dart';
import 'host_bottombar.dart';
import 'host_text_image_button.dart';

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
        MaterialPage(child: HostPageDesc()),
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
  void _continuePressed(int houseType) {
    context.flow<HouseOfferModel>().update(
        (houseOfferModel) => houseOfferModel.copyWith(houseType: houseType));
  }

  void _sendData(int houseType) {
    context.flow<HouseOfferModel>().complete(
        (houseOfferModel) => houseOfferModel.copyWith(houseType: houseType));
  }

  //0 => república
  //1 => casa
  //2 => ap
  //3 => quarto

  /*@override
  void dispose() {
    //registerHomeBloc.add(DisposeEvent());
    registerHomeBloc.close();
    super.dispose();
  }*/

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
                MaterialPageRoute(builder: (context) => HostPageDesc()),
              );
            }),
        body: Column(
          children: [
            TopMenuGradient(
              color1: 0xFF7b22b0,
              color2: 0xFF8621ab,
              text1: 'Em que tipo de espaço você',
              text2: 'vai hospedar?',
            ),
            Expanded(
              child: ListView(
                padding: EdgeInsets.only(left: 20, right: 20, top: 20),
                children: [
                  HostTextImageButton(
                    text: 'Apartamento',
                    image: 'assets/apartment.jpg',
                    ontap: () => _sendData(2),
                    /*Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => HostPageDesc()),
              );*/
                  ),
                  HostTextImageButton(
                    text: 'Casa',
                    image: 'assets/house.jpg',
                    ontap: () => _continuePressed(1),
                  ),
                  HostTextImageButton(
                    text: 'Quarto',
                    image: 'assets/boutiqueHotel.jpg',
                    ontap: () => _continuePressed(3),
                  ),
                  HostTextImageButton(
                    text: 'República',
                    image: 'assets/frat.jpg',
                    ontap: () => _continuePressed(0),
                  ),
                ],
              ),
            )
          ],
        ));
  }
}
