import 'package:flutter/material.dart';

import './product_manager.dart';

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
        theme: ThemeData(primaryColor: Colors.amberAccent),
        home: Scaffold(
            appBar: AppBar(title: Text("Title")),
            // body: ProductManager())); // will use the default value
            body: ProductManager(
              startingProduct: 'Murphy cuisine',
            )));
  }
}
