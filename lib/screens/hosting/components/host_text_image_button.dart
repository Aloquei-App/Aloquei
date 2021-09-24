import 'package:flutter/material.dart';

class HostTextImageButton extends StatelessWidget {
  final VoidCallback ontap;
  final String text;
  final String image;

  const HostTextImageButton({Key key, this.ontap, this.text, this.image})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: EdgeInsets.only(bottom: 20),
        child: ListTile(
            title: Text(
              text,
              style: TextStyle(
                  fontWeight: FontWeight.w700,
                  color: Colors.black,
                  fontSize: 18),
            ),
            trailing: SizedBox(
                width: 80,
                height: 80,
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(8),
                  child: Image.asset(
                    image,
                    fit: BoxFit.cover,
                  ),
                )),
            tileColor: Colors.white,
            selectedTileColor: Color(0xFFf7f7f7),
            selected: false,
            onTap: ontap,
            minVerticalPadding: 30,
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.all(Radius.circular(10)),
                side: BorderSide(color: Colors.black))));
  }
}
