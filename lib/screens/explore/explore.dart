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
    return SafeArea(child:
      Scaffold(
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
      body:
      SingleChildScrollView(
        controller: _scrollController,
        child: Column(
          children: <Widget>[
            Container(
              height: 600,
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                image: DecorationImage(
                  fit: BoxFit.cover,
                  image: NetworkImage('https://www.10wallpaper.com/wallpaper/medium/1512/Sunset_mountain_lake-HDR_Photography_Wallpaper_medium.jpg'),
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

            SizedBox(
              height: 250,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: 3,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: EdgeInsets.all(0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            primary: Colors.transparent,
                            shadowColor: Colors.transparent,
                          ),
                          onPressed: (){
                            setState(() {
                              if (index != 0){
                                index = index*2;
                              }
                              print(index);
                            });
                          },
                            child: Row(
                              children: [
                                Container(
                                  height: 100,
                                  width: 100,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.all(Radius.circular(20)),
                                    image: DecorationImage(
                                      fit: BoxFit.cover,
                                      image: NetworkImage('https://img.ibxk.com.br/2017/06/22/22100428046161.jpg?w=1200&h=675&mode=crop&scale=both'),
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  width: 150,
                                  child: Container(
                                    padding: EdgeInsets.only(left: 10),
                                    child:Text('Nome da pessoa',
                                      style: TextStyle(
                                          fontSize: 15,
                                          color: Colors.black,
                                          fontWeight: FontWeight.bold
                                      ),
                                    ),
                                  )
                                )
                              ],

                            ),
                          ),
                        Padding(padding: EdgeInsets.all(10)),
                        ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            primary: Colors.transparent,
                            shadowColor: Colors.transparent,
                          ),
                          onPressed: (){
                            setState(() {
                              if (index != 0){
                                index = index*2;
                              }
                              index = index+1;
                              print(index);
                            });
                          },
                          child: Row(
                            children: [
                              Container(
                                height: 100,
                                width: 100,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.all(Radius.circular(20)),
                                  image: DecorationImage(
                                    fit: BoxFit.cover,
                                    image: NetworkImage('https://img.ibxk.com.br/2017/06/22/22100428046161.jpg?w=1200&h=675&mode=crop&scale=both'),
                                  ),
                                ),
                              ),
                              SizedBox(
                                  width: 150,
                                  child: Container(
                                    padding: EdgeInsets.only(left: 10),
                                    child:Text('Nome da pessoa',
                                      style: TextStyle(
                                          fontSize: 15,
                                          color: Colors.black,
                                          fontWeight: FontWeight.bold
                                      ),
                                    ),
                                  )
                              )
                            ],

                          ),
                        ),
                      ],

                    ),
                  );
                }
              ),
            ),

            Container(
              padding: EdgeInsets.only(left: 20),
              child: Row(
                children: <Widget>[
                  Text('More em uma casa',
                      style: TextStyle(
                        fontSize: 35,
                        fontWeight: FontWeight.bold,
                      )
                  ),
                ],
              ),
            ),

            SizedBox(
              height: 350,
              child: ListView.builder(
                  physics: ClampingScrollPhysics(),
                  shrinkWrap: true,
                  scrollDirection: Axis.horizontal,
                  itemCount: 4,
                  itemBuilder: (context, index) {
                    return ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          primary: Colors.transparent,
                          shadowColor: Colors.transparent,
                        ),
                        onPressed: (){
                          setState(() {
                            print(index);
                          });
                          },
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                                padding: EdgeInsets.only(top: 10, bottom: 10),
                                child: Container(
                                  height: 300,
                                  width: 300,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.all(Radius.circular(20)),
                                    image: DecorationImage(
                                      fit: BoxFit.cover,
                                      image: NetworkImage('https://img.icons8.com/material-sharp/452/home.png'),
                                    ),
                                  ),
                                )
                            ),

                            Container(
                              child: Text('CASA AQUI',
                                style: TextStyle(
                                  fontSize: 20,
                                  color: Colors.black,
                                ),
                              ),
                            ),
                          ],
                        ),
                    );
                  }
              ),
            ),


            Padding(
              padding: EdgeInsets.only(top:20,bottom: 20),
              child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                padding: EdgeInsets.all(0),
                primary: Colors.transparent,
                shadowColor: Colors.transparent,
              ),
              onPressed: (){},
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
                    image: NetworkImage('https://img.ibxk.com.br/2016/03/11/11152133282230.jpg?w=328'),
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
                        child: Text('Clique aqui para fazer\no seu anuncio',
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
                      )
                  ),
                ],
              ),
            ),

            SizedBox(
              height: 350,
              child: ListView.builder(
                  physics: ClampingScrollPhysics(),
                  shrinkWrap: true,
                  scrollDirection: Axis.horizontal,
                  itemCount: 3,
                  itemBuilder: (context, index) {
                    return ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        primary: Colors.transparent,
                        shadowColor: Colors.transparent,
                      ),
                      onPressed: (){
                        setState(() {
                          print(index);
                        });
                      },
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                              padding: EdgeInsets.only(top: 10, bottom: 10),
                              child: Container(
                                height: 300,
                                width: 300,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.all(Radius.circular(20)),
                                  image: DecorationImage(
                                    fit: BoxFit.cover,
                                    image: NetworkImage('https://i.pinimg.com/originals/7c/5d/74/7c5d7421753b2ef8221e778e77a89943.jpg'),
                                  ),
                                ),
                              )
                          ),

                          Container(
                            child: Text('REPUBLICA',
                              style: TextStyle(
                                fontSize: 20,
                                color: Colors.black,
                              ),
                            ),
                          ),
                        ],
                      ),
                    );
                  }
              ),
            ),


            Padding(
              padding: EdgeInsets.only(top:20,bottom: 20),
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  padding: EdgeInsets.all(0),
                  primary: Colors.transparent,
                  shadowColor: Colors.transparent,
                ),
                onPressed: (){},
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
                      image: NetworkImage('https://img.ibxk.com.br/2016/03/11/11152133282230.jpg?w=328'),
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
                          child: Text('Clique aqui para fazer\no seu anuncio',
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
