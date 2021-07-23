import 'package:flutter/material.dart';

void buildWarningSnackBar(BuildContext context, String message) {
  ScaffoldMessenger.of(context).showSnackBar(
    SnackBar(
      content: Container(
        decoration: BoxDecoration(
          color: Colors.redAccent,
          border: Border.all(width: 2.0, color: Colors.redAccent),
        ),
        margin: EdgeInsets.fromLTRB(0, 0, 0, 75),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(
            message,
            textAlign: TextAlign.center,
          ),
        ),
      ),
      elevation: 1000,
      backgroundColor: Colors.transparent,
    ),
  );
}

void buildSuccesSnackBar(BuildContext context, String message) {
  ScaffoldMessenger.of(context).showSnackBar(
    SnackBar(
      content: Container(
        width: 2,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: Colors.green,
        ),
        margin: EdgeInsets.fromLTRB(0, 0, 0, 10),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(
            message,
            textAlign: TextAlign.center,
          ),
        ),
      ),
      elevation: 1000,
      backgroundColor: Colors.transparent,
    ),
  );
}
