import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Main Screen'),
        ),
        body: Container(
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: <Widget>[
                Text(
                  'Image',
                  style: TextStyle(
                      fontSize: 20.0,
                      fontWeight: FontWeight.bold,
                      color: Colors.lightBlue),
                ),
                FlatButton(
                  onPressed: () {
                    showDialog(
                        context: context,
                        builder: (_) => new AlertDialog(
                              title: new Text("Dialog Title"),
                              content: new Text("This is my content"),
                            ));
                  },
                  child: Text('Selected'),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
