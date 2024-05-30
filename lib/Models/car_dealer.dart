import 'package:carcom/Models/user.dart';

class CarDealer extends User {
  CarDealer({
    required int id,
    required String email,
    required String fullName,
    required String mobileNumber,
    required String image,
    required String password,
    required int age,
    required String civilId,
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

  void addCar() {}
  void deleteCar() {}
  void modifyCar() {}
  void showCarList() {}
}
