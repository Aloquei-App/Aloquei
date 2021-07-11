import 'package:flutter/material.dart';


class PersonalInfoNameAndLastname extends StatelessWidget {
  final TextEditingController nameController;
  const PersonalInfoNameAndLastname({
    Key key,
    this.nameController,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: EdgeInsets.all(10),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          
          Text("Nome", textAlign: TextAlign.left),
          TextFormField(
            controller: nameController,
            initialValue: "FULANO",
            //Mudar a string para o nome que estiver no banco de dados.
            decoration: InputDecoration(
                focusColor: Colors.black38,
                suffixIcon: IconButton(
                  onPressed: () {},
                  icon: Icon(Icons.clear_rounded),
                  color: Colors.black38,
                ),
                border: UnderlineInputBorder(
                    borderSide: BorderSide(color: Colors.black)),
                focusedBorder: UnderlineInputBorder(
                    borderSide: BorderSide(color: Colors.black))),
          ),
          SizedBox(height: 20),
          Text("Sobrenome", textAlign: TextAlign.left),
          TextFormField(
            controller: nameController,
            initialValue: "DETAL",
            //Mudar a string para o nome que estiver no banco de dados.
            decoration: InputDecoration(
                focusColor: Colors.black38,
                suffixIcon: IconButton(
                  onPressed: () {},
                  icon: Icon(Icons.clear_rounded),
                  color: Colors.black38,
                ),
                border: UnderlineInputBorder(
                    borderSide: BorderSide(color: Colors.black)),
                focusedBorder: UnderlineInputBorder(
                    borderSide: BorderSide(color: Colors.black))),
          ),

        ]));
  }
}
