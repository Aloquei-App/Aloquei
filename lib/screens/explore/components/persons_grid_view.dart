import 'package:flutter/material.dart';

import '../../../core/models/interest_offer_model.dart';
import 'person_item.dart';

class PersonsGridView extends StatelessWidget {
  final List<InterestModel> interestsList;
  const PersonsGridView({
    Key key,
    this.interestsList,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(left: 20),
      height: 250,
      child: GridView.builder(
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            childAspectRatio: 0.47,
            crossAxisCount: 2,
            crossAxisSpacing: 5.0,
            mainAxisSpacing: 10.0),
        scrollDirection: Axis.horizontal,
        itemCount: interestsList.length,
        itemBuilder: (context, index) {
          return PersonItem(
            image:
                'https://img.ibxk.com.br/2017/06/22/22100428046161.jpg?w=1200&h=675&mode=crop&scale=both',
            name: interestsList[index].postUserName,
          );
        },
      ),
    );
  }
}
