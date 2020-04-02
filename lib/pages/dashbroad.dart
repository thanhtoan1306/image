import 'package:flutter/material.dart';

class DashBroad extends StatefulWidget {
  @override
  _DashBroadState createState() => _DashBroadState();
}

class _DashBroadState extends State<DashBroad> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text('DashBroad')),
        body: Container(
          color: Colors.white,
          padding: EdgeInsets.fromLTRB(20, 20, 20, 30),
          constraints: BoxConstraints.expand(),
          child: Column(
            children: <Widget>[
              Text(
                'Join a Norwegian Club!',
                style: TextStyle(
                    fontSize: 25,
                    color: Colors.grey,
                    fontWeight: FontWeight.bold),
              ),
              Padding(
                padding: EdgeInsets.fromLTRB(0, 10, 0, 10),
                child: Text(
                  'Practice chatting in Norwegian with orther learners',
                  style: TextStyle(
                    fontSize: 18,
                    color: Colors.grey[400],
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
              Padding(
                padding: EdgeInsets.fromLTRB(0, 0, 0, 20),
                child: Container(
                  color: Colors.white,
                  child: Image.asset('assets/group.png'),
                  height: 300,
                  width: double.infinity,
                ),
              ),
              Padding(
                padding: EdgeInsets.fromLTRB(0, 0, 0, 20),
                child: Container(
                    height: 50,
                    width: double.infinity,
                    decoration: BoxDecoration(
                        shape: BoxShape.rectangle,
                        borderRadius: BorderRadius.circular(30),
                        color: Colors.lightBlueAccent),
                    child: Center(
                      child: Text(
                        'FIND ME A CLUB',
                        style: TextStyle(
                            fontSize: 20,
                            color: Colors.white,
                            fontWeight: FontWeight.bold),
                        textAlign: TextAlign.center,
                      ),
                    )),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Container(
                      height: 50,
                      width: 170,
                      decoration: BoxDecoration(
                        shape: BoxShape.rectangle,
                        borderRadius: BorderRadius.circular(30),
                        border:
                        Border.all(color: Colors.lightBlueAccent, width: 2.0),
                      ),
                      child: Center(
                        child: Text(
                          'CREATE',
                          style: TextStyle(
                              fontSize: 20,
                              color: Colors.lightBlueAccent,
                              fontWeight: FontWeight.bold),
                          textAlign: TextAlign.center,
                        ),
                      )),
                  Container(
                      height: 50,
                      width: 170,
                      decoration: BoxDecoration(
                        shape: BoxShape.rectangle,
                        borderRadius: BorderRadius.circular(30),
                        border:
                        Border.all(color: Colors.lightBlueAccent, width: 2.0),
                      ),
                      child: Center(
                        child: Text(
                          'CLUB CODE',
                          style: TextStyle(
                              fontSize: 20,
                              color: Colors.lightBlueAccent,
                              fontWeight: FontWeight.bold),
                          textAlign: TextAlign.center,
                        ),
                      )),
                ],
              )

            ],
          ),
        ));
  }
}
