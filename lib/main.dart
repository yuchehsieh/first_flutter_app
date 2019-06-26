import 'package:flutter/material.dart';

void main() {
  runApp(DogApp());
}

class DogApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'My Dog App',
      home: Scaffold(
        appBar: AppBar(title: Text('Yellow Lab')),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              DecoratedBox(
                decoration: BoxDecoration(color: Colors.lightBlueAccent),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text('Rocky'),
                ),
              ),
              SizedBox(height: 8.0),
              DecoratedBox(
                decoration: BoxDecoration(color: Colors.lightBlueAccent),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text('Murphy'),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
