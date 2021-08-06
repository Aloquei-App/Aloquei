import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'components/explore_people.dart';
import 'components/explore_casa.dart';
import 'package:simple_gradient_text/simple_gradient_text.dart';

import '../core/colors.dart';

class ExplorePage extends StatefulWidget {
  @override
  _ExplorePageState createState() => _ExplorePageState();
}

class _ExplorePageState extends State<ExplorePage> {
  ScrollController _scrollController = ScrollController();
  double _opc = 0.0;
  @override
  void initState() {
    _scrollController.addListener(() {
      setState(() {
        _opc = (_scrollController.offset / 100.0).clamp(0.0, 1.0);
      });
    });
    super.initState();
  }

  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
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
                    image: NetworkImage(
                        'https://www.10wallpaper.com/wallpaper/medium/1512/Sunset_mountain_lake-HDR_Photography_Wallpaper_medium.jpg'),
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
                          color: Colors.white,
                        )),
                    Padding(
                      padding: EdgeInsets.only(top: 20),
                      child: SizedBox(
                        height: 100,
                        width: 250,
                        child: ElevatedButton(
                            onPressed: () {},
                            style: ButtonStyle(
                              backgroundColor:
                                  MaterialStateProperty.all(Colors.white),
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
                              colors: [
                                Colors.purple,
                                Colors.pink,
                              ],
                            )),
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
                        )),
                  ],
                ),
              ),

              Pessoas(),

              Container(
                padding: EdgeInsets.only(left: 20),
                child: Row(
                  children: <Widget>[
                    Text('More em uma casa',
                        style: TextStyle(
                          fontSize: 35,
                          fontWeight: FontWeight.bold,
                        )),
                  ],
                ),
              ),

              Moradia(),

              Padding(
                padding: EdgeInsets.only(top: 20, bottom: 20),
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    padding: EdgeInsets.all(0),
                    primary: Colors.transparent,
                    shadowColor: Colors.transparent,
                  ),
                  onPressed: () {},
                  child: Container(
                    width: 390,
                    height: 500,
                    decoration: BoxDecoration(
                      color: Colors.black,
                      border: Border.all(
                        color: Colors.black,
                      ),
                      borderRadius: BorderRadius.all(Radius.circular(20)),
                      image: DecorationImage(
                        alignment: Alignment.bottomLeft,
                        fit: BoxFit.fitWidth,
                        image: NetworkImage(
                            'https://img.ibxk.com.br/2016/03/11/11152133282230.jpg?w=328'),
                      ),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          alignment: Alignment.center,
                          child: Padding(
                            padding: EdgeInsets.only(top: 60),
                            child: Text(
                              'Clique aqui para fazer\no seu anuncio',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                fontSize: 35,
                                color: Colors.white,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),

              Container(
                padding: EdgeInsets.only(left: 20),
                child: Row(
                  children: <Widget>[
                    Text('More em uma republica',
                        style: TextStyle(
                          fontSize: 35,
                          fontWeight: FontWeight.bold,
                        )),
                  ],
                ),
              ),

              Moradia(),

              Padding(
                padding: EdgeInsets.only(top: 20, bottom: 20),
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    padding: EdgeInsets.all(0),
                    primary: Colors.transparent,
                    shadowColor: Colors.transparent,
                  ),
                  onPressed: () {},
                  child: Container(
                    width: 390,
                    height: 500,
                    decoration: BoxDecoration(
                      color: Colors.black,
                      border: Border.all(
                        color: Colors.black,
                      ),
                      borderRadius: BorderRadius.all(Radius.circular(20)),
                      image: DecorationImage(
                        alignment: Alignment.bottomLeft,
                        fit: BoxFit.fitWidth,
                        image: NetworkImage(
                            'https://img.ibxk.com.br/2016/03/11/11152133282230.jpg?w=328'),
                      ),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          alignment: Alignment.center,
                          child: Padding(
                            padding: EdgeInsets.only(top: 60),
                            child: Text(
                              'Clique aqui para fazer\no seu anuncio',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                fontSize: 35,
                                color: Colors.white,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
