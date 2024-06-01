import 'package:carcom/Views/choose_account.dart';
// ignore: unused_import
import 'package:carcom/Views/homepage_admin.dart';
import 'package:carcom/Views/homepage_cardealer.dart';
import 'package:carcom/Views/homepage_customer.dart';
import 'package:carcom/Views/login.dart';
import 'package:carcom/Views/signup_car_dealer.dart';
import 'package:carcom/Views/signup_customer.dart';
import 'package:carcom/Views/Profile/view_profile.dart';
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

  void navigateToHomePageCustomer(BuildContext context) {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => const HomepageCustomer()),
    );
  }

  void navigateToHomePageCarDealer(BuildContext context) {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => const HomePageCarDealer()),
    );
  }

  void navigateToViewProfile(BuildContext context) {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => const ViewProfile()),
    );
  }

// Function to handle navigation based on the index
  void navigateByIndex(BuildContext context, int index) {
    switch (index) {
      case 0:
        navigateToHomePageCustomer(context);
        break;
      case 1:
        break;
      case 2:
        break;
      case 3:
        navigateToViewProfile(context);
        break;
    }
  }
}
