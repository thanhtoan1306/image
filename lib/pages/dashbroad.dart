import 'package:flutter/material.dart';


class WidgePlanet extends StatefulWidget {
  String imgUrl;
  WidgePlanet({this.imgUrl});
  @override
  _WidgePlanetState createState() => _WidgePlanetState();
}

class _WidgePlanetState extends State<WidgePlanet> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 150,
      width: 350,
      child: Stack(
        children: <Widget>[
          Container(),

          Positioned(
              left: 50,
              child:  Container(

                height: 140,
                width: 310,
                decoration: BoxDecoration(
                    color: Color(0xff363667),
                    shape: BoxShape.rectangle,
                    borderRadius: BorderRadius.circular(10)
                ),
                child: Padding(padding: EdgeInsets.fromLTRB(70, 20, 0, 20)
                  ,child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[

                      Text('Earth',style: TextStyle(color: Color(0xfff8f8fe),fontSize: 20,fontWeight: FontWeight.bold),),
                      Text('Minkyway Galaxy',style: TextStyle(color: Color(0xfff8f8fe),fontSize: 16),),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Row(
                            children: <Widget>[
                              Icon(Icons.location_on,color: Color(0xff504e7c),),
                              Padding(padding: EdgeInsets.fromLTRB(0, 0, 10, 0),
                                child: Text('3.711m/s',style: TextStyle(color: Color(0xffc0c0f5),fontSize: 16),),)
                            ],
                          ),
                          Row(
                            children: <Widget>[
                              Icon(Icons.vertical_align_bottom,color: Color(0xff504e7c),),
                              Padding(padding: EdgeInsets.fromLTRB(0, 0, 10, 0),
                                child: Text('3.711m/s',style: TextStyle(color: Color(0xffc0c0f5),fontSize: 16),),)
                            ],
                          )
                        ],

                      )
                    ],
                  ),),
              )),
          Positioned(
              top: 20,

              child: Container(
                child: Image.asset(widget.imgUrl),
                height: 100,
                width: 100,
              )),
        ],
      ),
    );
  }
}


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
          color: Color(0xff6e6bb4),
          child: ListView(
            children: <Widget>[

              Padding(padding: EdgeInsets.fromLTRB(10 ,30,10,0),
              child:  WidgePlanet(
                imgUrl: 'assets/starplune.png',
              ), ),
              Padding(padding: EdgeInsets.fromLTRB(10 ,30,10,0),
                child:  WidgePlanet(
                  imgUrl: 'assets/venus.png',
                ), ),
              Padding(padding: EdgeInsets.fromLTRB(10 ,30,10,0),
                child:  WidgePlanet(
                  imgUrl: 'assets/earth.png',
                ), ),
              Padding(padding: EdgeInsets.fromLTRB(10 ,30,10,0),
                child:  WidgePlanet(
                  imgUrl: 'assets/sunstart.png',
                ), ),



            ],
          ),
        ));
  }
}
