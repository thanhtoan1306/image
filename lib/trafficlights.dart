import 'dart:async';

import 'package:flutter/material.dart';

void main() => runApp(MyTrafficApp());

class MyTrafficApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "App name here",
      home: TrafficPage(),
    );
  }
}

class TrafficPage extends StatefulWidget {
  @override
  _TrafficPageState createState() => _TrafficPageState();
}

class _TrafficPageState extends State<TrafficPage> {
  Color colordefault = Colors.blueGrey;
  Color color1 = Colors.blueGrey;
  Color color2 = Colors.blueGrey;
  Color color3 = Colors.blueGrey;

  bool _oncolor1 = true;
  bool _oncolor2 = false;
  bool _oncolor3 = false;
  int _timer = 60;
  int trangthai = 0;

  void autoTraffic() {
    Timer.periodic(Duration(seconds: 1), (timer) {
      if (trangthai == 0) {
        setState(() {
          color1 = Colors.red;
          color2 = colordefault;
          color3 = colordefault;
          _timer--;
          print("${_timer}");
          if (_timer == 0) {
            setState(() {
              trangthai = 1;
              color1 = colordefault;
              color2 = Colors.green;
              color3 = colordefault;
              _timer = 45;
            });
          }
          ;
        });
      } else if (trangthai == 1) {
        setState(() {
          color1 = colordefault;
          color2 = Colors.green;
          color3 = colordefault;
          _timer--;
          print("${_timer}");
          if (_timer == 0) {
            setState(() {
              trangthai = 2;
              color1 = colordefault;
              color2 = colordefault;
              color3 = Colors.yellow;
              _timer = 7;
            });
          }
          ;
        });
      } else if (trangthai == 2) {
        setState(() {
          color1 = colordefault;
          color2 = colordefault;
          color3 = Colors.yellow;
          _timer--;
          print("${_timer}");
          if (_timer == 0) {
            setState(() {
              trangthai = 0;
              color1 = Colors.red;
              color2 = colordefault;
              color3 = colordefault;
              _timer = 60;
            });
          }
          ;
        });
      }
    });
  }

  void setTraffic() {
    setState(() {
      if (_oncolor1 == true) {
        color1 = Colors.red;
        color3 = colordefault;

        _oncolor1 = false;
        _oncolor2 = true;
        _oncolor3 = false;
      } else if (_oncolor2 == true) {
        color2 = Colors.green;
        color1 = colordefault;

        _oncolor1 = false;
        _oncolor2 = false;
        _oncolor3 = true;
      } else {
        color3 = Colors.yellow;
        color2 = colordefault;
        _oncolor1 = true;
        _oncolor2 = false;
        _oncolor3 = false;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'TrafficLights',
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: Stack(
        children: <Widget>[
          Positioned(
              left: 100,
              top: 125,
              child: Column(
                children: <Widget>[
                  Text(
                    '${_timer}',
                    style:
                        TextStyle(fontWeight: FontWeight.w700, fontSize: 50.0),
                  ),
                  Container(
                    width: 140,
                    height: 350,
                    decoration: BoxDecoration(
                      shape: BoxShape.rectangle,
                      color: Colors.black,
                    ),
                    child: Center(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Padding(
                            padding: EdgeInsets.fromLTRB(0, 30, 0, 30),
                            child: Container(
                              width: 70,
                              height: 70,
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                color: color1,
                              ),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.fromLTRB(0, 10, 0, 10),
                            child: Container(
                              width: 70,
                              height: 70,
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                color: color2,
                              ),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.fromLTRB(0, 30, 0, 30),
                            child: Container(
                              width: 70,
                              height: 70,
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                color: color3,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Row(
                    children: <Widget>[
                      RaisedButton(
                        onPressed: () {
                          setTraffic();
                        },
                        child: Text('Change'),
                      ),
                      Padding(
                        padding: EdgeInsets.fromLTRB(0, 0, 20, 0),
                      ),
                      RaisedButton(
                        onPressed: () {
                          autoTraffic();
                        },
                        child: Text('Auto'),
                      )
                    ],
                  ),
                ],
              ))
        ],
      ),
    );
  }
}
