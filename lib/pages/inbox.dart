import 'package:flutter/material.dart';

class Inbox extends StatefulWidget {
  @override
  _InboxState createState() => _InboxState();
}

class _InboxState extends State<Inbox> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            title: Text('Inbox')
        ),
        body: Center(
          child: Text('Inbox',style: TextStyle(fontSize: 30.0,color: Colors.blueAccent),),
        )


    );
  }
}
