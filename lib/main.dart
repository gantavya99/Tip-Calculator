// ignore_for_file: prefer_const_constructors, non_constant_identifier_names, avoid_types_as_parameter_names, prefer_const_literals_to_create_immutables

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
                    color: Colors.purpleAccent.withOpacity(0.25),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    // ignore: prefer_const_literals_to_create_immutables
                    children: [
                      Text(
                        'Total per person',
                        style: TextStyle(
                          fontSize: 30,
                          color: Colors.purpleAccent,
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
                ),
                Container(
                  margin: EdgeInsets.only(top: 20),
                  padding: EdgeInsets.all(12.0),
                  decoration: BoxDecoration(
                    color: Colors.transparent,
                    border: Border.all(
                      color: Colors.blueGrey.shade100,
                      style: BorderStyle.solid,
                    ),
                    borderRadius: BorderRadius.circular(12.0),
                  ),
                  child: Column(
                    // ignore: prefer_const_literals_to_create_immutables
                    children: [
                      TextField(
                        keyboardType:
                            TextInputType.numberWithOptions(decimal: true),
                        style: TextStyle(color: Colors.purpleAccent),
                        decoration: InputDecoration(
                          prefixText: "Bill Amount",
                          prefixStyle: TextStyle(color: Colors.black38),
                          prefixIcon: Icon(Icons.attach_money_outlined),
                        ),
                        onChanged: (String value) {
                          try {
                            billAmount = double.parse(value);
                          } catch (Exception) {
                            billAmount = 0;
                          }
                        },
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Split",
                            style: TextStyle(color: Colors.grey),
                          ),
                          Row(
                            children: [
                              InkWell(
                                onTap: () {
                                  setState(() {
                                    if (personCounter > 1) {
                                      personCounter--;
                                    }
                                  });
                                },
                                child: Container(
                                  width: 40.0,
                                  height: 40.0,
                                  margin: EdgeInsets.all(10.0),
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(7.0),
                                    color:
                                        Colors.purpleAccent.withOpacity(0.25),
                                  ),
                                  child: Center(
                                    child: Text(
                                      "-",
                                      style: TextStyle(
                                        color: Colors.purple,
                                        fontSize: 17,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                              Text(
                                "$personCounter",
                                style: TextStyle(
                                  color: Colors.purpleAccent,
                                  fontSize: 17,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              InkWell(
                                  onTap: () {
                                    setState(() {
                                      personCounter++;
                                    });
                                  },
                                  child: Container(
                                    width: 40.0,
                                    height: 40.0,
                                    margin: EdgeInsets.all(10.0),
                                    decoration: BoxDecoration(
                                      color:
                                          Colors.purpleAccent.withOpacity(0.25),
                                      borderRadius: BorderRadius.circular(7.0),
                                    ),
                                    child: Center(
                                      child: Text(
                                        "+",
                                        style: TextStyle(
                                          color: Colors.purple,
                                          fontSize: 17,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                    ),
                                  ))
                            ],
                          ),
                        ],
                      ),
                      Row(
                        
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Tip",
                            style: TextStyle(color: Colors.grey.shade700),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(24.0),
                            child: Text(
                              "\$34",
                              style: TextStyle(color: Colors.purple,
                              fontSize: 17,
                              fontWeight: FontWeight.bold,
                              ),
                              
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                )
              ],
            )));
  }
}
