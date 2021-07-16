import 'package:flutter/material.dart';

class UsernameAndProfileButton extends StatelessWidget {
  final VoidCallback onTap;
  final String username;
  final String urlImage;
  const UsernameAndProfileButton({
    Key key,
    this.onTap,
    this.username,
    this.urlImage,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.width * 0.3,
      decoration: BoxDecoration(
        border: Border(bottom: BorderSide(color: Colors.grey)),
      ),
      child: Padding(
        padding: EdgeInsets.only(left: 20),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Image(
              image: AssetImage(urlImage),
              width: 80,
            ),
            SizedBox(width: 20),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  username,
                  style: TextStyle(
                      fontSize: 30,
                      color: Color(0xFF4c4c4c),
                      fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  height: 5,
                ),
                InkWell(
                  child: Text(
                    "Ver perfil",
                    style: TextStyle(
                      fontWeight: FontWeight.w700,
                      fontSize: 17,
                      color: Color(0xFF227874),
                    ),
                  ),
                  onTap: onTap,
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
