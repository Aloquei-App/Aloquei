import 'package:flutter/material.dart';

class GenderInput extends StatelessWidget {
  final TextEditingController controller;
  final Function onChanged;

  const GenderInput({
    Key key,
    this.controller,
    this.onChanged,
  }) : super(key: key);

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
            controller: controller,
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
                    groupValue: controller.text,
                    onChanged: onChanged,
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("Feminino"),
                  Radio(
                    value: "Feminino",
                    groupValue: controller.text,
                    onChanged: onChanged,
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("Outro"),
                  Radio(
                    value: "Outro",
                    groupValue: controller.text,
                    onChanged: onChanged,
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
