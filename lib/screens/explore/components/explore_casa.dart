import 'package:flutter/material.dart';

class Moradia extends StatefulWidget {
  // const Moradia({Key? key}) : super(key: key);

  @override
  _MoradiaState createState() => _MoradiaState();
}

class _MoradiaState extends State<Moradia> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
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
    );
  }
}
