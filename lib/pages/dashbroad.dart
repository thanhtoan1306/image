import 'package:flutter/material.dart';

class DashBroad extends StatefulWidget {
  @override
  _DashBroadState createState() => _DashBroadState();
}

class _DashBroadState extends State<DashBroad> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Text('DashBroad')

      ),
      body: Center(
        child: Text('DashBroad',style: TextStyle(fontSize: 30.0,color: Colors.blueAccent),),
      )

    );
  }
}
