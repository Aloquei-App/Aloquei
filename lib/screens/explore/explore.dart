import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'components/explore_app_bar.dart';
import 'components/first_button.dart';
import 'components/persons_grid_view.dart';
import 'components/title_model.dart';

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
        appBar: ExploreAppBar(
          opc: _opc,
          onTap: () {},
        ),
        body: SingleChildScrollView(
          controller: _scrollController,
          child: Column(
            children: [
              FirstButton(),
              TitleModel(
                title: 'Explore destinos perto\nde você',
              ),
              PersonsGridView(),
              TitleModel(title: 'More em uma casa'),
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
                        onPressed: () {
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
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(20)),
                                    image: DecorationImage(
                                      fit: BoxFit.cover,
                                      image: NetworkImage(
                                          'https://img.icons8.com/material-sharp/452/home.png'),
                                    ),
                                  ),
                                )),
                            Container(
                              child: Text(
                                'CASA AQUI',
                                style: TextStyle(
                                  fontSize: 20,
                                  color: Colors.black,
                                ),
                              ),
                            ),
                          ],
                        ),
                      );
                    }),
              ),
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
                  children: [
                    Text('More em uma republica',
                        style: TextStyle(
                          fontSize: 35,
                          fontWeight: FontWeight.bold,
                        )),
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
                        onPressed: () {
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
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(20)),
                                    image: DecorationImage(
                                      fit: BoxFit.cover,
                                      image: NetworkImage(
                                          'https://i.pinimg.com/originals/7c/5d/74/7c5d7421753b2ef8221e778e77a89943.jpg'),
                                    ),
                                  ),
                                )),
                            Container(
                              child: Text(
                                'REPUBLICA',
                                style: TextStyle(
                                  fontSize: 20,
                                  color: Colors.black,
                                ),
                              ),
                            ),
                          ],
                        ),
                      );
                    }),
              ),
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
