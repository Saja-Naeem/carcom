// ignore_for_file: unused_import

import 'package:carcom/Controllers/login_controller.dart';
import 'package:carcom/Controllers/navigation_controller.dart';
import 'package:carcom/shared/constants_home_page.dart';
import 'package:device_preview/device_preview.dart';
// ignore: unnecessary_import
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomePageCarDealer extends StatefulWidget {
  const HomePageCarDealer({super.key});

  @override
  State<HomePageCarDealer> createState() => _HomePageCarDealerState();
}

class _HomePageCarDealerState extends State<HomePageCarDealer> {
  // ignore: unused_field
  final NavigationController _navigationController = NavigationController();
  final LoginController loginController = Get.put(LoginController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
          onTap: (value) {
            print(value);
            switch (value) {
              case 1:
                break;
              case 2:
                break;
              case 3:
                _navigationController.navigateToViewProfile(context);
                break;
              case 4:
                break;
              default:
            }
          },
          selectedItemColor: const Color.fromARGB(255, 232, 234, 237),
          items: [
            BottomNavigationBarItem(
              icon: const Icon(Icons.home),
              label: '',
              backgroundColor: Colors.blue[900],
            ),
            BottomNavigationBarItem(
              icon: const Icon(Icons.calendar_view_month_sharp),
              label: '',
              backgroundColor: Colors.blue[900],
            ),
            BottomNavigationBarItem(
              icon: const Icon(Icons.notifications),
              label: '',
              backgroundColor: Colors.blue[900],
            ),
            BottomNavigationBarItem(
              icon: const Icon(Icons.account_circle_sharp),
              backgroundColor: Colors.blue[900],
              label: '',
            ),
          ]),
      backgroundColor: Colors.blue[900],
      body: SafeArea(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25.0),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Hi, ${loginController.user?.fullName}',
                            style: const TextStyle(
                              color: Colors.white,
                              fontSize: 24,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          const SizedBox(
                            height: 8,
                          ),
                          Text(
                            'Date: ',
                            style: TextStyle(
                              color: Colors.blue[200],
                            ),
                          ),
                        ],
                      ),
                      Container(
                        decoration: BoxDecoration(
                            color: Colors.blue[900],
                            borderRadius: BorderRadius.circular(12)),
                        child: const Icon(
                          Icons.notifications,
                          color: Colors.white,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 205,
                  ),
                  Container(
                    decoration: BoxDecoration(
                      color: Colors.blue[900],
                      borderRadius: BorderRadius.circular(12),
                    ),
                    padding: const EdgeInsets.all(12),
                    child: const Row(
                      children: [
                        Icon(
                          Icons.search,
                          color: Colors.white,
                        ),
                        SizedBox(height: 5),
                        Text(
                          'Search',
                          style: TextStyle(
                            color: Colors.white,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 25,
            ),
            Expanded(
              child: Container(
                padding: const EdgeInsets.all(25),
                color: Colors.grey[200],
                child: Center(
                  child: Column(
                    children: [
                      const Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Dashboard',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 20,
                            ),
                          ),
                          Icon(Icons.more_horiz),
                        ],
                      ),
                      const SizedBox(height: 20),
                      Expanded(
                        child: ListView(
                          children: const [
                            ConstantsDashboardTile(
                              icon: Icon(Icons.car_crash_outlined),
                              tileName: 'My Cars',
                              numberOfItems: 10,
                            ),
                            ConstantsDashboardTile(
                              icon: Icon(Icons.calendar_month_rounded),
                              tileName: 'Reservations',
                              numberOfItems:
                                  10, //here add number of items from data base
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
