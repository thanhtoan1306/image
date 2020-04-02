import 'package:flutter/material.dart';

class WidgetDesgin extends StatefulWidget {
  String imgUrl;
  String imgName;
  WidgetDesgin({this.imgUrl, this.imgName});
  @override
  _WidgetDesginState createState() => _WidgetDesginState();
}

class _WidgetDesginState extends State<WidgetDesgin> {
  @override
  Widget build(BuildContext context) {
    return Container(
        width: 150,
        height: 170,
        child: Column(
          children: <Widget>[
            Stack(
              alignment: Alignment.center,
              children: <Widget>[
                Container(
                  height: 130,
                  width: 130,
                  decoration: BoxDecoration(
                      shape: BoxShape.circle, color: Colors.grey[300]),
                ),
                Container(
                    height: 100,
                    width: 100,
                    decoration: BoxDecoration(
                        shape: BoxShape.circle, color: Colors.green)),
                Container(
                    child: Image.asset(widget.imgUrl),
                    height: 50,
                    width: 50,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                    )),
                Positioned(
                  left: 85,
                  top: 75,
                  child: Container(
                      child: Image.asset('assets/king.png'),
                      height: 45,
                      width: 45,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                      )),
                )
              ],
            ),
            Padding(
              padding: EdgeInsets.fromLTRB(0, 10, 0, 0),
              child: Text(
                widget.imgName,
                style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.grey),
              ),
            )
          ],
        ));
  }
}

class Chat extends StatefulWidget {
  @override
  _ChatState createState() => _ChatState();
}

class _ChatState extends State<Chat> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text('Chat')),
        body: Container(
          padding: EdgeInsets.fromLTRB(40, 30, 40, 0),
          constraints: BoxConstraints.expand(),
          child: ListView(
            children: <Widget>[
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  WidgetDesgin(
                    imgName: 'Travel',
                    imgUrl: 'assets/planes.png',
                  ),
                  WidgetDesgin(
                    imgName: 'V: Past 2',
                    imgUrl: 'assets/marathon.png',
                  ),

                ],
              ),

              Padding(padding: EdgeInsets.fromLTRB(0, 10, 0, 10),),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  WidgetDesgin(
                    imgName: 'Countries',
                    imgUrl: 'assets/flag.png',
                  ),
                  WidgetDesgin(
                    imgName: 'Shapes',
                    imgUrl: 'assets/moutain.png',
                  ),

                ],
              ),
              Padding(padding: EdgeInsets.fromLTRB(0, 10, 0, 10),),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  WidgetDesgin(
                    imgName: 'Education',
                    imgUrl: 'assets/education.png',
                  ),
                  WidgetDesgin(
                    imgName: 'V: Past 3',
                    imgUrl: 'assets/marathon1.png',
                  ),

                ],
              ),
              Padding(padding: EdgeInsets.fromLTRB(0, 10, 0, 10),),
              Center(
                child: WidgetDesgin(
                  imgName: 'Settings',
                  imgUrl: 'assets/setting.png',
                ),
              ),
              Padding(padding: EdgeInsets.fromLTRB(0, 50, 0,0 ),),

            ],
          ),
        ));
  }
}
