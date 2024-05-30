// ignore_for_file: unused_import

<<<<<<< HEAD
import 'package:carcom/shared/constatns_home_page.dart';
=======
import 'package:carcom/Controllers/navigation_controller.dart';
import 'package:carcom/shared/constants_home_page.dart';
>>>>>>> 72fd89ad85e902256e6c22e44c88e45f93c9ed0c
import 'package:device_preview/device_preview.dart';
// ignore: unnecessary_import
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomePageAdmin extends StatefulWidget {
  const HomePageAdmin({super.key});

  @override
  State<HomePageAdmin> createState() => _HomePageAdminState();
}

class _HomePageAdminState extends State<HomePageAdmin> {
<<<<<<< HEAD
  @override
  Widget build(BuildContext context) {
    return Scaffold(
    bottomNavigationBar: BottomNavigationBar(
    items:const [
     BottomNavigationBarItem(icon: Icon(Icons.home), label:''),
     BottomNavigationBarItem(icon: Icon(Icons.calendar_view_month_sharp), label:''),
     BottomNavigationBarItem(icon: Icon(Icons.notifications), label:''),
     BottomNavigationBarItem(icon: Icon(Icons.account_circle_sharp), label:''),

    ]
      ),
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
                   children:[
                    Column(
                     crossAxisAlignment: CrossAxisAlignment.start,
                     children: [
                     const Text('Hi, ' , style: TextStyle(
                        color: Colors.white, 
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                       ),
                      ),
                    const SizedBox(
                     height: 8,
                     ),
                     Text('Date: ' , style: TextStyle(
                     color: Colors.blue[200],
                     ),
                     ),
                     ],
                    ),
                      
                    Container(
                    decoration: BoxDecoration(
                      color:Colors.blue[900],
                      borderRadius: BorderRadius.circular(12)),
                      child: const Icon(
                        Icons.notifications,
                        color: Colors.white, 
                        ),
                    ),
                ],
                        ),
                        
                        const SizedBox(height: 205,),
                      
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
                      
                      Text('Search',
                      style: TextStyle(
                      color:Colors.white,
                      ) ,
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
                child:  Column(
                  children: [
                    const  Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text('Dashboard', 
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
                              icon: Icons.car_crash_outlined,
                              tileName: 'My Cars',
                              numberOfItems: 10,
                            ),
                            ConstantsDashboardTile(
                              icon: Icons.calendar_month_rounded,
                              tileName: 'Reservations',
                              numberOfItems: 10,//here add number of items from data base
                            ),                    
                        ],
                       ),
                     ),                 
                  ],
                ),
              )
            )
          )
      ],
      ),
    ),
=======
    final NavigationController _navigationController = NavigationController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(items: const [
        BottomNavigationBarItem(icon: Icon(Icons.home), label: ''),
        BottomNavigationBarItem(
            icon: Icon(Icons.calendar_view_month_sharp), label: ''),
        BottomNavigationBarItem(icon: Icon(Icons.notifications), label: ''),
        BottomNavigationBarItem(
            icon: Icon(Icons.account_circle_sharp), label: ''),
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
                          const Text(
                            'Hi, ',
                            style: TextStyle(
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
                                  icon: Icons.car_crash_outlined,
                                  tileName: 'My Cars',
                                  numberOfItems: 10,
                                ),
                                ConstantsDashboardTile(
                                  icon: Icons.calendar_month_rounded,
                                  tileName: 'Reservations',
                                  numberOfItems:
                                      10, //here add number of items from data base
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    )))
          ],
        ),
      ),
>>>>>>> 72fd89ad85e902256e6c22e44c88e45f93c9ed0c
    );
  }
}
