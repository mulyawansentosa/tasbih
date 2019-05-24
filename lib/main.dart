import 'dart:io';

import 'package:flutter/material.dart';

void main() => runApp(Tasbih());

class Tasbih extends StatefulWidget {
  @override
  TasbihState createState() => TasbihState();
}

class TasbihState extends State<Tasbih> {
  int nilai = 0;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        theme: ThemeData(fontFamily: 'digital_7'),
        debugShowCheckedModeBanner: false,
        home: Scaffold(
            resizeToAvoidBottomPadding: false,
            body: Container(
              margin: EdgeInsets.all(20),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20), color: Colors.black),
              child: Column(
                children: <Widget>[
                  Flexible(
                      flex: 2,
                      child: Column(
                        children: <Widget>[
                          Container(
                            margin: EdgeInsets.only(top: 40),
                            child: Column(
                              children: <Widget>[
                                Container(
                                  child: Text('TASBIH APP',
                                      style: TextStyle(
                                          color: Colors.white, fontSize: 30)),
                                ),
                                Container(
                                  margin: EdgeInsets.only(top: 5),
                                    child: Text(
                                  'By FlazHost.Com',
                                  style: TextStyle(color: Colors.white),
                                ))
                              ],
                            ),
                          ),
                        ],
                      )),
                  Flexible(
                    flex: 4,
                    child: Container(
                      margin: EdgeInsets.fromLTRB(30, 0, 30, 20),
                      decoration: BoxDecoration(
                          color: Colors.blueGrey,
                          borderRadius: BorderRadius.circular(30),
                          border: Border.all(
                              width: 8.0, color: const Color(0xFFFFFFFF))),
                      child: Center(
                          child: Text(
                        nilai.toString(),
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 55,
                            fontFamily: 'digital_7'),
                        textAlign: TextAlign.right,
                      )),
                    ),
                  ),
                  Flexible(
                      flex: 6,
                      child: Container(
                          margin: EdgeInsets.fromLTRB(30, 0, 30, 30),
                          decoration: BoxDecoration(
                              border: Border.all(width: 8, color: Colors.white),
                              borderRadius: BorderRadius.circular(40)),
                          child: Column(
                            children: <Widget>[
                              Flexible(
                                flex: 4,
                                child: GestureDetector(
                                  child: Container(
                                    decoration: BoxDecoration(
                                      color: Colors.indigo,
                                      borderRadius: BorderRadius.only(
                                          topLeft: Radius.circular(30),
                                          topRight: Radius.circular(30)),
                                    ),
                                    child: Center(
                                        child: Text(
                                      'TAP',
                                      style: TextStyle(fontSize: 75),
                                    )),
                                  ),
                                  onTap: () {
                                    setState(() {
                                        nilai++;
                                    });
                                  },
                                ),
                              ),
                              Flexible(
                                  flex: 1,
                                  child: Row(
                                    children: <Widget>[
                                      Flexible(
                                        flex: 1,
                                        child: GestureDetector(
                                            child: Container(
                                              decoration: BoxDecoration(
                                                  borderRadius:
                                                      BorderRadius.only(
                                                          bottomLeft:
                                                              Radius.circular(
                                                                  30)),
                                                  color: Colors.yellow),
                                              child: Container(
                                                child: Center(
                                                    child: Text(
                                                  'RESET',
                                                  style:
                                                      TextStyle(fontSize: 25),
                                                )),
                                              ),
                                            ),
                                            onTap: () {
                                              setState(() {
                                                nilai = 0;
                                              });
                                            }),
                                      ),
                                      Flexible(
                                          flex: 1,
                                          child: GestureDetector(
                                              child: Container(
                                                decoration: BoxDecoration(
                                                    borderRadius:
                                                        BorderRadius.only(
                                                            bottomRight:
                                                                Radius.circular(
                                                                    30)),
                                                    color: Colors.red),
                                                child: Center(
                                                    child: Text('EXIT',
                                                        style: TextStyle(
                                                            fontSize: 25))),
                                              ),
                                              onTap: () => exit(0)))
                                    ],
                                  )),
                            ],
                          )))
                ],
              ),
            )));
  }
}
