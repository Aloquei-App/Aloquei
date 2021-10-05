import 'package:flutter/material.dart';

class PersonItem extends StatelessWidget {
  final String image;
  final String name;
  final VoidCallback onTap;
  const PersonItem({
    Key key,
    this.image,
    this.name,
    this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Row(
        children: [
          Container(
            height: 90,
            width: 90,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(20)),
              image: DecorationImage(
                fit: BoxFit.cover,
                image: NetworkImage(image),
              ),
            ),
          ),
          Container(
            width: 150,
            padding: EdgeInsets.only(left: 10),
            child: Text(
              name,
              style: TextStyle(
                  fontSize: 15,
                  color: Colors.black,
                  fontWeight: FontWeight.bold),
            ),
          ),
        ],
      ),
    );
  }
}
