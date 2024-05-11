import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LoginController extends GetxController {
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  void saveCredentials() {
    String email = emailController.text;
    String password = passwordController.text;



    
    print('Email: $email'); //for test code work
    print('Password: $password'); //for test code work
  }
}
