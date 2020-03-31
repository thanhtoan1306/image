import 'package:flutter/material.dart';
import 'package:imagefr/pages/add_page.dart';
import 'package:imagefr/pages/home.dart';
import 'package:imagefr/src/resource/login_page.dart';
import 'package:imagefr/src/resource/phone_page.dart';
import 'package:imagefr/src/resource/sign_in_facebook.dart';
import 'package:imagefr/src/resource/sign_in_google.dart';

class Login extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Home(),
    );
  }
}
