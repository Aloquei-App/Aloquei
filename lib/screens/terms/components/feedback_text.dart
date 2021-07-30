import 'package:flutter/material.dart';

class FeedbackText extends StatelessWidget {
  final VoidCallback onTap;

  const FeedbackText({Key key, this.onTap}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: 10),
      child: InkWell(
        child: Text(
          "Nos envie feedback",
          style: TextStyle(
            fontWeight: FontWeight.w700,
            fontSize: 15,
            color: Color(0xFF227874),
          ),
        ),
        onTap: onTap,
      ),
    );
  }
}
