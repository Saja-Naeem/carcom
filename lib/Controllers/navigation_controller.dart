import 'package:carcom/Views/choose_account.dart';
import 'package:carcom/Views/login.dart';
import 'package:carcom/Views/signup_car_dealer.dart';
import 'package:carcom/Views/signup_customer.dart';
import 'package:flutter/material.dart';

class NavigationController {
  // Function to handle navigation to the ChooseAccount page
  void navigateToChooseAccount(BuildContext context) {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => const ChooseAccount()),
    );
  }

  // Function to handle navigation to the Login page
  void navigateToLogin(BuildContext context) {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => const Login()),
    );
  }

  void navigateToCarDealerSignUp(BuildContext context) {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => const SignupCardealer()),
    );
  }

  void navigateToCustomerSignUp(BuildContext context) {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => const SignupCustomer()),
    );
  }







}
