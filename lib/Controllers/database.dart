// ignore_for_file: non_constant_identifier_names

import 'package:carcom/Models/admin.dart';
import 'package:carcom/Models/car.dart';
import 'package:carcom/Models/car_dealer.dart';
import 'package:carcom/Models/customer.dart';
import 'package:carcom/Models/user.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class DataBase {
  //This For create only One object of DataBase
  //$Singlton Design Pattern
  static DataBase? _dataBase;
  static DataBase getInstans() {
    _dataBase ??= DataBase();
    return _dataBase!;
  }

  final CollectionReference _Users =
      FirebaseFirestore.instance.collection('user');
  final CollectionReference _Cars =
      FirebaseFirestore.instance.collection('cars');

  Future<bool> createNewUser(User u) async {
    try {
      Map<String, dynamic> json = {};
      if (u is Customer) {
        json = customerToJson(u);
      } else {
        if (u is CarDealer) {
          json = carDealerToJson(u);
        } else {
          json = adminToJson(u as Admin);
        }
      }
      _Users.doc(json["email"]).set(json);
      return true;
    } catch (e) {
      return false;
    }
  }

  Future<bool> checkIfCustomerExist(User u) async {
    var query = await _Users.get();
    var docs = query.docs;
    for (var element in docs) {
      if ((element.data() as Map<String, dynamic>)["email"] == u.email) {
        return true;
      }
    }
    return false;
  }

  Future<bool> userLogin({required String email, required String pass}) async {
    var query = await _Users.doc(email).get();
    var data = query.data();
    if (data != null) {
      if ((data as Map)["password"] == pass) {
        return true;
      }
    }

    return false;
  }

  Future<User?> getUserData(String email) async {
    var query = await _Users.doc(email).get();
    var data = query.data();
    if (data != null) {
      String role = (data as Map)["role"];
      switch (role) {
        case "Admin":
          Admin a = Admin(
            id: data["id"],
            email: data["email"],
            fullName: data["fullName"],
            mobileNumber: data["mobileNumber"],
            image: data["image"],
            password: data["password"],
            age: data["age"],
            civilId: data["civilId"],
          );
          return a;
        case "Customer":
          Customer customer = Customer(
            id: data["id"],
            email: data["email"],
            fullName: data["fullName"],
            mobileNumber: data["mobileNumber"],
            image: data["image"],
            password: data["password"],
            age: data["age"],
            civilId: data["civilId"],
            driverLicence: data["driverLicence"],
            point: data["point"],
          );
          return customer;
        case "CarDealer":
          CarDealer carDealer = CarDealer(
            id: data["id"],
            email: data["email"],
            fullName: data["fullName"],
            mobileNumber: data["mobileNumber"],
            image: data["image"],
            password: data["password"],
            age: data["age"],
            civilId: data["civilId"],
          );
          return carDealer;
      }
    }
    return null;
  }

  Map<String, dynamic> customerToJson(Customer cust) {
    return {
      "role": "Customer",
      "id": cust.id,
      "email": cust.email,
      "fullName": cust.fullName,
      "mobileNumber": cust.mobileNumber,
      "image": cust.image,
      "password": cust.password,
      "age": cust.age,
      "civilId": cust.civilId,
      "driverLicence": cust.driverLicence,
      "point": cust.point,
    };
  }

  Map<String, dynamic> carDealerToJson(CarDealer cust) {
    return {
      "role": "CarDealer",
      "id": cust.id,
      "email": cust.email,
      "fullName": cust.fullName,
      "mobileNumber": cust.mobileNumber,
      "image": cust.image,
      "password": cust.password,
      "age": cust.age,
      "civilId": cust.civilId,
    };
  }

  Map<String, dynamic> adminToJson(Admin cust) {
    return {
      "role": "Admin",
      "id": cust.id,
      "email": cust.email,
      "fullName": cust.fullName,
      "mobileNumber": cust.mobileNumber,
      "image": cust.image,
      "password": cust.password,
      "age": cust.age,
      "civilId": cust.civilId,
    };
  }

  void addNewCar(Car car) {
    _Cars.doc(car.carId).set({
      "carId": car.carId,
      "colour": car.colour,
      // "company": car.company,
      "fuelType": car.fuelType,
      "image": car.image,
      // "insurances": car.insurances,
      "manufactureYear": car.manufactureYear,
      "model": car.model,
      "ownerName": car.ownerName,
      "price": car.price,
      "status": car.status,
      "transmissionType": car.transmissionType,
      "type": car.type,
    });
  }

  Future<List<Car>> getAllCars() async {
    List<Car> cars = [];
    try {
      var q = await _Cars.get();
      var docs = q.docs;
      for (var doc in docs) {
        Map data = doc.data() as Map;
        Car c = Car(
          carId: data["carId"],
          manufactureYear: data["manufactureYear"],
          transmissionType: data["transmissionType"],
          status: data["status"],
          price: data["price"],
          fuelType: data["fuelType"],
          model: data["model"],
          type: data["type"],
          colour: data["colour"],
          image: data["image"],
          ownerName: data["ownerName"],
        );
        cars.add(c);
      }
    } catch (e) {
      print("object : $e");
    }

    return cars;
  }
}
