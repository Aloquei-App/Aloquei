import 'package:flutter/material.dart';

class NameAndLastNameInput extends StatelessWidget {
  final TextEditingController nameController;
  final TextEditingController lastNameController;
  const NameAndLastNameInput({
    Key key,
    this.nameController,
    this.lastNameController,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: 30.0, bottom: 10),
      child: Column(
        children: [
          TextFormField(
            controller: nameController,
            decoration: InputDecoration(
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(6),
                      topRight: Radius.circular(6)),
                ),
                labelText: 'Nome'),
          ),
          TextFormField(
            controller: lastNameController,
            decoration: InputDecoration(
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(6),
                      bottomRight: Radius.circular(6)),
                ),
                labelText: 'Sobrenome'),
          ),
          SizedBox(
            height: 10,
          ),
          Text(
            'Certifique-se de que corresponde ao nome no seu documento de identificação facial.',
            style: TextStyle(
              color: Colors.black54,
            ),
          ),
        ],
      ),
    );
  }
}
