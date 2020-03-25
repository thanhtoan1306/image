
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';



void main() => runApp(MyAppList());

class MyAppList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "App name here",
      home: ListView(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class abc extends StatefulWidget {
  @override
  _abcState createState() => _abcState();
}

class _abcState extends State<abc> {
  @override
  Widget build(BuildContext context) {
    return Container();
  }
}



class HomeMyPage extends StatefulWidget {
  @override
  _HomeMyPageState createState() => _HomeMyPageState();
}

class _HomeMyPageState extends State<HomeMyPage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: ListView.builder(itemBuilder: null),
    );
  }
}
