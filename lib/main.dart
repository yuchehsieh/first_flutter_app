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
              DogName('Ricky'),
              SizedBox(height: 8.0),
              DogName('Murphy'),
              SizedBox(height: 8.0),
              DogName('Hsieh')
            ],
          ),
        ),
      ),
    );
  }
}

class DogName extends StatelessWidget {
  final String name;

  const DogName(this.name);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return DecoratedBox(
        decoration: BoxDecoration(color: Colors.lightBlueAccent),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(name),
        ));
  }
}
