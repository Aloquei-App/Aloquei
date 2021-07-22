import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:simple_gradient_text/simple_gradient_text.dart';

import '../core/colors.dart';

class ExplorePage extends StatefulWidget {
  @override
  _ExplorePageState createState() => _ExplorePageState();
}

class _ExplorePageState extends State<ExplorePage> {
  ScrollController _scrollController=ScrollController();
  double _opc=0.0;
  @override
  void initState(){
    _scrollController.addListener(() {
      setState(() {
        _opc=(_scrollController.offset/100.0).clamp(0.0, 1.0);
      });
    });
    super.initState();
  }
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: Color.fromRGBO(255, 255, 255, _opc),
        toolbarHeight: 80,
        centerTitle: true,
        leadingWidth: 0,
        elevation: 0,
        title: InkWell(
          onTap: () {},
          child: Container(
            margin: EdgeInsets.symmetric(horizontal: 15),
            height: 60,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(30),
              color: Colors.grey[200],
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(
                  Icons.search,
                  size: 25,
                  color: redAirbnb,
                ),
                SizedBox(
                  width: 5,
                ),
                Text(
                  "Para onde você vai?",
                  style: TextStyle(
                      color: Colors.black, fontWeight: FontWeight.w700),
                )
              ],
            ),
          ),
        ),
      ),
      body: SingleChildScrollView(
        controller: _scrollController,
        child: Column(
          children: <Widget>[
            Container(
              height: 600,
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                image: DecorationImage(
                  fit: BoxFit.cover,
                  image: AssetImage('assets/images/backgr.jpg')
                ),
              ),
              padding: EdgeInsets.all(20),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Text('Está na dúvida de\nonde ir?\nPerfeito.',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 25,
                        color:Colors.white,
                      )
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 20),
                    child: SizedBox(
                      height: 100,
                      width: 250,
                      child: ElevatedButton(
                        onPressed: (){},
                          style: ButtonStyle(
                            backgroundColor: MaterialStateProperty.all(Colors.white),
                            shape: MaterialStateProperty.all<
                                RoundedRectangleBorder>(
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
                            colors: [Colors.purple, Colors.pink,],
                          )
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              padding: EdgeInsets.all(20),
              child: Row(
                children: <Widget>[
                  Text('Explore destinos perto\nde você',
                      style: TextStyle(
                        fontSize: 35,
                        fontWeight: FontWeight.bold,
                      )
                  ),
                ],
              ),
            ),

            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Container(
                padding: EdgeInsets.only(left: 20),
                height: 200,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: <Widget>[
                    Container(
                      width: 100,
                      color: Colors.red,
                    ),
                    Container(
                      width: 100,
                      color: Colors.blue,
                    ),
                    Container(
                      width: 100,
                      color: Colors.green,
                    ),
                    Container(
                      width: 100,
                      color: Colors.pink,
                    ), Container(
                      width: 100,
                      color: Colors.purple,
                    ),
                  ],
                ),
              ),
            ),
            Container(
              padding: EdgeInsets.only(left: 20, top: 20),
              child: Row(
                children: <Widget>[
                  Text('More em qualquer lugar',
                      style: TextStyle(
                        fontSize: 35,
                        fontWeight: FontWeight.bold,
                      )
                  ),
                ],
              ),
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Container(
                padding: EdgeInsets.all(20),
                height: 200,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: <Widget>[
                    Container(
                      width: 100,
                      color: Colors.red,
                    ),
                    Container(
                      width: 100,
                      color: Colors.blue,
                    ),
                    Container(
                      width: 100,
                      color: Colors.green,
                    ),
                    Container(
                      width: 100,
                      color: Colors.pink,
                    ), Container(
                      width: 100,
                      color: Colors.purple,
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

}
