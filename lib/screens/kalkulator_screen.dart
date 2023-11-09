import 'package:flutter/material.dart';
import 'package:feather_icons/feather_icons.dart';

class KalkulatorScreen extends StatefulWidget {

  
  const KalkulatorScreen({super.key});

  @override
  State<KalkulatorScreen> createState() => _KalkulatorScreenState();
}

class _KalkulatorScreenState extends State<KalkulatorScreen> {

  String output = "0";
  String _out = "0";
  double num1 = 0;
  double num2 = 0;
  String operand = "";

  PressedButton(String val) {
    print(val);

    if (val == "C") {
      _out = "0";
      num1 = 0;
      num2 = 0;
      operand = "";
    } else if (val == "+" || val == "-" || val == "/" || val == "*") {
      num1 = double.parse(output);
      operand = val;
      _out = "0";
      output = output + val;
    } else if (val == ".") {
      if (_out.contains(".")) {
        return;
      } else {
        _out = _out + val;
      }
    } else if (val == "=") {
      num2 = double.parse(output);
      if (operand == "+") {
        _out = (num1 + num2).toString();
      }
      if (operand == "-") {
        _out = (num1 - num2).toString();
      }
      if (operand == "*") {
        _out = (num1 * num2).toString();
      }
      if (operand == "/") {
        _out = (num1 / num2).toString();
      }
      num2 = 0;
      num1 = 0;
    } else if (val == "<") {
      // Hapus satu karakter dari _out
      if (_out.length > 1) {
        _out = _out.substring(0, _out.length - 1);
      } else {
        _out = "0";
      }
    } else {
      _out = _out + val;
    }

    setState(() {
      double parsedValue = double.parse(_out);
      output = (parsedValue == parsedValue.toInt()) // Check if it's an integer
          ? parsedValue.toInt().toString() // Display as an integer
          : parsedValue.toStringAsFixed(2); // Display with 2 decimal places
    });

  }


  Widget CalcBtn(String Btnval){
    return Expanded(child: Container(
      margin: EdgeInsets.all(10),
      decoration: BoxDecoration(
        color: Colors.grey[300],
        boxShadow: [
          BoxShadow(
            color: Colors.grey,
            offset: Offset(2, 2),
            blurRadius: 8,
            spreadRadius: 1
          ),
          BoxShadow(
            color: Colors.white,
            offset: Offset(-2, -2),
            blurRadius: 8,
            spreadRadius: 1
          ),
        ]
      ),
      child: MaterialButton(
        padding: EdgeInsets.all(30),
        child: Text(Btnval, style: TextStyle(fontSize: 22),),
        onPressed: ()=>PressedButton(Btnval)),
    ));
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.grey[300],
        body: Container(
          child: Column(
            children: <Widget>[
              Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 0.0),
                  child: IconButton(
                    onPressed: () {
                      Navigator.of(context).pop();
                    },
                    icon: Icon(
                      FeatherIcons.arrowLeft,
                      color: Colors.black,
                      size: 27,
                    ),
                  ),
                ),
              ],
            ),
              Container(
                alignment: Alignment.bottomRight,
                padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 30),
                child: Text(output, style: TextStyle(fontSize: 50),),
              ),
              Expanded(child: Divider()),
              Column(
                children: [
                  Row(
                    children: <Widget>[
                      CalcBtn("."),
                      CalcBtn("C"),
                      CalcBtn("<"),
                      CalcBtn("*"),
                    ],
                  ),
                  Row(
                    children: <Widget>[
                      CalcBtn("7"),
                      CalcBtn("8"),
                      CalcBtn("9"),
                      CalcBtn("/"),
                    ],
                  ),
                  Row(
                    children: <Widget>[
                      CalcBtn("4"),
                      CalcBtn("5"),
                      CalcBtn("6"),
                      CalcBtn("+"),
                    ],
                  ),
                  Row(
                    children: <Widget>[
                      CalcBtn("1"),
                      CalcBtn("2"),
                      CalcBtn("3"),
                      CalcBtn("-"),
                    ],
                  ),
                  Row(
                    children: <Widget>[
                      CalcBtn("0"),
                      CalcBtn("="),
                    ],
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}