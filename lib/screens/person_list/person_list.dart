import 'package:aloquei_app/screens/core/navigation.dart';

import '../../blocs/person_list/person_list_bloc.dart';
import '../../core/models/interest_offer_model.dart';
import '../../core/models/user_model.dart';
import '../core/loading.dart';
import '../core/notFound.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:intl/intl.dart';
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

class PersonListPage extends StatefulWidget {
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
        child: BlocBuilder<PersonListBloc, PersonListState>(
      buildWhen: (previous, current) =>
          current is LoadingPersonListState || current is ShowPersonListState,
      builder: (context, state) {
        if (state is LoadingPersonListState) {
          return Loading();
        } else if (state is NothingToShowState) {
          return NotFound();
        } else {
          return ListView.builder(
            itemCount: _personListBloc.getApCasa.length,
            shrinkWrap: true,
            itemBuilder: (context, index) {
              return PersonItem(
                index: index,
                person: _personListBloc.getApCasa[index],
                onDelete: (value) {
                  _personListBloc.add(DeletePersonEvent(value));
                },
              );
            },
          );
        }
      },
    ));
  }
}

class PersonItem extends StatelessWidget {
  final int index;
  final InterestModel person;
  final Function onDelete;
  const PersonItem({
    Key key,
    this.index,
    this.person,
    this.onDelete,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        index == 0
            ? Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  ListTitle("Pessoas "),
                  PresentCard(
                    icon: FontAwesomeIcons.suitcase,
                    title: "Faça novas amizades, aumente seu networking.",
                    subtitle:
                        "Tenha experiências únicas e incríveis! Basta estar aberto.",
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 30),
                    child: ListTitle("Seus interesses"),
                  ),
                ],
              )
            : SizedBox(),
        Slidable(
          actionPane: SlidableDrawerActionPane(),
          actionExtentRatio: 0.25,
          child: ModelItemCard(
              '',
              person.city,
              person.postUserName,
              DateFormat("dd/MM/yyyy, HH:mm").format(
                  DateTime.fromMicrosecondsSinceEpoch(person.includedAt)),
              false,
              () => navigateToInterestDetail(context, person),
              // formatDate(DateTime date) => new DateFormat("MMMM d").format(date)
              ),
          actions: [
            IconSlideAction(
                caption: 'Apagar',
                color: redAirbnb,
                icon: Icons.delete,
                onTap: () {
                  onDelete(person.key);
                }),
          ],
        ),
      ],
    );
  }
}
