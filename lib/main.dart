import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  List<String> _products = ['Basic cuisine'];

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
        home: Scaffold(
      appBar: AppBar(title: Text("Title")),
      body: Column(
        children: <Widget>[
          Container(
              margin: EdgeInsets.all(10.0),
              child: Center(
                  child: RaisedButton(
                      onPressed: () {
                        setState(() {
                          _products.add('Advanced cuisine');
                        });
                      },
                      child: Text('Add Item')))),
          Column(
              children: _products
                  .map((element) => Card(
                          child: Column(
                        children: <Widget>[
                          Image.asset('assets/example1.png'),
                          Text(element)
                        ],
                      )))
                  .toList())
        ],
      ),
    ));
  }
}
