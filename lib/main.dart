import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Calculator",
      theme:
          ThemeData(brightness: Brightness.light, primaryColor: Colors.black),
      home: Calculator(),
    );
  }
}

class Calculator extends StatefulWidget {
  @override
  _CalculatorState createState() => _CalculatorState();
}

class _CalculatorState extends State<Calculator> {
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "CALCULATOR",
          style: TextStyle(
            color: Colors.orange[600],
          ),
        ),
        leading: Icon(
          Icons.calculate,
          color: Colors.orange[600],
        ),
        centerTitle: true,
      ),
      body: Card(
        child: GridView.count(
          primary: false,
          padding: const EdgeInsets.all(20),
          crossAxisSpacing: 10,
          mainAxisSpacing: 10,
          crossAxisCount: 4,
          children: <Widget>[
            InkWell(
              onTap: () {},
              child: Container(
                decoration:
                    BoxDecoration(shape: BoxShape.circle, color: Colors.grey),
                padding: const EdgeInsets.all(8),
                child: Center(
                    child: Text(
                  "AC",
                  style: TextStyle(color: Colors.black, fontSize: 30),
                )),

                // color: Colors.teal[100],
              ),
            ),
            InkWell(
              onTap: () {},
              child: Container(
                decoration:
                    BoxDecoration(shape: BoxShape.circle, color: Colors.grey),
                padding: const EdgeInsets.all(8),
                child: Center(
                    child: Text(
                  "+/-",
                  style: TextStyle(color: Colors.black, fontSize: 30),
                )),

                // color: Colors.teal[100],
              ),
            ),
            InkWell(
              onTap: () {},
              child: Container(
                decoration:
                    BoxDecoration(shape: BoxShape.circle, color: Colors.grey),
                padding: const EdgeInsets.all(8),
                child: Center(
                    child: Text(
                  "%",
                  style: TextStyle(color: Colors.black, fontSize: 30),
                )),

                // color: Colors.teal[100],
              ),
            ),
            InkWell(
              onTap: () {},
              child: Container(
                decoration:
                    BoxDecoration(shape: BoxShape.circle, color: Colors.orange[600]),
                padding: const EdgeInsets.all(8),
                child: Center(
                    child: Text(
                  "÷",
                  style: TextStyle(color: Colors.white, fontSize: 30),
                )),

                // color: Colors.teal[100],
              ),
            ),
            InkWell(
              onTap: () {},
              child: Container(
                decoration:
                    BoxDecoration(shape: BoxShape.circle, color: Colors.grey[800]),
                padding: const EdgeInsets.all(8),
                child: Center(
                    child: Text(
                  "7",
                  style: TextStyle(color: Colors.white, fontSize: 30),
                )),

                // color: Colors.teal[100],
              ),
            ),
            InkWell(
              onTap: () {},
              child: Container(
                decoration:
                    BoxDecoration(shape: BoxShape.circle, color: Colors.grey[800]),
                padding: const EdgeInsets.all(8),
                child: Center(
                    child: Text(
                  "8",
                  style: TextStyle(color: Colors.white, fontSize: 30),
                )),

                // color: Colors.teal[100],
              ),
            ),
            InkWell(
              onTap: () {},
              child: Container(
                decoration:
                    BoxDecoration(shape: BoxShape.circle, color: Colors.grey[800]),
                padding: const EdgeInsets.all(8),
                child: Center(
                    child: Text(
                  "9",
                  style: TextStyle(color: Colors.white, fontSize: 30),
                )),

                // color: Colors.teal[100],
              ),
            ),
            InkWell(
              onTap: () {},
              child: Container(
                decoration:
                    BoxDecoration(shape: BoxShape.circle, color: Colors.orange[600]),
                padding: const EdgeInsets.all(8),
                child: Center(
                    child: Text(
                  "x",
                  style: TextStyle(color: Colors.white, fontSize: 30),
                )),

                // color: Colors.teal[100],
              ),
            ),
            InkWell(
              onTap: () {},
              child: Container(
                decoration:
                    BoxDecoration(shape: BoxShape.circle, color: Colors.grey[800]),
                padding: const EdgeInsets.all(8),
                child: Center(
                    child: Text(
                  "4",
                  style: TextStyle(color: Colors.white, fontSize: 30),
                )),

                // color: Colors.teal[100],
              ),
            ),
            InkWell(
              onTap: () {},
              child: Container(
                decoration:
                    BoxDecoration(shape: BoxShape.circle, color: Colors.grey[800]),
                padding: const EdgeInsets.all(8),
                child: Center(
                    child: Text(
                  "5",
                  style: TextStyle(color: Colors.white, fontSize: 30),
                )),

                // color: Colors.teal[100],
              ),
            ),
            InkWell(
              onTap: () {},
              child: Container(
                decoration:
                    BoxDecoration(shape: BoxShape.circle, color: Colors.grey[800]),
                padding: const EdgeInsets.all(8),
                child: Center(
                    child: Text(
                  "6",
                  style: TextStyle(color: Colors.white, fontSize: 30),
                )),

                // color: Colors.teal[100],
              ),
            ),
            InkWell(
              onTap: () {},
              child: Container(
                decoration:
                    BoxDecoration(shape: BoxShape.circle, color: Colors.orange[600]),
                padding: const EdgeInsets.all(8),
                child: Center(
                    child: Text(
                  "-",
                  style: TextStyle(color: Colors.white, fontSize: 30),
                )),

                // color: Colors.teal[100],
              ),
            ),
            InkWell(
              onTap: () {},
              child: Container(
                decoration:
                    BoxDecoration(shape: BoxShape.circle, color: Colors.grey[800]),
                padding: const EdgeInsets.all(8),
                child: Center(
                    child: Text(
                  "1",
                  style: TextStyle(color: Colors.white, fontSize: 30),
                )),

                // color: Colors.teal[100],
              ),
            ),
            InkWell(
              onTap: () {},
              child: Container(
                decoration:
                    BoxDecoration(shape: BoxShape.circle, color: Colors.grey[800]),
                padding: const EdgeInsets.all(8),
                child: Center(
                    child: Text(
                  "2",
                  style: TextStyle(color: Colors.white, fontSize: 30),
                )),

                // color: Colors.teal[100],
              ),
            ),
            InkWell(
              onTap: () {},
              child: Container(
                decoration:
                    BoxDecoration(shape: BoxShape.circle, color: Colors.grey[800]),
                padding: const EdgeInsets.all(8),
                child: Center(
                    child: Text(
                  "3",
                  style: TextStyle(color: Colors.white, fontSize: 30),
                )),

                // color: Colors.teal[100],
              ),
            ),
            InkWell(
              onTap: () {},
              child: Container(
                decoration:
                    BoxDecoration(shape: BoxShape.circle, color: Colors.orange[600]),
                padding: const EdgeInsets.all(8),
                child: Center(
                    child: Text(
                  "+",
                  style: TextStyle(color: Colors.white, fontSize: 30),
                )),

                // color: Colors.teal[100],
              ),
            ),
            InkWell(
              onTap: () {},
              child: Container(
                decoration:
                    BoxDecoration(shape: BoxShape.circle, color: Colors.grey[800]),
                padding: const EdgeInsets.all(8),
                child: Center(
                    child: Text(
                  "0",
                  style: TextStyle(color: Colors.white, fontSize: 30),
                )),

                // color: Colors.teal[100],
              ),
            ),
            InkWell(
              onTap: () {},
              child: Container(
                decoration:
                    BoxDecoration(shape: BoxShape.circle, color: Colors.grey[800]),
                padding: const EdgeInsets.all(8),
                child: Center(
                    child: Text(
                  "( )",
                  style: TextStyle(color: Colors.white, fontSize: 30),
                )),

                // color: Colors.teal[100],
              ),
            ),
            InkWell(
              onTap: () {},
              child: Container(
                decoration:
                    BoxDecoration(shape: BoxShape.circle, color: Colors.grey[800]),
                padding: const EdgeInsets.all(8),
                child: Center(
                    child: Text(
                  ".",
                  style: TextStyle(color: Colors.white, fontSize: 30),
                )),

                // color: Colors.teal[100],
              ),
            ),
            InkWell(
              onTap: () {},
              child: Container(
                decoration:
                    BoxDecoration(shape: BoxShape.circle, color: Colors.orange[600]),
                padding: const EdgeInsets.all(8),
                child: Center(
                    child: Text(
                  "=",
                  style: TextStyle(color: Colors.white, fontSize: 30),
                )),

                // color: Colors.teal[100],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
