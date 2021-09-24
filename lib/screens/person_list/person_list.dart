import 'package:aloquei_app/blocs/person_list/person_list_bloc.dart';
import 'package:aloquei_app/core/models/user_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../core/colors.dart';
import '../rental_list/components/list_title.dart';
import '../rental_list/components/present_card.dart';
import '../rental_list/components/rental_unit_card.dart';

class PersonList extends StatelessWidget {
  final UserModel user;
  const PersonList({Key key, @required this.user}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) =>
          PersonListBloc(user: user)..add(PersonListStartedEvent()),
      child: PersonListPage(),
    );
  }
}


class PersonListPage extends StatefulWidget{
  @override
  _PersonListPageState createState() => _PersonListPageState();
}


class _PersonListPageState extends State<PersonListPage> {
  PersonListBloc _personListBloc;

  @override
  void dispose() {
    _personListBloc.close();
    super.dispose();
  }

  @override
  void initState() {
    _personListBloc = BlocProvider.of<PersonListBloc>(context);
    super.initState();
  }



  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: ListView.builder(
        itemCount: 10,
        shrinkWrap: true,
        itemBuilder: (context, index) {
          return Column(
            children: [
              index == 0
                  ? Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        ListTitle("Pessoas "),
                        PresentCard(
                          icon: FontAwesomeIcons.peopleArrows,
                          title: "Faça novas amizades, aumente seu networking.",
                          subtitle:
                              "Tenha experiências únicas e incríveis! Basta estar aberto.",
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 30),
                          child: ListTitle("Suas Pessoas"),
                        )
                      ],
                    )
                  : SizedBox(),
              Slidable(
                actionPane: SlidableDrawerActionPane(),
                actionExtentRatio: 0.25,
                child: ModelItemCard(
                  "https://upload.wikimedia.org/wikipedia/commons/e/ed/112_Ocean_Avenue_%281973%29_2.jpg",
                  "Amytivylle",
                  "Ronald DeFeo Jr.",
                  "09/fev/2020 - 15/fev/2020",
                ),
                actions: [
                  IconSlideAction(
                      caption: 'Apagar',
                      color: redAirbnb,
                      icon: Icons.delete,
                      onTap: () {}),
                ],
              ),
            ],
          );
        },
      ),
    );
  }
}
