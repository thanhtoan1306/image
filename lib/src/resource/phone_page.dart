import 'package:flutter/material.dart';
import 'package:imagefr/src/blocs/login_bloc.dart';

import 'home_page.dart';

class PhonePage extends StatefulWidget {
  @override
  _PhonePageState createState() => _PhonePageState();
}

class _PhonePageState extends State<PhonePage> {
  LoginBloc bloc = new LoginBloc();

  TextEditingController _phoneController = new TextEditingController();
  var _notifi = 'Bạn đã nhập đúng';
  var _unnotifi = '';
  bool _ShowPhone = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //   appBar: new AppBar(),
        body: Container(
          padding: EdgeInsets.fromLTRB(30, 50, 30, 0),
          constraints: BoxConstraints.expand(),
          child: SingleChildScrollView(
            child: Column(
              children: <Widget>[

                Padding(
                  padding: EdgeInsets.fromLTRB(0, 25, 0, 0),
                  child: StreamBuilder(
                    stream: bloc.phoneStream,
                    builder: (context, snapshot) => TextField(
                      controller: _phoneController,
                      style: TextStyle(fontSize: 14.0, color: Colors.grey),
                      decoration: InputDecoration(
                        labelText: 'Số điện thoại',
                        labelStyle: TextStyle(fontSize: 18),
                        errorText: snapshot.hasError ? snapshot.error : null,
                      ),
                    ),
                  ),
                ),
                Stack(
                  alignment: AlignmentDirectional.centerEnd,
                  children: <Widget>[


                   TextField(

                        style: TextStyle(fontSize: 14.0, color: Colors.grey),

                        decoration: InputDecoration(
                            labelText: _ShowPhone?_notifi:_unnotifi,

                            labelStyle: TextStyle(fontSize: 18)),
                      ),


                  ],
                ),

                Padding(
                  padding: EdgeInsets.fromLTRB(0, 15, 0, 0),
                  child: SizedBox(
                    width: 300,
                    height: 50,
                    child: RaisedButton(
                      color: Color(0xff17bcd3),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8)),
                      child: Text(
                        'HIỂN THỊ ',
                        style: TextStyle(color: Colors.white, fontSize: 18),
                      ),
                      onPressed: () {
                        onLoginClick();
                      },
                    ),
                  ),
                )
              ],
            ),
          ),
        ));
  }

  void onLoginClick() {
    if (bloc.isValidPhone(_phoneController.text)) {
      setState(() {
        _ShowPhone = true;
      });

    }else{
      _ShowPhone = false;
    }
  }
}
