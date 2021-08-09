import 'package:flutter/material.dart';

class WishlistsPage extends StatefulWidget {
  const WishlistsPage({Key key}) : super(key: key);

  @override
  _WishlistsPageState createState() => _WishlistsPageState();
}

class _WishlistsPageState extends State<WishlistsPage> {
  int _indexAtual = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: ListView.builder(
          itemCount: 10,
          itemBuilder: (context, index) {
            if (index == 0) {
              return Padding(
                  padding: EdgeInsets.only(left: 30, top: 25),
                  child: Text(
                    'Favoritos',
                    style: TextStyle(
                      fontSize: 40,
                      fontWeight: FontWeight.bold,
                    ),
                  ));
            } else {
              return InkWell(
                child: Padding(
                  padding: EdgeInsets.only(left: 30, top: 30),
                  child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        padding: EdgeInsets.all(0),
                        primary: Colors.transparent,
                        shadowColor: Colors.transparent,
                      ),
                      onPressed: () {
                        setState(() {
                          _indexAtual = index;
                        });
                      },
                      child: Container(
                        height: 100,
                        child: Row(
                          children: [
                            Container(
                              height: 100,
                              width: 100,
                              decoration: BoxDecoration(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(20)),
                                image: DecorationImage(
                                  fit: BoxFit.cover,
                                  image: NetworkImage(
                                      'https://cdn.dicionariopopular.com/imagens/46482723-914713205554017-4832741937838555136-n-cke.jpg'),
                                ),
                              ),
                            ),
                            Container(
                              padding: EdgeInsets.only(left: 10),
                              child: Text(
                                'PIKACHU SURPRESO',
                                style: TextStyle(
                                    fontSize: 15,
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold),
                              ),
                            )
                          ],
                        ),
                      )),
                ),
              );
            }
          },
        ),
      ),
    );
  }
}
