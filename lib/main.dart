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
  var no = "";
  int data = 0;
  int result = 0;
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
        body: Stack(
          fit: StackFit.expand,
          children: [
            Image.network(
              "https://coolbackgrounds.io/images/backgrounds/black/pure-black-background-f82588d3.jpg",
              fit: BoxFit.cover,
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.end,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Text(
                  "$result",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 30,
                  ),
                  textAlign: TextAlign.end,
                ),
                TextFormField(
                  readOnly: true,
                  keyboardAppearance: Brightness.light,
                  cursorColor: Colors.blue[600],
                  keyboardType: TextInputType.text,
                  decoration: InputDecoration(
                    focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                            width: 2,
                            style: BorderStyle.solid,
                            color: Colors.orange.shade600)),
                    hintText: "Enter A Task",
                    labelText: no,
                    icon: Icon(
                      Icons.calculate_rounded,
                      color: Colors.orange[600],
                    ),
                    labelStyle: TextStyle(color: Colors.white),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                GridView.count(
                  scrollDirection: Axis.vertical,
                  shrinkWrap: true,
                  primary: false,
                  padding: const EdgeInsets.all(20),
                  crossAxisSpacing: 10,
                  mainAxisSpacing: 10,
                  crossAxisCount: 4,
                  children: <Widget>[
                    InkWell(
                      onTap: () {},
                      child: Container(
                        decoration: BoxDecoration(
                            shape: BoxShape.circle, color: Colors.grey),
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
                        decoration: BoxDecoration(
                            shape: BoxShape.circle, color: Colors.grey),
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
                        decoration: BoxDecoration(
                            shape: BoxShape.circle, color: Colors.grey),
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
                        decoration: BoxDecoration(
                            shape: BoxShape.circle, color: Colors.orange[600]),
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
                      onTap: () {
                        setState(() {
                          // data = 7;
                          no = no + "7";
                          // data = int.parse(no);
                          print(no);
                          // data = data + a;
                          // var haha = int.parse(data);
                          // print(haha);
                        });
                      },
                      child: Container(
                        decoration: BoxDecoration(
                            shape: BoxShape.circle, color: Colors.grey[800]),
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
                      onTap: () {
                        setState(() {
                          no = no + "8";
                          // data = int.parse(no);
                           print(no);
                        });
                      },
                      child: Container(
                        decoration: BoxDecoration(
                            shape: BoxShape.circle, color: Colors.grey[800]),
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
                        decoration: BoxDecoration(
                            shape: BoxShape.circle, color: Colors.grey[800]),
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
                        decoration: BoxDecoration(
                            shape: BoxShape.circle, color: Colors.orange[600]),
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
                        decoration: BoxDecoration(
                            shape: BoxShape.circle, color: Colors.grey[800]),
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
                        decoration: BoxDecoration(
                            shape: BoxShape.circle, color: Colors.grey[800]),
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
                        decoration: BoxDecoration(
                            shape: BoxShape.circle, color: Colors.grey[800]),
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
                        decoration: BoxDecoration(
                            shape: BoxShape.circle, color: Colors.orange[600]),
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
                        decoration: BoxDecoration(
                            shape: BoxShape.circle, color: Colors.grey[800]),
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
                        decoration: BoxDecoration(
                            shape: BoxShape.circle, color: Colors.grey[800]),
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
                        decoration: BoxDecoration(
                            shape: BoxShape.circle, color: Colors.grey[800]),
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
                      onTap: () {
                        setState(() {
                          no = no + "+";
                          // data = int.parse(no);
                          print(no);
                        });
                      },
                      child: Container(
                        decoration: BoxDecoration(
                            shape: BoxShape.circle, color: Colors.orange[600]),
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
                        decoration: BoxDecoration(
                            shape: BoxShape.circle, color: Colors.grey[800]),
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
                        decoration: BoxDecoration(
                            shape: BoxShape.circle, color: Colors.grey[800]),
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
                        decoration: BoxDecoration(
                            shape: BoxShape.circle, color: Colors.grey[800]),
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
                      onTap: () {
                        setState(() {
                          // no = no + "+";
                          // data = int.parse(no);
                          result = int.parse(no);
                          print(data);
                        });
                      },
                      child: Container(
                        decoration: BoxDecoration(
                            shape: BoxShape.circle, color: Colors.orange[600]),
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
              ],
            ),
          ],
        ));
  }
}
