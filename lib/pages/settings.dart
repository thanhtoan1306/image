import 'package:flutter/material.dart';
import 'package:imagefr/pages/profile.dart';

class Settings extends StatefulWidget {
  @override
  _SettingsState createState() => _SettingsState();
}

class _SettingsState extends State<Settings> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text('Settings')),
        body: Container(
          padding: EdgeInsets.fromLTRB(30, 20, 30, 0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Container(
                  width: double.infinity,
                  height: 120,
                  decoration: BoxDecoration(
                    shape: BoxShape.rectangle,
                    color: Colors.grey[100],
                    borderRadius: BorderRadius.circular(20),
                    boxShadow: const [BoxShadow(blurRadius: 0)],
                  ),
                  child: Padding(
                    padding: EdgeInsets.all(20),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Container(
                          width: 100,
                          height: 100,
                          decoration: BoxDecoration(shape: BoxShape.circle),
                          child: Image.asset('assets/boy.png'),
                        ),
                        Padding(
                            padding: EdgeInsets.fromLTRB(0, 20, 0, 0),
                            child: Text(
                              'Thanh Tâm',
                              style:
                                  TextStyle(fontSize: 18, color: Colors.black),
                            )),
                      ],
                    ),
                  )),
              Padding(
                padding: EdgeInsets.fromLTRB(0, 20, 0, 0),
                child: Container(
                    width: double.infinity,
                    height: 300,
                    decoration: BoxDecoration(
                      shape: BoxShape.rectangle,
                      color: Colors.grey[100],
                      borderRadius: BorderRadius.circular(20),
                      boxShadow: const [BoxShadow(blurRadius: 0)],
                    ),
                    child: Padding(
                      padding: EdgeInsets.all(20),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Padding(
                            padding: EdgeInsets.fromLTRB(0, 0, 0, 15),
                            child: GestureDetector(
                              child: Row(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: <Widget>[
                                  Icon(
                                    Icons.info,
                                    color: Colors.green,
                                  ),
                                  Padding(
                                      padding: EdgeInsets.fromLTRB(15, 0, 0, 0),
                                      child: Text(
                                        'Thông tin cá nhân',
                                        style: TextStyle(
                                            fontSize: 18.0, color: Colors.black),
                                      ))
                                ],
                              ),
                              onTap: () {
                                Navigator.push(context, MaterialPageRoute(
                                  builder: (context) => Profile(),
                                ));
                              },
                            )

                          ),
                          Padding(
                            padding: EdgeInsets.fromLTRB(0, 0, 0, 15),
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                Icon(
                                  Icons.lock,
                                  color: Colors.green,
                                ),
                                Padding(
                                    padding: EdgeInsets.fromLTRB(15, 0, 0, 0),
                                    child: Text(
                                      'Đổi mã pin',
                                      style: TextStyle(
                                          fontSize: 18.0, color: Colors.black),
                                    ))
                              ],
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.fromLTRB(0, 0, 0, 15),
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                Icon(
                                  Icons.notifications,
                                  color: Colors.green,
                                ),
                                Padding(
                                    padding: EdgeInsets.fromLTRB(15, 0, 0, 0),
                                    child: Text(
                                      'Thông báo',
                                      style: TextStyle(
                                          fontSize: 18.0, color: Colors.black),
                                    ))
                              ],
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.fromLTRB(0, 0, 0, 15),
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                Icon(
                                  Icons.stars,
                                  color: Colors.green,
                                ),
                                Padding(
                                    padding: EdgeInsets.fromLTRB(15, 0, 0, 0),
                                    child: Text(
                                      'Đánh giá',
                                      style: TextStyle(
                                          fontSize: 18.0, color: Colors.black),
                                    ))
                              ],
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.fromLTRB(0, 0, 0, 15),
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                Icon(
                                  Icons.cancel,
                                  color: Colors.green,
                                ),
                                Padding(
                                    padding: EdgeInsets.fromLTRB(15, 0, 0, 0),
                                    child: Text(
                                      'Đăng xuất',
                                      style: TextStyle(
                                          fontSize: 18.0, color: Colors.black),
                                    ))
                              ],
                            ),
                          ),
                        ],
                      ),
                    )),
              )
            ],
          ),
        ));
  }
}
