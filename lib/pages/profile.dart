import 'package:flutter/material.dart';

class Profile extends StatefulWidget {
  @override
  _ProfileState createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text('Profile')),
        body: Container(
          padding: EdgeInsets.fromLTRB(30, 20, 30, 0),
          constraints: BoxConstraints.expand(),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Container(
                    width: double.infinity,
                    height: 120,
                    decoration: BoxDecoration(
                      shape: BoxShape.rectangle,
                      color: Colors.green,
                      borderRadius: BorderRadius.circular(15),
                      boxShadow: const [BoxShadow(blurRadius: 0)],
                    ),
                    child: Padding(
                      padding: EdgeInsets.all(20),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Text('Họ tên',
                              style:
                                  TextStyle(color: Colors.white, fontSize: 15)),
                          Text('Minh Tâm',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold)),
                          Text('Tổng doanh số: 3,082,000 đ',
                              style:
                                  TextStyle(color: Colors.white, fontSize: 15)),
                          Text('Doanh số đổi quà còn lại: 782,000 đ',
                              style:
                                  TextStyle(color: Colors.white, fontSize: 15)),
                        ],
                      ),
                    )),



                Padding(padding: EdgeInsets.fromLTRB(0, 10, 0, 10)),


                Padding(padding: EdgeInsets.fromLTRB(0, 0, 0, 20),
                    child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Padding(
                      padding: EdgeInsets.fromLTRB(0, 0, 0, 10),
                      child: Text('Mã QR:',
                          style: TextStyle(
                              color: Colors.green,
                              fontSize: 15,
                              fontWeight: FontWeight.bold)),
                    ),
                    Container(
                      height: 40,
                      width: double.infinity,
                      decoration: BoxDecoration(
                          shape: BoxShape.rectangle,
                          borderRadius: BorderRadius.circular(20),
                          color: Colors.grey[200]),
                      child: Row(
                        children: <Widget>[
                          Padding(
                            padding: EdgeInsets.fromLTRB(15, 0, 15, 0),
                            child: Icon(
                              Icons.code,
                              color: Colors.green,
                            ),
                          ),
                          Text(
                            'FC0987123456',
                            style: TextStyle(
                                color: Colors.green,
                                fontSize: 16,
                                fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                    ),

                  ],
                ),

          ),


                Padding(padding: EdgeInsets.fromLTRB(0, 0, 0, 20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Padding(
                        padding: EdgeInsets.fromLTRB(0, 0, 0, 10),
                        child: Text('Mã số thẻ:',
                            style: TextStyle(
                                color: Colors.green,
                                fontSize: 15,
                                fontWeight: FontWeight.bold)),
                      ),
                      Container(
                        height: 40,
                        width: double.infinity,
                        decoration: BoxDecoration(
                            shape: BoxShape.rectangle,
                            borderRadius: BorderRadius.circular(20),
                            color: Colors.grey[200]),
                        child: Row(
                          children: <Widget>[
                            Padding(
                              padding: EdgeInsets.fromLTRB(15, 0, 15, 0),
                              child: Icon(
                                Icons.credit_card,
                                color: Colors.green,
                              ),
                            ),
                            Text(
                              '0987123456',
                              style: TextStyle(
                                  color: Colors.green,
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold),
                            ),
                          ],
                        ),
                      ),

                    ],
                  ),

                ),

                Padding(padding: EdgeInsets.fromLTRB(0, 0, 0, 20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Padding(
                        padding: EdgeInsets.fromLTRB(0, 0, 0, 10),
                        child: Text('Số CMND:',
                            style: TextStyle(
                                color: Colors.green,
                                fontSize: 15,
                                fontWeight: FontWeight.bold)),
                      ),
                      Container(
                        height: 40,
                        width: double.infinity,
                        decoration: BoxDecoration(
                            shape: BoxShape.rectangle,
                            borderRadius: BorderRadius.circular(20),
                            color: Colors.grey[200]),
                        child: Row(
                          children: <Widget>[
                            Padding(
                              padding: EdgeInsets.fromLTRB(15, 0, 15, 0),
                              child: Icon(
                                Icons.perm_contact_calendar,
                                color: Colors.green,
                              ),
                            ),
                            Text(
                              '0987123456',
                              style: TextStyle(
                                  color: Colors.green,
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold),
                            ),
                          ],
                        ),
                      ),

                    ],
                  ),

                ),

                Padding(padding: EdgeInsets.fromLTRB(0, 0, 0, 20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Padding(
                        padding: EdgeInsets.fromLTRB(0, 0, 0, 10),
                        child: Text('Nơi cấp:',
                            style: TextStyle(
                                color: Colors.green,
                                fontSize: 15,
                                fontWeight: FontWeight.bold)),
                      ),
                      Container(
                        height: 40,
                        width: double.infinity,
                        decoration: BoxDecoration(
                            shape: BoxShape.rectangle,
                            borderRadius: BorderRadius.circular(20),
                            color: Colors.grey[200]),
                        child: Row(
                          children: <Widget>[
                            Padding(
                              padding: EdgeInsets.fromLTRB(15, 0, 15, 0),
                              child: Icon(
                                Icons.location_on,
                                color: Colors.green,
                              ),
                            ),
                            Text(
                              'TP HCM',
                              style: TextStyle(
                                  color: Colors.green,
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold),
                            ),
                          ],
                        ),
                      ),

                    ],
                  ),

                ),

                Padding(padding: EdgeInsets.fromLTRB(0, 0, 0, 20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Padding(
                        padding: EdgeInsets.fromLTRB(0, 0, 0, 10),
                        child: Text('Ngày cấp:',
                            style: TextStyle(
                                color: Colors.green,
                                fontSize: 15,
                                fontWeight: FontWeight.bold)),
                      ),
                      Container(
                        height: 40,
                        width: double.infinity,
                        decoration: BoxDecoration(
                            shape: BoxShape.rectangle,
                            borderRadius: BorderRadius.circular(20),
                            color: Colors.grey[200]),
                        child: Row(
                          children: <Widget>[
                            Padding(
                              padding: EdgeInsets.fromLTRB(15, 0, 15, 0),
                              child: Icon(
                                Icons.calendar_today,
                                color: Colors.green,
                              ),
                            ),
                            Text(
                              '10/10/1980',
                              style: TextStyle(
                                  color: Colors.green,
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold),
                            ),
                          ],
                        ),
                      ),

                    ],
                  ),

                ),

                Padding(padding: EdgeInsets.fromLTRB(0, 0, 0, 20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Padding(
                        padding: EdgeInsets.fromLTRB(0, 0, 0, 10),
                        child: Text('Địa chỉ:',
                            style: TextStyle(
                                color: Colors.green,
                                fontSize: 15,
                                fontWeight: FontWeight.bold)),
                      ),
                      Container(
                        height: 40,
                        width: double.infinity,
                        decoration: BoxDecoration(
                            shape: BoxShape.rectangle,
                            borderRadius: BorderRadius.circular(20),
                            color: Colors.grey[200]),
                        child: Row(
                          children: <Widget>[
                            Padding(
                              padding: EdgeInsets.fromLTRB(15, 0, 15, 0),
                              child: Icon(
                                Icons.home,
                                color: Colors.green,
                              ),
                            ),
                            Expanded(child:Text(
                              '87/5,Nguyễn Thị Nê, xã Phú Hòa Đông, huyện Củ Chi, TPHCM',
                              style: TextStyle(
                                  color: Colors.green,
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold),
                            ),),

                          ],
                        ),
                      ),

                    ],
                  ),

                ),
              ],
            ),
          ),
        ));
  }
}
