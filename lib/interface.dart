import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:qr_flutter/qr_flutter.dart';

void main() => runApp(MyAppMarket());

class MyAppMarket extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "App name here",
      home: AppMarket(),
    );
  }
}

class AppMarket extends StatefulWidget {
  @override
  _MyAppMarketState createState() => _MyAppMarketState();
}

class _MyAppMarketState extends State<AppMarket> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
        title: new Center(
          child: Stack(
            alignment: Alignment.center,
            children: <Widget>[
              Text(
                'Trang chủ',
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 18.0, color: Colors.white),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: <Widget>[
                  IconButton(
                      icon: Icon(Icons.notifications),
                      onPressed: () {
                        //todo
                      }),
                  IconButton(
                      icon: Icon(Icons.settings),
                      onPressed: () {
                        //todo
                      })
                ],
              ),
            ],
          ),
        ),
      ),
      body: Container(
        color: Colors.white,
        child: Center(
          child: Column(
            children: <Widget>[
              Row(
                children: <Widget>[
                  Expanded(
                    child: Row(),
                  ),
                  Container(
                    height: 150,
                    width: 150,
                    child: Image.asset('assets/logo.jpg'),
                  ),
                  Expanded(
                    child: Row(),
                  )
                ],
              ),
              Padding(
                padding: EdgeInsets.fromLTRB(15, 0, 15, 0),
                child: Container(
                  decoration: BoxDecoration(
                    shape: BoxShape.rectangle,
                    color: Colors.white,
                    boxShadow: const [BoxShadow(blurRadius: 5)],
                    borderRadius: BorderRadius.circular(5),
                    border: Border.all(color: Colors.white, width: 0),
                  ),
                  padding: EdgeInsets.fromLTRB(40, 15, 40, 15),
                  height: 150,
                  child: Row(
                    children: <Widget>[
                      QrImage(
                        data: 'Sts',
                        size: 120,
                      ),
                      Padding(
                        padding: EdgeInsets.fromLTRB(4, 0, 4, 0),
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Container(
                            child: Text(
                              'Mr Nguyễn Văn An',
                              style: TextStyle(
                                  color: Colors.green,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 18),
                            ),
                            padding: EdgeInsets.fromLTRB(0, 5, 0, 5),
                          ),
                          Text('Doanh số: 1200đ',
                              style: TextStyle(color: Colors.grey)),
                          Padding(
                            padding: EdgeInsets.fromLTRB(0, 0, 0, 5),
                          ),
                          Text('Mã hội viên: 01001',
                              style: TextStyle(color: Colors.grey)),
                          Padding(
                            padding: EdgeInsets.fromLTRB(0, 10, 0, 0),
                          ),
                          Container(
                            width: 130,
                            height: 30,
                            decoration: BoxDecoration(
                              shape: BoxShape.rectangle,
                              color: Colors.green,
                              borderRadius: BorderRadius.circular(19),
                            ),
                            child: FlatButton(
                              child: Text(
                                " Xem thông tin",
                                style: TextStyle(color: Colors.white),
                              ),
                              padding: EdgeInsets.fromLTRB(5, 5, 5, 5),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.fromLTRB(15, 40, 15, 0),
                child: Row(
                  children: <Widget>[
                    Container(
                        decoration: BoxDecoration(
                          shape: BoxShape.rectangle,
                          color: Colors.green,
                          borderRadius: BorderRadius.circular(5),
                          border: Border.all(color: Colors.white, width: 0),
                        ),
                        height: 110,
                        width: 170,
                        child: Row(
                          children: <Widget>[
                            Container(
                              height: 100,
                              width: 80,
                              child: FlatButton(
                                  child: Image.asset('assets/qrcode.png')),
                            ),
                            Text(
                              'Tra cứu',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 18),
                            )
                          ],
                        )),
                    Expanded(
                      child: Row(),
                    ),
                    Container(
                        decoration: BoxDecoration(
                          shape: BoxShape.rectangle,
                          color: Colors.green,
                          borderRadius: BorderRadius.circular(5),
                          border: Border.all(color: Colors.white, width: 0),
                        ),
                        height: 110,
                        width: 170,
                        child: Row(
                          children: <Widget>[
                            Container(
                              height: 100,
                              width: 80,
                              child: FlatButton(
                                  child: Image.asset('assets/news.png')),
                            ),
                            Text(
                              'Tin tức',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 18),
                            )
                          ],
                        )),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.fromLTRB(15, 20, 15, 0),
                child: Row(
                  children: <Widget>[
                    Container(
                        decoration: BoxDecoration(
                          shape: BoxShape.rectangle,
                          color: Colors.green,
                          borderRadius: BorderRadius.circular(5),
                          border: Border.all(color: Colors.white, width: 0),
                        ),
                        height: 110,
                        width: 170,
                        child: Row(
                          children: <Widget>[
                            Container(
                              height: 100,
                              width: 80,
                              child: FlatButton(
                                  child: Image.asset('assets/gift.png')),
                            ),
                            Text(
                              'Đổi quà',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 18),
                            )
                          ],
                        )),
                    Expanded(
                      child: Row(),
                    ),
                    Container(
                        decoration: BoxDecoration(
                          shape: BoxShape.rectangle,
                          color: Colors.green,
                          borderRadius: BorderRadius.circular(5),
                          border: Border.all(color: Colors.white, width: 0),
                        ),
                        height: 110,
                        width: 170,
                        child: Row(
                          children: <Widget>[
                            Container(
                              height: 100,
                              width: 80,
                              child: FlatButton(
                                  child: Image.asset('assets/billchecked.png')),
                            ),
                            Expanded(
                              child:  Text(
                                'Lịch sử bán hàng ',
                                style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 18),
                              ),
                            ),

                          ],
                        )),
                  ],
                ),
              ),
              Expanded(
                child: Column(),
              ),
              Text(
                'Phiên bản 0.0.1',
                style: TextStyle(color: Colors.grey),
              ),
              Padding(
                padding: (EdgeInsets.fromLTRB(0, 0, 0, 10)),
              )
            ],
          ),
        ),
      ),
    );
  }
}
