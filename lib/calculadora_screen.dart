import 'package:flutter/material.dart';

class CalculadoraScreen extends StatefulWidget {
  const CalculadoraScreen({super.key});

  @override
  State<CalculadoraScreen> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<CalculadoraScreen> {
  String display = "";
  double num1 = 0;
  double num2 = 0;
  String operation = "";

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          SizedBox(
            child: Text(display, textAlign: TextAlign.right),
            width: double.infinity,
          ),
          Row(
            children: [
              Expanded(child: FloatingActionButton(onPressed: () {})),
              Expanded(child: FloatingActionButton(onPressed: () {})),
              Expanded(child: FloatingActionButton(onPressed: () {})),
              Expanded(
                child: FloatingActionButton(child: Text("/"), onPressed: () {}),
              ),
            ],
          ),
          Row(
            children: [
              Expanded(
                child: FloatingActionButton(
                  child: Text("7"),
                  onPressed: () {
                    setState(() {
                      display += "7";
                    });
                  },
                ),
              ),
              Expanded(
                child: FloatingActionButton(
                  child: Text("8"),
                  onPressed: () {
                    setState(() {
                      display += "8";
                    });
                  },
                ),
              ),
              Expanded(
                child: FloatingActionButton(
                  child: Text("9"),
                  onPressed: () {
                    setState(() {
                      display += "9";
                    });
                  },
                ),
              ),
              Expanded(
                child: FloatingActionButton(child: Text("x"), onPressed: () {}),
              ),
            ],
          ),
          Row(
            children: [
              Expanded(
                child: FloatingActionButton(child: Text("4"), onPressed: () {}),
              ),
              Expanded(
                child: FloatingActionButton(child: Text("5"), onPressed: () {}),
              ),
              Expanded(
                child: FloatingActionButton(child: Text("6"), onPressed: () {}),
              ),
              Expanded(
                child: FloatingActionButton(child: Text("-"), onPressed: () {}),
              ),
            ],
          ),
          Row(
            children: [
              Expanded(
                child: FloatingActionButton(child: Text("1"), onPressed: () {}),
              ),
              Expanded(
                child: FloatingActionButton(child: Text("2"), onPressed: () {}),
              ),
              Expanded(
                child: FloatingActionButton(child: Text("3"), onPressed: () {}),
              ),
              Expanded(
                child: FloatingActionButton(
                  child: Text("+"),
                  onPressed: () {
                    setState(() {
                      num1 = double.parse(display);
                      operation = "+";
                      display = "";
                    });
                  },
                ),
              ),
            ],
          ),
          Row(
            children: [
              Expanded(
                flex: 2,
                child: FloatingActionButton(child: Text("0"), onPressed: () {}),
              ),
              Expanded(
                child: FloatingActionButton(child: Text("."), onPressed: () {}),
              ),
              Expanded(
                child: FloatingActionButton(child: Text("="), onPressed: () { setState(() {
                  num2 = double.parse(display);
                  if (operation == "+") {
                    display = (num1 + num2).toString();
                  } else if (operation == "-") {
                    display = (num1 - num2).toString();
                  } else if (operation == "x") {
                    display = (num1 * num2).toString();
                  } else if (operation == "/") {
                    display = (num1 / num2).toString();
                  }

                  operation = "";
                  num1 = 0;
                  num2 = 0;
                });}),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
