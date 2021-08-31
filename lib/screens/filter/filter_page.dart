import 'package:aloquei_app/screens/filter/components/app_bar_content.dart';
import 'package:aloquei_app/screens/filter/components/filter_appbar.dart';
import 'package:aloquei_app/screens/filter/components/filter_subtittle.dart';
import 'package:aloquei_app/screens/filter/components/filter_title.dart';
import 'package:flutter/material.dart';

class FilterPage extends StatefulWidget {
  const FilterPage({Key key}) : super(key: key);

  @override
  _FilterPageState createState() => _FilterPageState();
}

class _FilterPageState extends State<FilterPage> {
  bool _isSelected1 = false;
  bool _isSelected2 = false;
  bool _isSelected3 = false;
  bool _isSelected4 = false;
  bool _isSelected5 = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomAppBar(
        elevation: 10,
        color: Colors.grey[50],
        child: AppBarContent(onpressed1: () {}, onpressed2: () {}),
      ),
      body: Column(
        children: [
          FilterAppBar(onpressed: () {}),
          FilterTitle(),
          FilterSubTitle(),
          Container(
              padding: EdgeInsets.only(left: 20, top: 30, right: 10),
              child: CheckboxListTile(
                activeColor: Colors.black,
                title: Text(
                  "Espaço Inteiro",
                  style: TextStyle(fontSize: 22, fontWeight: FontWeight.w400),
                ),
                value: _isSelected1,
                onChanged: (newValue) {
                  setState(() {
                    _isSelected1 = newValue;
                  });
                },
              )),
          Container(
              padding: EdgeInsets.only(left: 20, right: 10),
              child: CheckboxListTile(
                activeColor: Colors.black,
                title: Text(
                  "Estacionamento Incluído",
                  style: TextStyle(fontSize: 22, fontWeight: FontWeight.w400),
                ),
                value: _isSelected2,
                onChanged: (newValue) {
                  setState(() {
                    _isSelected2 = newValue;
                  });
                },
              )),
          Container(
              padding: EdgeInsets.only(left: 20, right: 10),
              child: CheckboxListTile(
                activeColor: Colors.black,
                title: Text(
                  "Wi-fi",
                  style: TextStyle(fontSize: 22, fontWeight: FontWeight.w400),
                ),
                value: _isSelected3,
                onChanged: (newValue) {
                  setState(() {
                    _isSelected3 = newValue;
                  });
                },
              )),
          Container(
              padding: EdgeInsets.only(left: 20, right: 10),
              child: CheckboxListTile(
                activeColor: Colors.black,
                title: Text(
                  "Cozinha",
                  style: TextStyle(fontSize: 22, fontWeight: FontWeight.w400),
                ),
                value: _isSelected4,
                onChanged: (newValue) {
                  setState(() {
                    _isSelected4 = newValue;
                  });
                },
              )),
          Container(
              padding: EdgeInsets.only(left: 20, right: 10),
              child: CheckboxListTile(
                activeColor: Colors.black,
                title: Text(
                  "Permitido animais",
                  style: TextStyle(fontSize: 22, fontWeight: FontWeight.w400),
                ),
                value: _isSelected5,
                onChanged: (newValue) {
                  setState(() {
                    _isSelected5 = newValue;
                  });
                },
              )),
        ],
      ),
    );
  }
}
