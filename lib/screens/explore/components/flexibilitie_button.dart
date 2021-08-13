import 'package:flutter/material.dart';
import 'package:simple_gradient_text/simple_gradient_text.dart';

class FlexibilitieButton extends StatelessWidget {
  final VoidCallback onPressed;
  const FlexibilitieButton({
    Key key,
    this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 600,
      width: MediaQuery.of(context).size.width,
      decoration: BoxDecoration(
        image: DecorationImage(
          fit: BoxFit.cover,
          image: AssetImage('assets/images/d.jpg'),
        ),
      ),
      padding: EdgeInsets.all(20),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            'Está na dúvida de\nonde ir?\nPerfeito.',
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 25,
              color: Colors.white,
            ),
          ),
          Padding(
            padding: EdgeInsets.only(top: 20),
            child: SizedBox(
              height: 100,
              width: 250,
              child: ElevatedButton(
                onPressed: () => onPressed(),
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(Colors.white),
                  shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                    RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(40.0),
                      side: BorderSide(color: Colors.black),
                    ),
                  ),
                ),
                child: GradientText(
                  'Tenho\nflexibilidade',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 25,
                  ),
                  colors: [
                    Colors.purple,
                    Colors.pink,
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
