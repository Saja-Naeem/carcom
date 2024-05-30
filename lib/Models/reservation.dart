import 'package:carcom/Models/car.dart';
import 'package:carcom/Models/customer.dart';

class Reservation {
  DateTime pickupDate;
  DateTime returnDate;
  String state;
  String pickupLocation;
  String returnLocation;
  int reservationId;
  DateTime reservationDate;
  double initialMileage;
  double finalMileage;
  String contract;
  Customer customer;
  Car car;

  Reservation({
    required this.pickupDate,
    required this.returnDate,
    required this.state,
    required this.pickupLocation,
    required this.returnLocation,
    required this.reservationId,
    required this.reservationDate,
    required this.initialMileage,
    required this.finalMileage,
    required this.contract,
    required this.customer,
    required this.car,
  });

  void cancelReservation() {}
  void calculateTotalCost() {}
  void checkAvailability() {}
  void getReservationDuration() {}
  void updateReservationDetails() {}
  void sendNotification() {}
  void getReservationDetails() {}
  void addPoint() {}
}
