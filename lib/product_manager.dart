import 'package:flutter/material.dart';

import './products.dart';

class ProductManager extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _ProductManagerState();
  }
}

class _ProductManagerState extends State<ProductManager> {
  List<String> _products = ['Basic cuisine'];

  @override
  Widget build(BuildContext context) {
    return Column(
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
        Products(_products)
      ],
    );
  }
}
