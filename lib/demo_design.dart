import 'package:flutter/material.dart';
void main()=>runApp(MyAppDesign());

class MyAppDesign extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "App name here",
      home: AppDesign(),
    );
  }
}
class AppDesign extends StatefulWidget {
  @override
  _AppDesignState createState() => _AppDesignState();
}

class _AppDesignState extends State<AppDesign> {
  @override
  Widget build(BuildContext context) {


    return Scaffold(
      appBar: AppBar(
        title: Text('Aligment'),
      ),
      body: Container(
        child: Column(
          children: <Widget>[
            Row(
              children: <Widget>[
                Container(

                  width: 70,
                  height: 70,
                  decoration: BoxDecoration(
                      shape: BoxShape.rectangle,
                      color: Colors.red
                  ),
                ),
                Expanded(
                  child: Container(),
                ),
                Container(

                  width: 70,
                  height: 70,
                  decoration: BoxDecoration(
                      shape: BoxShape.rectangle,
                      color: Colors.yellow
                  ),
                )

              ],
            ),
            Expanded(
              child: Column(),
            ),

            Container(
              padding: EdgeInsets.all(30),
              width: 160,
              height: 160,
              decoration: BoxDecoration(
                  shape: BoxShape.rectangle,
                  color: Colors.black
              ),
              child: Container(

                
                decoration: BoxDecoration(
                
                  shape: BoxShape.circle,
                  color: Colors.white,
                ),
              ),
            ),

            Expanded(
              child: Column(),
            ),

            Row(
              children: <Widget>[
                Container(

                  width: 70,
                  height: 70,
                  decoration: BoxDecoration(
                      shape: BoxShape.rectangle,
                      color: Colors.blue
                  ),
                ),

                Expanded(
                  child: Container(),
                ),
                Container(

                  width: 70,
                  height: 70,
                  decoration: BoxDecoration(
                      shape: BoxShape.rectangle,
                      color: Colors.green
                  ),
                )

              ],
            ),
          ],
        ),
      ),


    );
  }
}
