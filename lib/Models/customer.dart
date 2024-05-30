import 'package:carcom/Models/user.dart';

class Customer extends User {
  String driverLicence;
  int point;

  Customer({
    required int id,
    required String email,
    required String fullName,
    required String mobileNumber,
    required String image,
    required String password,
    required int age,
    required String civilId,
    required this.driverLicence,
    required this.point,
  }) : super(
          id: id,
          email: email,
          fullName: fullName,
          mobileNumber: mobileNumber,
          image: image,
          password: password,
          age: age,
          civilId: civilId,
        );

  void rentCar() {}
  void viewHistory() {}
  void cancel() {}
  void offerCar() {}
}
