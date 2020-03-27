import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class SalesHistory extends StatefulWidget {
  final String what;
  SalesHistory(this.what);
  @override
  _SalesHistoryState createState() => _SalesHistoryState();
}

class _SalesHistoryState extends State<SalesHistory> {
  List titles = [
    '#1 Cùng nhau hái lộc - Giải KK',
    '#2 Thẻ tích điểm - Giải Ba',
    '#3 Thẻ tích điểm - Giải KK',
    '#4 Cùng nhau hái lộc - Giải Nhất',
    '#5 Thẻ tích điểm - Giải KK',
    '#6 Thẻ tích điểm - Giải KK',
    '#7 Cùng nhau hái lộc - Giải KK',
    '#8 Thẻ tích điểm - Giải KK'
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
        title: new Center(


          child: Container(
            padding: (EdgeInsets.fromLTRB(50,0,0,0)
            ),
            child: Stack(

              alignment: Alignment.centerLeft,

              children: <Widget>[

                Text(
                  'Lịch sử đổi quà',
                  style: TextStyle(fontSize: 18.0, color: Colors.white),
                ),

                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: <Widget>[
                    IconButton(
                        icon: Icon(
                          Icons.notifications,
                          color: Colors.white,
                        ),
                        onPressed: null),
                    IconButton(
                        icon: Icon(
                          Icons.settings,
                          color: Colors.white,
                        ),
                        onPressed: null),
                  ],
                )
              ],
            ),
          ),
        ),
      ),
      body: Container(
        child: ListView.builder(
            itemCount: 8,
            shrinkWrap: true,
            itemBuilder: (BuildContext context, int index) => Container(
                  width: MediaQuery.of(context).size.width,
                  padding:
                      EdgeInsets.symmetric(horizontal: 10.0, vertical: 5.0),
                  child: Card(
                    color: Colors.grey[400],
                    elevation: 5.0,
                    shape: RoundedRectangleBorder(

                      borderRadius: BorderRadius.circular(5.0),
                    ),
                    child: Container(
                      width: MediaQuery.of(context).size.width,
                      padding: EdgeInsets.symmetric(
                          horizontal: 10.0, vertical: 10.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Text(
                                titles[index].toString().toUpperCase(),
                                style: TextStyle(
                                  color: Colors.green,
                                  fontSize: 15.0,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              SizedBox(
                                height: 5.0,
                              ),
                              Text(
                                'Đại lý: Phạm Văn Năm',
                                style: TextStyle(
                                    color: Colors.grey,
                                    fontSize: 15.0,
                                    fontWeight: FontWeight.normal),
                              ),
                              SizedBox(
                                height: 3.0,
                              ),
                              Text(
                                'Doanh số đổi quà còn lại: 1.000.000đ',
                                style: TextStyle(
                                    color: Colors.grey,
                                    fontSize: 15.0,
                                    fontWeight: FontWeight.normal),
                              ),
                              SizedBox(
                                height: 3.0,
                              ),
                              Text(
                                '24/02/2020',
                                style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 13.0,
                                    fontWeight: FontWeight.normal),
                              ),
                            ],
                          ),
                          Container(
                              padding: EdgeInsets.symmetric(vertical: 20.0),
                              child: Align(
                                alignment: Alignment.center,
                                child: Container(
                                  padding: EdgeInsets.fromLTRB(10, 5, 10, 5),
                                  decoration: BoxDecoration(
                                    color: Colors.green,
                                    shape: BoxShape.rectangle,
                                    borderRadius: BorderRadius.circular(5),
                                  ),
                                  child: Text(
                                    '950.000đ',
                                    style: TextStyle(
                                      color: Colors.white,
                                    ),
                                  ),
                                ),
                              ))
                        ],
                      ),
                    ),
                  ),
                )),
      ),
    );
  }
}
