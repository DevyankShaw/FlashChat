import 'package:email_validator/email_validator.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

class CredentialsValidation {

  CredentialsValidation({this.email, this.password});

  final String email;
  final String password;

  bool checkValidation() {
    if (email.isEmpty) {
      getToast('Email can\'t be empty');
      return false;
    } else if (password.isEmpty) {
      getToast('Password can\'t be empty');
      return false;
    } else if (password.length < 6) {
      getToast('Password length can\'t be below 6');
      return false;
    } else if (!EmailValidator.validate(email)) {
      getToast('Enter correct email');
    } else {
      return true;
    }
  }

  void getToast(String message) {
    Fluttertoast.showToast(
        msg: message,
        toastLength: Toast.LENGTH_SHORT,
        gravity: ToastGravity.BOTTOM,
        timeInSecForIosWeb: 1,
        backgroundColor: Colors.red,
        textColor: Colors.white,
        fontSize: 16.0);
  }
}
