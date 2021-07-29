import 'package:flutter/material.dart';

class Calculator extends StatefulWidget {
  @override
  _CalculatorState createState() => _CalculatorState();
}

class _CalculatorState extends State<Calculator> {
  // var no = "";
  var show = "";
  var no = "";
  double data = 0;
  double result = 0;
  bool view = false;

  void cal({required double data, required String oop}) {
    if (oop == "+") {
      result = result + data;

      print(result);
    }
     else if (oop == "-") {
      result = result - data;

      print(result);
    }
    else if (oop == "x") {
      result = result * data;

      print(result);
    }
    else if (oop == "÷") {
      result = result / data;

      print(result);
    }
  }

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
            Image.asset(
              "asset/black.jpg",
              fit: BoxFit.cover,
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.end,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
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
                    labelText: show,
                    icon: Icon(
                      Icons.calculate_rounded,
                      color: Colors.orange[600],
                    ),
                    labelStyle: TextStyle(color: Colors.white),
                  ),
                ),
                SizedBox(
                  height: 40,
                ),
                Text(
                  view == false ? "0" : 
                  "$result",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 30,
                  ),
                  textAlign: TextAlign.end,
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
                      onTap: () {
                        setState(() {
                          show = "";
                          result = 0;
                        });
                      },
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
                      onTap: () {
                        setState(() {
                         
                          show = show + "÷";
                          double send = int.parse(no).toDouble();
                          no = "0";
                          cal(data: send, oop: "÷");
                          send = 0;
                        });
                      },
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
                          // no = no + "7";
                          show = show + "7";
                          no = no + "7";
                          // data = int.parse(no);
                          // print(no);
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
                          show = show + "8";
                          no = no + "8";
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
                      onTap: () {
                        setState(() {
                          show = show + "9";
                          no = no + "9";
                        });
                      },
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
                      onTap: () {
                         setState(() {
                         
                          show = show + "x";
                          double send = int.parse(no).toDouble();
                          no = "0";
                          cal(data: send, oop: "x");
                          send = 0;
                        });
                      },
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
                      onTap: () {
                        setState(() {
                          show = show + "4";
                          no = no + "4";
                        });
                      },
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
                      onTap: () {
                        setState(() {
                          show = show + "5";
                          no = no + "5";
                        });
                      },
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
                      onTap: () {
                        setState(() {
                          show = show + "6";
                          no = no + "6";
                        });
                      },
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
                      onTap: () {
                        setState(() {
                         
                          show = show + "-";
                          double send = int.parse(no).toDouble();
                          no = "0";
                          cal(data: send, oop: "-");
                          send = 0;
                        });
                      },
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
                      onTap: () {
                        setState(() {
                          show = show + "1";
                          no = no + "1";
                        });
                      },
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
                      onTap: () {
                        setState(() {
                          show = show + "2";
                          no = no + "2";
                        });
                      },
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
                      onTap: () {
                        setState(() {
                          show = show + "3";
                          no = no + "3";
                        });
                      },
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
                          // view = "";
                          // no = no + "+";
                          show = show + "+";
                          double send = int.parse(no).toDouble();
                          //double sendVar = send.toDouble();
                          no = "0";

                          // data = int.parse(no);
                          //result = int.parse(no);

                          cal(data: send, oop: "+");
                          // no = "";
                          send = 0;
                          // data = int.parse(no);
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
                      onTap: () {
                        setState(() {
                          show = show + "0";
                          no = no + "0";
                        });
                      },
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
                          view = true;
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
