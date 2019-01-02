import 'package:flutter/material.dart';

void main() {
  runApp(new MaterialApp(home: new Calculator()));
}

class Calculator extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Ui();
  }
}

class Ui extends StatefulWidget {
  @override
  _Ui createState() {
    // TODO: implement createState
    return new _Ui();
  }
}

class _Ui extends State<Ui> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text("Calculator"),
      ),
      body: new Column(
        children: <Widget>[
          button("1"),
        ],
      ),
    );
  }
}

Widget button(String text) {
  return new Column(
    children: <Widget>[
      new Row(
        children: <Widget>[
          new OutlineButton(
            child: new Text("1"),
          ),
          new OutlineButton(
            child: new Text("2"),
          ),
          new OutlineButton(
            child: new Text("3"),
          ),
          new OutlineButton(
            child: new Text("4"),
          ),
        ],
      ),
      new Row(
        children: <Widget>[
          new OutlineButton(
            child: new Text("1"),
          ),
          new OutlineButton(
            child: new Text("2"),
          ),
          new OutlineButton(
            child: new Text("3"),
          ),
          new OutlineButton(
            child: new Text("4"),
          ),
        ],
      ),
    ],
  );
}
