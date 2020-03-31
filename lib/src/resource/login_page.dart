import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:imagefr/src/blocs/login_bloc.dart';
import 'package:flutter_facebook_login/flutter_facebook_login.dart';

import 'home_page.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  //Login with Phone



  //Login with Google
  var _message = 'Bạn chưa đăng nhập';
  final GoogleSignIn _googleSignIn = GoogleSignIn();
  final FirebaseAuth _auth = FirebaseAuth.instance;

//Login with Facebook
  /* bool _isLoggedIn = false;
  final _facebooklogin = FacebookLogin();

  Future _loginWithFacebook() async {

    _facebooklogin.loginBehavior = FacebookLoginBehavior.nativeOnly;
    final result = await _facebooklogin.logIn(['email']);

    if (result.status == FacebookLoginStatus.loggedIn) {
      final credential = FacebookAuthProvider.getCredential(
        accessToken: result.accessToken.token,
      );

      final user = (await _auth.signInWithCredential(credential)).user;
      setState(() {
        _message = "Đăng nhập với ${user.displayName}";
        _isLoggedIn = true;
      });
    }
  }

  //LogOut Facebook
  Future _logOutFacebook() async {
    print('Ban da dang xuat');
    await _auth.signOut();
    await _facebooklogin.logOut();

    setState(() {
      _message ='Bạn đã đăng xuất';
      _isLoggedIn = false;
    });
  }

  //Login Google
  Future<FirebaseUser> _handleSignIn() async {
    final GoogleSignInAccount googleUser = await _googleSignIn.signIn();
    final GoogleSignInAuthentication googleAuth =
        await googleUser.authentication;
    final AuthCredential credential = GoogleAuthProvider.getCredential(
        idToken: googleAuth.idToken, accessToken: googleAuth.accessToken);

    final FirebaseUser user =
        (await _auth.signInWithCredential(credential)).user;

    print('signed in' + user.displayName);
    setState(() {
      _message = 'Bạn đã đăng nhập với google';
    });


    return user;
  }

  //Logout
  Future _handleSignOut() async {
    await _auth.signOut();
    await _googleSignIn.signOut();
    setState(() {
      _message = 'Bạn đã đăng xuất';
    });
  }

  Future _checkLogin() async {
    final FirebaseUser user = await _auth.currentUser();
    if (user != null) {
      setState(() {
        _message = ' Bạn đang đăng nhập';
        _isLoggedIn = true;
      });
    }
  }
*/
  Future<String> inputDialog(BuildContext context) async {
    String egPhone = '';
    return showDialog(
        context: context,
        barrierDismissible: false,
        builder: (BuildContext context) {
          return AlertDialog(
            title: Text('Nhập số điên thoại'),
            content: Row(
              children: <Widget>[
                Expanded(
                  child: TextField(
                    autofocus: true,
                    decoration: InputDecoration(
                        labelText: 'NumberPhone', hintText: '+84979536507'),
                    onChanged: (value) {
                      egPhone = value;
                    },
                  ),
                )
              ],
            ),
            actions: <Widget>[
              FlatButton(
                  onPressed: () {
                    //
                    Navigator.of(context).pop(egPhone);
                  },
                  child: Text('Submit')),
            ],
          );
        });
  }

  LoginBloc bloc = new LoginBloc();
  bool _showPass = false;
  TextEditingController _userController = new TextEditingController();
  TextEditingController _passController = new TextEditingController();
  TextEditingController _smsCodeController = new TextEditingController();

  @override
  void initState() {
    // _checkLogin();
    super.initState();
  }

  Widget build(BuildContext context) {
    return Scaffold(
        //   appBar: new AppBar(),
        body: Container(
      padding: EdgeInsets.fromLTRB(30, 50, 30, 0),
      constraints: BoxConstraints.expand(),
      child: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Container(
              height: 90,
              width: 90,
              child: Image.asset('assets/icon.png'),
            ),
            Text(
              'Umbili',
              style: TextStyle(
                  color: Colors.grey,
                  fontSize: 28.0,
                  fontWeight: FontWeight.bold),
            ),
            Padding(
              padding: EdgeInsets.fromLTRB(0, 25, 0, 25),
              child: Text(
                'Manage preschool,kids and parents at one place',
                style: TextStyle(color: Colors.grey, fontSize: 12.0),
              ),
            ),
            SizedBox(
              width: 300,
              height: 50,
              child: RaisedButton(
                color: Color(0xff4a669e),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8)),
                child: Text(
                  'LOGIN WITH FACEBOOK',
                  style: TextStyle(color: Colors.white, fontSize: 18),
                ),
                onPressed: () {
                  //  _loginWithFacebook();
                },
              ),
            ),
            Padding(
              padding: EdgeInsets.fromLTRB(0, 25, 0, 25),
              child: SizedBox(
                width: 300,
                height: 50,
                child: RaisedButton(
                  color: Color(0xffdc4b3f),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8)),
                  child: Text(
                    'LOGIN WITH GOOGLE',
                    style: TextStyle(color: Colors.white, fontSize: 18),
                  ),
                  onPressed: () {
                    //   _handleSignIn();
                  },
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.fromLTRB(0, 0, 0, 25),
              child: SizedBox(
                width: 300,
                height: 50,
                child: RaisedButton(
                  color: Color(0xff3ddc84),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8)),
                  child: Text(
                    'LOGIN WITH PHONE',
                    style: TextStyle(color: Colors.white, fontSize: 18),
                  ),
                  onPressed: () {
                    inputDialog(context);
                  },
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.fromLTRB(0, 25, 0, 0),
              child: StreamBuilder(
                stream: bloc.userStream,
                builder: (context, snapshot) => TextField(
                  controller: _userController,
                  style: TextStyle(fontSize: 14.0, color: Colors.grey),
                  decoration: InputDecoration(
                    labelText: 'Email',
                    labelStyle: TextStyle(fontSize: 18),
                    errorText: snapshot.hasError ? snapshot.error : null,
                  ),
                ),
              ),
            ),
            Stack(
              alignment: AlignmentDirectional.centerEnd,
              children: <Widget>[
                StreamBuilder(
                  stream: bloc.passStream,
                  builder: (context, snapshot) => TextField(
                    controller: _passController,
                    style: TextStyle(fontSize: 14.0, color: Colors.grey),
                    obscureText: _showPass,
                    decoration: InputDecoration(
                        labelText: 'Password',
                        errorText: snapshot.hasError ? snapshot.error : null,
                        labelStyle: TextStyle(fontSize: 18)),
                  ),
                ),
                IconButton(
                    icon: Icon(
                      _showPass ? Icons.remove_red_eye : Icons.remove,
                      color: Colors.grey,
                    ),
                    onPressed: () {
                      setState(() {
                        _showPass = !_showPass;
                      });
                    })
              ],
            ),
            Container(
              constraints: BoxConstraints.loose(Size(double.infinity, 30)),
              alignment: AlignmentDirectional.centerEnd,
              child: Padding(
                  padding: EdgeInsets.fromLTRB(20, 0, 0, 0),
                  child: Text(
                    'Forgot password?',
                    style: TextStyle(color: Colors.grey),
                  )),
            ),
            Padding(
              padding: EdgeInsets.fromLTRB(0, 15, 0, 20),
              child: SizedBox(
                width: 300,
                height: 50,
                child: RaisedButton(
                  color: Color(0xff17bcd3),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8)),
                  child: Text(
                    'LOGIN ',
                    style: TextStyle(color: Colors.white, fontSize: 18),
                  ),
                  onPressed: () {
                    onLoginClick();
                  },
                ),
              ),
            ),
            Text(
              _message,
              style: TextStyle(color: Colors.grey),
            ),
            Padding(
              padding: EdgeInsets.fromLTRB(0, 15, 0, 20),
              child: SizedBox(
                width: 300,
                height: 50,
                child: RaisedButton(
                  color: Color(0xff17bcd3),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8)),
                  child: Text(
                    'LogOut ',
                    style: TextStyle(color: Colors.white, fontSize: 18),
                  ),
                  onPressed: () {
                    // _logOutFacebook();
                  },
                ),
              ),
            ),
          ],
        ),
      ),
    ));
  }

  void onLoginClick() {
    if (bloc.isValidInfo(_userController.text, _passController.text)) {
      Navigator.push(
          context, MaterialPageRoute(builder: (context) => MainScreen()));
    }
  }
}
