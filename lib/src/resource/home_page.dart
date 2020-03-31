import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';


class MainScreen extends StatefulWidget {
  @override
  _MainScreenState createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {

  String uid="";
  getUid() {}
  @override
  void initState() {
    this.uid = "";
    FirebaseAuth.instance.currentUser().then((val) {
      setState(() {
        this.uid = val.uid;
      });
    });
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Welcome"),
      ),
      body: Center(
        child: Text("Welcome to HomePage \n $uid"),
      ),
    );
  }
}

