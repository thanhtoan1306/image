import 'dart:async';

import 'package:imagefr/src/validator/validations.dart';

class LoginBloc{

  StreamController _userController = new StreamController();
  StreamController _passController = new StreamController();
  StreamController _numberPhoneController = new StreamController();

  Stream get userStream => _userController.stream;
  Stream get passStream => _passController.stream;
  Stream get phoneStream => _numberPhoneController.stream;

  bool isValidPhone(String phone) {
    if(!Validations.isValidPhone(phone)) {
      _numberPhoneController.sink.addError('Sai rồi');
      return false;
    }
    _numberPhoneController.sink.add("OK");
    return true;
  }

  bool isValidInfo(String username, String password) {

    if(!Validations.isValidUser(username) ) {
      _userController.sink.addError("Email không hợp lệ");
      return false;
    }
    _userController.sink.add("OK");
    if(!Validations.isValidPass(password) ) {
      _passController.sink.addError("Password không hợp lệ");
      return false;
    }


    _passController.sink.add("OK");
    return true;

  }

  void dispose (){

    _userController.close();
    _passController.close();
    _numberPhoneController.close();
  }

}