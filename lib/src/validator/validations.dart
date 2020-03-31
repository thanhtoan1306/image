class Validations{

  static bool isValidPhone(String phone) {

    return phone != null && phone.length == 10 && phone.contains('0928033451');
  }
  static bool isValidUser(String user) {
    return user != null && user.length > 6 && user.contains("@");
  }
  static bool isValidPass(String pass) {
    return pass != null && pass.length > 6;
  }
}