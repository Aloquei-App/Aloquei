import 'package:flutter/material.dart';

import 'article.dart';

import 'helppage_subtitle.dart';

class ListArticles extends StatelessWidget {
  const ListArticles({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 20.0, right: 20, left: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          HelpPageSubtitle(),
          Expanded(
            child: ListView.separated(
              separatorBuilder: (BuildContext context, int index) =>
                  const Divider(
                color: Colors.black,
              ),
              itemCount: 8,
              itemBuilder: (context, index) {
                return Article(
                    text:
                        'A política de causas de força maior se aplica à minha reserva durante a pandemia',
                    ontap: () {});
              },
            ),
          ),
        ],
      ),
    );
  }
}
