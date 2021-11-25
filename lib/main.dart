// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

void main() => runApp(new MaterialApp(home: billSplitter()));

class billSplitter extends StatefulWidget {
  @override
  _billSplitterState createState() => _billSplitterState();
}

class _billSplitterState extends State<billSplitter> {
  int tipPercentage = 0;
  int personCounter = 1;
  double billAmount = 0.0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
            margin:
                EdgeInsets.only(top: MediaQuery.of(context).size.height * 0.1),
            alignment: Alignment.center,
            color: Colors.white,
            child: ListView(
              scrollDirection: Axis.vertical,
              padding: EdgeInsets.all(20.5),
              children: [
                Container(
                  height: 150,
                  width: 150,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    color: Colors.lightBlueAccent.shade100,
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    // ignore: prefer_const_literals_to_create_immutables
                    children: [
                      Text(
                        'Total per person',
                        style: TextStyle(
                          fontSize: 30,
                        ),
                      ),
                      Text(
                        "\$123",
                        style: TextStyle(
                          fontSize: 25,
                        ),
                      ),
                    ],
                  ),
                )
              ],
            )));
  }
}
