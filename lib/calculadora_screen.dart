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
                child: SizedBox(
                  width: 80,
                  height: 80,
                  child: FloatingActionButton(
                    child: Text("/", style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),),
                    backgroundColor: Colors.orange,
                    foregroundColor: Colors.white,
                    shape: CircleBorder(),
                    onPressed: () {
                      setState(() {
                        num1 = double.parse(display);
                        operation = "/";
                        display = "";
                      });
                    },
                  ),
                ),
              ),
            ],
          ),
          Row(
            children: [
              Expanded(
                child: SizedBox(
                  child: FloatingActionButton(
                    child: Text("7"),
                    shape: CircleBorder(),
                    onPressed: () {
                      setState(() {
                        display += "7";
                      });
                    },
                  ),
                ),
              ),
              Expanded(
                child: FloatingActionButton(
                  child: Text("8"),
                  shape: CircleBorder(),
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
                  shape: CircleBorder(),
                  onPressed: () {
                    setState(() {
                      display += "9";
                    });
                  },
                ),
              ),
              Expanded(
                child: FloatingActionButton(
                  child: Text("x", style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),),
                    backgroundColor: Colors.orange,
                    foregroundColor: Colors.white,
                    shape: CircleBorder(),
                  onPressed: () {
                    setState(() {
                      num1 = double.parse(display);
                      operation = "*";
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
                child: FloatingActionButton(
                  child: Text("4"),
                  shape: CircleBorder(),
                  onPressed: () {
                    setState(() {
                      display += "4";
                    });
                  },
                ),
              ),
              Expanded(
                child: FloatingActionButton(
                  child: Text("5"),
                  shape: CircleBorder(),
                  onPressed: () {
                    setState(() {
                      display += "5";
                    });
                  },
                ),
              ),
              Expanded(
                child: FloatingActionButton(
                  child: Text("6"),
                  shape: CircleBorder(),
                  onPressed: () {
                    setState(() {
                      display += "6";
                    });
                  },
                ),
              ),
              Expanded(
                child: FloatingActionButton(
                  child: Text("-", style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),),
                    backgroundColor: Colors.orange,
                    foregroundColor: Colors.white,
                    shape: CircleBorder(),
                  onPressed: () {
                    setState(() {
                      num1 = double.parse(display);
                      operation = "-";
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
                child: FloatingActionButton(
                  child: Text("1"),
                  shape: CircleBorder(),
                  onPressed: () {
                    setState(() {
                      display += "1";
                    });
                  },
                ),
              ),
              Expanded(
                child: FloatingActionButton(
                  child: Text("2"),
                  shape: CircleBorder(),
                  onPressed: () {
                    setState(() {
                      display += "2";
                    });
                  },
                ),
              ),
              Expanded(
                child: FloatingActionButton(
                  child: Text("3"),
                  shape: CircleBorder(),
                  onPressed: () {
                    setState(() {
                      display += "3";
                    });
                  },
                ),
              ),
              Expanded(
                child: FloatingActionButton(
                  child: Text("+", style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),),
                    backgroundColor: Colors.orange,
                    foregroundColor: Colors.white,
                    shape: CircleBorder(),
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
                child: FloatingActionButton(
                  child: Text("0"),
                  shape: CircleBorder(),
                  onPressed: () {
                    setState(() {
                      display += "0";
                    });
                  },
                ),
              ),
              Expanded(
                child: FloatingActionButton(
                  child: Text("."),
                  shape: CircleBorder(),
                  onPressed: () {
                    setState(() {
                      display += ".";
                    });
                  },
                ),
              ),
              Expanded(
                child: FloatingActionButton(
                  child: Text("=", style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),),
                    backgroundColor: Colors.orange,
                    foregroundColor: Colors.white,
                    shape: CircleBorder(),
                  onPressed: () {
                    setState(() {
                      num2 = double.parse(display);
                    

                      switch (operation) {
                        case "+":
                          display = (num1 + num2).toString();
                          break;
                        case "-":
                          display = (num1 - num2).toString();
                          break;
                        case "x":
                          display = (num1 * num2).toString();
                          break;
                        case "/":
                          display = (num1 / num2).toString();
                      }

                      operation = "";
                      num1 = 0;
                      num2 = 0;
                    });
                  },
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
