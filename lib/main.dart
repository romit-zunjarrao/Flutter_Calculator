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
  String output = "0";
  double num1 = 0.0;
  double num2 = 0.0;
  String _output = "0";
  String operand = "0";

  buttonPressed(buttonText) {
    if (buttonText == "Clear") {
      _output = "0";
    } else if (buttonText == "+" ||
        buttonText == "-" ||
        buttonText == "x" ||
        buttonText == "/") {
      this.operand = buttonText;
      this.num1 = double.parse(output);
      this._output = "0";
    } else if (buttonText == ".") {
      if (_output.contains(".")) {
        print("Already has a .");
      } else {
        _output = _output + buttonText;
      }
    } else if (buttonText == "=") {
      num2 = double.parse(output);

      if (operand == "+") {
        _output = (num1 + num2).toString();
      }
      if (operand == "-") {
        _output = (num1 - num2).toString();
      }
      if (operand == "x") {
        _output = (num1 * num2).toString();
      }
      if (operand == "/") {
        _output = (num1 / num2).toString();
      }

      num1 = 0;
      num2 = 0;
      operand = "";
    } else {
      _output = _output + buttonText;
    }

    setState(() {
      output = double.parse(_output).toStringAsFixed(2);
    });
  }

  Widget button(String buttonText) {
    return new Expanded(
      child: new OutlineButton(
        padding: new EdgeInsets.all(24.0),
        child: new Text(
          buttonText,
          style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),
        ),
        onPressed: () => buttonPressed(buttonText),
      ),
    );
  }
    @override
    Widget build(BuildContext context) {
      return new Scaffold(
        appBar: new AppBar(
          title: new Text("Calculator"),
        ),
        body: new Container(
          child: new Column(
            children: <Widget>[
              new Container(
                  alignment: Alignment.centerRight,
                  padding: new EdgeInsets.symmetric(
                    vertical: 48.0,
                    horizontal: 10.0,
                  ),
                  child: new Text(
                    output,
                    style: new TextStyle(
                      fontSize: 40.0,
                      fontWeight: FontWeight.bold,
                    ),
                  )),
              new Expanded(child: new Divider()),
              Column(
                children: <Widget>[
                  Row(
                    children: <Widget>[
                      button("7"),
                      button("8"),
                      button("9"),
                      button("/"),
                    ],
                  ),
                  Row(
                    children: <Widget>[
                      button("4"),
                      button("5"),
                      button("6"),
                      button("x"),
                    ],
                  ),
                  Row(
                    children: <Widget>[
                      button("1"),
                      button("2"),
                      button("3"),
                      button("-"),
                    ],
                  ),
                  Row(
                    children: <Widget>[
                      button("."),
                      button("0"),
                      button("00"),
                      button("+"),
                    ],
                  ),
                  Row(
                    children: <Widget>[
                      button("Clear"),
                      button("="),
                    ],
                  ),
                ],
              ),
            ],
          ),
        ),
      );
    }
  
}
