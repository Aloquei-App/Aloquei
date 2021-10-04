import 'package:aloquei_app/blocs/register_home/register_home_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../host_page_desc.dart';
import 'host_text_image_button.dart';

class HostSelectMenuOne extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => RegisterHomeBloc()..add(ScreenStarted()),
      child: AddHomePage(),
    );
  }
}

class AddHomePage extends StatefulWidget {
  @override
  _AddHomePageState createState() => _AddHomePageState();
}

class _AddHomePageState extends State<AddHomePage> {
  RegisterHomeBloc registerHomeBloc;

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
    registerHomeBloc = BlocProvider.of<RegisterHomeBloc>(context);

    return Expanded(
      child: ListView(
        padding: EdgeInsets.only(left: 20, right: 20, top: 20),
        children: [
          HostTextImageButton(
            text: 'Apartamento',
            image: 'assets/apartment.jpg',
            ontap: () {
              registerHomeBloc.setHouseType(2);
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => HostPageDesc()),
              );
            },
          ),
          HostTextImageButton(
            text: 'Casa',
            image: 'assets/house.jpg',
            ontap: () {},
          ),
          HostTextImageButton(
            text: 'República',
            image: 'assets/frat.jpg',
            ontap: () {},
          ),
          HostTextImageButton(
            text: 'Unidade secundária',
            image: 'assets/secondaryUnit.jpg',
            ontap: () {},
          ),
          HostTextImageButton(
            text: 'Acomodação única',
            image: 'assets/uniqueSpace.jpg',
            ontap: () {},
          ),
          HostTextImageButton(
            text: 'Pousada',
            image: 'assets/bed.jpg',
            ontap: () {},
          ),
          HostTextImageButton(
            text: 'Hotel Boutique',
            image: 'assets/boutiqueHotel.jpg',
            ontap: () {},
          ),
        ],
      ),
    );
  }
}
