import 'package:flutter/material.dart';

class Search extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: MediaQuery.of(context).size.height,
        margin:
            EdgeInsets.only(top: MediaQuery.of(context).size.height * 0.001),
        decoration: new BoxDecoration(
          gradient: new LinearGradient(
            colors: [
              Colors.purple[900],
              Colors.pink,
            ],
            begin: const FractionalOffset(0.0, 0.0),
            end: const FractionalOffset(1.0, 0.0),
            stops: [0.0, 1.0],
          ),
        ),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Visibility(
            visible: true,
            child: Container(
              width: MediaQuery.of(context).size.width * 0.7,
              padding: EdgeInsets.only(top: 90, left: 20),
              child: Text(
                'What are you looking for?',
                maxLines: 2,
                style: TextStyle(color: Colors.white, fontSize: 30),
              ),
            ),
          ),
          Expanded(
            child: DraggableScrollableSheet(
              initialChildSize: 0.8,
              minChildSize: 0.7,
              maxChildSize: 0.95,
              builder: (context, scrollController) {
                return Container(
                  height: MediaQuery.of(context).size.height * 0.9,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(25),
                        topRight: Radius.circular(25)),
                    color: Colors.white,
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.2),
                        spreadRadius: 5,
                        blurRadius: 7,
                        offset: Offset(0, 3),
                      ),
                    ],
                  ),
                  padding: EdgeInsets.only(top: 20),
                  child: Column(children: [
                    Row(
                      children: [
                        IconButton(
                            onPressed: () {
                              Navigator.of(context).pop();
                            },
                            icon: Icon(Icons.arrow_back)),
                        Expanded(
                          child: TextFormField(
                            cursorColor: Colors.black,
                            keyboardType: TextInputType.text,
                            //controller: controller,
                            decoration: InputDecoration(
                                border: InputBorder.none,
                                focusedBorder: InputBorder.none,
                                enabledBorder: InputBorder.none,
                                errorBorder: InputBorder.none,
                                disabledBorder: InputBorder.none,
                                contentPadding: EdgeInsets.only(
                                    left: 15, bottom: 11, top: 11, right: 15),
                                hintText: "Where are you going"),
                            //validator: validator,
                          ),
                        ),
                      ],
                    ),
                    Expanded(
                      flex: 3,
                      child: ListView.separated(
                          itemCount: 5,
                          controller: scrollController,
                          separatorBuilder: (BuildContext context, int index) =>
                              const Divider(
                                thickness: 5,
                              ),
                          itemBuilder: (context, index) {
                            return Container(
                              margin: EdgeInsets.all(10),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: [
                                  Icon(Icons.location_city),
                                  Text('Chyupisco'),
                                ],
                              ),
                            );
                          }),
                    ),
                  ]),
                );
              },
            ),
          ),
        ]),
      ),
    );
  }
}
