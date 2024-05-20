import 'package:flutter/material.dart';
import 'package:get/get_state_manager/src/simple/get_controllers.dart';

class SignUpCarDealerController extends GetxController {
  TextEditingController username = TextEditingController();
  TextEditingController email = TextEditingController();
  TextEditingController registrationNo = TextEditingController();
  TextEditingController password = TextEditingController();
  TextEditingController confirmPassword = TextEditingController();
  TextEditingController phoneNumber = TextEditingController();

  void saveCredentials() {
    String username = this.username.text;
    String email = this.email.text;
    String registrationNo = this.registrationNo.text;
    String password = this.password.text;
    String confirmPassword = this.confirmPassword.text;
    String phoneNumber = this.phoneNumber.text;

    print('UserName: $username'); //for test code
    print('Email: $email'); //for test code
    print('registrationNo: $registrationNo'); //for test code
    print('Password: $password'); //for test code
    print('confirmPassword: $confirmPassword'); //for test code
    print('phoneNumber: $phoneNumber'); //for test code
  }
}
