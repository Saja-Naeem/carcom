// ignore_for_file: sized_box_for_whitespace

import 'package:carcom/Controllers/navigation_controller.dart';
import 'package:flutter/material.dart';

class HomepageCustomer extends StatefulWidget {
  const HomepageCustomer({super.key});

  @override
  State<HomepageCustomer> createState() => _HomePageCustomerState();
}

class _HomePageCustomerState extends State<HomepageCustomer> {
  final NavigationController _navigationController = NavigationController();
  int _selectedIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
    _navigationController.navigateByIndex(context, index);
  }

  List brands = [
    {
      "iconname": Icons.car_rental,
      "title": "BMW",
    },
    {
      "iconname": Icons.car_rental,
      "title": "Toyota",
    },
    {
      "iconname": Icons.car_rental,
      "title": "Mercedes",
    },
    {
      "iconname": Icons.car_rental,
      "title": "Tesla",
    },
    {
      "iconname": Icons.car_rental,
      "title": "BMW",
    },
    {
      "iconname": Icons.car_rental,
      "title": "BMW",
    },
  ];

  List popularCar = [
    {
      //"image": Icons.car_rental,
      "title": "CarName",
      "subtitle": "description",
      "price": "350\$ "
    },
    {
      //"image": Icons.car_rental,
      "title": "CarName",
      "subtitle": "description",
      "price": "350\$ "
    },
    {
      //"image": Icons.car_rental,
      "title": "CarName",
      "subtitle": "description ",
      "price": "350\$ "
    },
    {
      //"image": Icons.car_rental,
      "title": "CarName",
      "subtitle": "description ",
      "price": "350\$ "
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        /*
bottomNavigationBar: BottomNavigationBar(items:[
BottomNavigationBarItem(icon: Icon(Icons.home),label:"*"),
BottomNavigationBarItem(icon: Icon(Icons.explore),label:"*"),
BottomNavigationBarItem(icon: Icon(Icons.favorite),label:"*"),
BottomNavigationBarItem(icon: Icon(Icons.person),label:"*"),
]),

*/
        appBar: AppBar(
          elevation: 0,
          leading: IconButton(
            icon: const Icon(Icons.notifications),
            onPressed: () {},
          ),
          backgroundColor: Colors.blue.shade900,
        ),
        bottomNavigationBar: BottomNavigationBar(
          iconSize: 35,
          selectedItemColor: const Color.fromARGB(255, 232, 234, 237),
          items: [
            BottomNavigationBarItem(
                icon: const Icon(Icons.home_outlined),
                backgroundColor: Colors.blue[900],
                label: "*"),
            BottomNavigationBarItem(
                icon: const Icon(Icons.explore_outlined),
                backgroundColor: Colors.blue[900],
                label: "*"),
            BottomNavigationBarItem(
                icon: const Icon(Icons.favorite_outlined),
                backgroundColor: Colors.blue[900],
                label: "*"),
            BottomNavigationBarItem(
                icon: const Icon(Icons.person_outlined),
                backgroundColor: Colors.blue[900],
                label: "*"),
          ],
          currentIndex: _selectedIndex,
          onTap: _onItemTapped,
        ),
        body: ListView(
          children: [
            Column(
              children: <Widget>[
                Container(
                    height: (MediaQuery.of(context).size).height * 0.2,
                    child: Stack(children: <Widget>[
                      Container(
                          padding: const EdgeInsets.only(
                            left: 20.4,
                            right: 20.4,
                            bottom: 36 + 20.4,
                          ),
                          height:
                              (MediaQuery.of(context).size).height * 0.2 - 27,
                          decoration: BoxDecoration(
                            color: Colors.blue[900],
                            borderRadius: const BorderRadius.only(
                              bottomLeft: Radius.circular(34),
                              bottomRight: Radius.circular(36),
                            ),
                          ),
                          child: const Row(
                            children: <Widget>[
                              Text(
                                'HI !',
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 30,
                                    color: Colors.white),
                              )
                            ],
                          )),
                      Positioned(
                        bottom: 0,
                        left: 0,
                        right: 0,
                        child: Container(
                          alignment: Alignment.center,
                          margin: const EdgeInsets.symmetric(
                            horizontal: 20.4,
                          ),
                          padding: const EdgeInsets.symmetric(
                            horizontal: 20.4,
                          ),
                          height: 54,
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(20),
                              boxShadow: [
                                BoxShadow(
                                  offset: const Offset(0, 10),
                                  blurRadius: 50,
                                  color: Colors.blue.withOpacity(0.2),
                                )
                              ]),
                          child: Row(
                            children: <Widget>[
                              Expanded(
                                child: TextField(
                                  onChanged: (value) {},
                                  decoration: const InputDecoration(
                                    hintText: "Search",
                                    enabledBorder: InputBorder.none,
                                    focusedBorder: InputBorder.none,
                                    icon: Icon(Icons.search),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ])),
                Container(
                  height: 30,
                ),
                const Padding(
                    padding: EdgeInsets.only(left: 20.0 / 4),
                    child: Row(children: [
                      Text(
                        "Brands",
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 25),
                      ),
                    ])),
                Container(
                  height: 20,
                ),
                Container(
                    height: 100,
                    child: ListView.builder(
                        itemCount: brands.length,
                        scrollDirection: Axis.horizontal,
                        itemBuilder: (context, i) {
                          return Container(
                            margin: const EdgeInsets.only(right: 10),
                            child: Column(
                              children: [
                                Container(
                                  decoration: BoxDecoration(
                                      color: Colors.grey[200],
                                      borderRadius: BorderRadius.circular(100)),
                                  padding: const EdgeInsets.all(15),
                                  child: Icon(brands[i]["iconname"], size: 40),
                                ),
                                Text(
                                  brands[i]["title"],
                                  style: const TextStyle(
                                      fontWeight: FontWeight.bold),
                                ),
                              ],
                            ),
                          );
                        }))
              ],
            ),
            Container(
              height: 20,
            ),
            const Padding(
                padding: EdgeInsets.only(left: 20.0 / 4),
                child: Row(children: [
                  Text(
                    "Popular Cars",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
                  ),
                ])),
            GridView.builder(
                itemCount: popularCar.length,
                physics: const NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2, mainAxisExtent: 230),
                itemBuilder: (context, i) {
                  return Card(
                      child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        padding: const EdgeInsets.all(20),
                        width: 300,
                        color: Colors.grey[200],
                      ),
                      Text(popularCar[i]["title"],
                          style: const TextStyle(
                              fontSize: 14, fontWeight: FontWeight.bold)),
                      Container(
                        height: 2,
                      ),
                      Text(
                        popularCar[i]["subtitle"],
                        style: TextStyle(fontSize: 14, color: Colors.blue[900]),
                      ),
                      Container(
                        height: 6,
                      ),
                      Text(
                        popularCar[i]["price"],
                        style: TextStyle(
                            fontSize: 14,
                            color: Colors.blue[900],
                            fontWeight: FontWeight.bold),
                      )
                    ],
                  ));
                })
          ],
        ));
  }
}
