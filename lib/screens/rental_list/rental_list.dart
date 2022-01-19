import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:intl/intl.dart';

import '../../blocs/rental_list/rental_list_bloc.dart';
import '../../core/models/house_offer_model.dart';
import '../../core/models/user_model.dart';
import '../core/colors.dart';
import '../core/loading.dart';
import '../core/navigation.dart';
import '../core/notFound.dart';
import 'components/list_title.dart';
import 'components/present_card.dart';
import 'components/rental_unit_card.dart';

class RentalList extends StatelessWidget {
  final UserModel user;
  const RentalList({Key key, @required this.user}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => RentalListBloc(user: user)..add(RentStartedEvent()),
      child: RentalListPage(),
    );
  }
}

class RentalListPage extends StatefulWidget {
  @override
  _RentalListPageState createState() => _RentalListPageState();
}

class _RentalListPageState extends State<RentalListPage> {
  RentalListBloc _rentalListBloc;

  @override
  void dispose() {
    _rentalListBloc.close();
    super.dispose();
  }

  @override
  void initState() {
    _rentalListBloc = BlocProvider.of<RentalListBloc>(context);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
      Padding(
        padding: EdgeInsets.only(left: 30, top: 25),
        child: Text(
          'Moradias',
          style: TextStyle(
            fontSize: 35,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      Expanded(
          child: BlocBuilder<RentalListBloc, RentalListState>(
        buildWhen: (previous, current) =>
            current is LoadingRentalState ||
            current is ShowRentalState ||
            current is NothingToShowState,
        builder: (context, state) {
          if (state is LoadingRentalState) {
            return Loading();
          } else if (state is NothingToShowState) {
            return NotFound();
          } else {
            return ListView.builder(
              itemCount: _rentalListBloc.getApCasa.length,
              shrinkWrap: true,
              itemBuilder: (context, index) {
                return RentalItem(
                  index: index,
                  house: _rentalListBloc.getApCasa[index],
                  onDelete: (value) {
                    _rentalListBloc.add(DeleteRentalEvent(value));
                  },
                );
              },
            );
          }
        },
      ))
    ]));
  }
}

class RentalItem extends StatelessWidget {
  final int index;
  final HouseOfferModel house;
  final Function onDelete;

  const RentalItem({
    Key key,
    this.index,
    this.house,
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
                  ListTitle("Moradias "),
                  PresentCard(
                    icon: FontAwesomeIcons.suitcase,
                    title: "Chegou a hora de alugar a sua moradia!",
                    subtitle:
                        "Compartilhe seus espaço e tenha benefícios dentro do app.",
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 30),
                    child: ListTitle("Suas Moradias"),
                  ),
                ],
              )
            : SizedBox(),
        Slidable(
          actionPane: SlidableDrawerActionPane(),
          actionExtentRatio: 0.25,
          child: ModelItemCard(
            house.images[0],
            house.city,
            house.name,
            DateFormat("dd/MM/yyyy, HH:mm")
                .format(DateTime.fromMicrosecondsSinceEpoch(house.includedAt)),
            true,
            () => navigateToOfferDetail(context, house),
            // formatDate(DateTime date) => new DateFormat("MMMM d").format(date)
          ),
          actions: [
            IconSlideAction(
                caption: 'Apagar',
                color: redAirbnb,
                icon: Icons.delete,
                onTap: () {
                  onDelete(house.key);
                }),
          ],
        ),
      ],
    );
  }
}
