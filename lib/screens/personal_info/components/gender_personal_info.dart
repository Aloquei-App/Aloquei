import 'package:flutter/material.dart';

class GenderInput extends StatefulWidget {
  final String initGender;
  final Function onChanged;

  const GenderInput({
    Key key,
    this.initGender,
    this.onChanged,
  }) : super(key: key);
  // @override
  State<GenderInput> createState() => _GenderInputState();
}

class _GenderInputState extends State<GenderInput> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 15),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text("Gênero"),
          TextFormField(
            onTap: () {
              showInformationDialog(context);
            },
            readOnly: true,
            initialValue: widget.initGender,
          ),
        ],
      ),
    );
  }

  showInformationDialog(BuildContext context) {
    return showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          content: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("Gênero"),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("Masculino"),
                  Radio(
                    value: "Masculino",
                    groupValue: widget.initGender,
                    onChanged: widget.onChanged,
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("Feminino"),
                  Radio(
                    value: "Feminino",
                    groupValue: widget.initGender,
                    onChanged: widget.onChanged,
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("Outro"),
                  Radio(
                    value: "Outro",
                    groupValue: widget.initGender,
                    onChanged: widget.onChanged,
                  ),
                ],
              ),
            ],
          ),
        );
      },
    );
  }
}
