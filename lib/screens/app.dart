import 'package:flutter/material.dart';

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Aloquei App',
      theme: ThemeData(
        primarySwatch: Colors.red,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({Key key}) : super(key: key);
  

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Finish Signing Up", style: TextStyle(color: Colors.black),),
        backgroundColor: Colors.white,
        elevation: 0,
        
        centerTitle: true,
      ),
      body: Center(
        child: Container(
          color: Colors.white,
          child: ListView(
            children: <Widget>[
              Container(
                padding: EdgeInsets.fromLTRB(10, 30, 10, 10),
                child: TextField(
                    decoration: InputDecoration(
                        border: OutlineInputBorder(), labelText: 'First Name')),
              ),
              Container(
                padding: EdgeInsets.all(10),
                child: TextField(
                    decoration: InputDecoration(
                        border: OutlineInputBorder(), labelText: 'Last Name')),
              ),
              Container(
                  padding: EdgeInsets.all(10),
                  child: Text(
                      'Make sure it matches the name on your government ID.',
                      softWrap: true)),
              Container(
                  padding: EdgeInsets.all(10),
                  child: InputDatePickerFormField(
                      firstDate: DateTime(DateTime.now().year - 120),
                      lastDate: DateTime.now())),
              Container(
                  padding: EdgeInsets.all(10),
                  child: TextField(
                      decoration: InputDecoration(
                          border: OutlineInputBorder(),
                          labelText: 'Email Address'))),
              Container(
                  padding: EdgeInsets.fromLTRB(10, 1, 10, 20),
                  child: Text(
                      'We`ll email you trip confirmations and receipts.',
                      softWrap: true)),
              Container(
                  padding: EdgeInsets.all(10),
                  child: TextField(
                      obscureText: true,
                      decoration: InputDecoration(
                          border: OutlineInputBorder(),
                          labelText: 'Password'))),
              Container(
                  padding: EdgeInsets.fromLTRB(10, 20, 10, 20),
                  child: Text(
                      'We`ll send you marketing promotions, special offers, inspiration, and policy updates via email.',
                      softWrap: true)),
              Container(
                // child: CheckboxListTile(onChanged: (bool value) {  }, value: null,),
                padding: EdgeInsets.all(10),
                ),

              Container(
                padding: EdgeInsets.all(20),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(10),
                  child: TextButton(
                    style: ButtonStyle(
                      padding: MaterialStateProperty.all(
                        EdgeInsets.all(20)
                      ),
                      backgroundColor: MaterialStateProperty.all(Colors.red)
                    ),
                   onPressed: () {  },
                   child: Text('Agree and continue',
                   style: TextStyle(color: Colors.white)),
                  ),
                ),
                )
            ],
          ),

          // TextField(decoration: InputDecoration(border: OutlineInputBorder(), labelText: 'First Name'))
        ),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
