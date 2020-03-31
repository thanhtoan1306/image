import 'package:flutter/material.dart';

class SentMail extends StatefulWidget {
  @override
  _SentMailState createState() => _SentMailState();
}

class _SentMailState extends State<SentMail> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            title: Text('Sent Mail')
        ),
        body: Center(
          child: Text('Sent Mail',style: TextStyle(fontSize: 30.0,color: Colors.blueAccent),),
        )


    );
  }
}
