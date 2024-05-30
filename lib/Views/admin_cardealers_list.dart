import 'package:flutter/material.dart';

class AdminCarDealersList extends StatefulWidget {
  const AdminCarDealersList({super.key});

  @override
  State<AdminCarDealersList> createState() => _AdminCarDealersListState();
}

class _AdminCarDealersListState extends State<AdminCarDealersList> {
<<<<<<< HEAD

  @override
  Widget build(BuildContext context) {


=======
  @override
  Widget build(BuildContext context) {
>>>>>>> 72fd89ad85e902256e6c22e44c88e45f93c9ed0c
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text(
            "Car Dealers",
            style: TextStyle(
              color: Colors.white,
            ),
          ),
          backgroundColor: Colors.blue.shade900,
        ),
        // ignore: avoid_unnecessary_containers
        body: Container(
          child: ListView.builder(
<<<<<<< HEAD
            scrollDirection: Axis.vertical,
            shrinkWrap: true,
            itemCount: 10,//yara, here we gets from data base 
            itemBuilder: (context, index)
                {
                 return Card(
                  elevation: 8.0,
                  margin: const EdgeInsets.symmetric(horizontal: 10.0, vertical: 6.0,),
=======
              scrollDirection: Axis.vertical,
              shrinkWrap: true,
              itemCount: 10, //yara, here we gets from data base
              itemBuilder: (context, index) {
                return Card(
                  elevation: 8.0,
                  margin: const EdgeInsets.symmetric(
                    horizontal: 10.0,
                    vertical: 6.0,
                  ),
>>>>>>> 72fd89ad85e902256e6c22e44c88e45f93c9ed0c
                  child: Container(
                    decoration: BoxDecoration(
                      color: Colors.blue[900],
                    ),
                    child: ListTile(
<<<<<<< HEAD
                      contentPadding:  const EdgeInsets.only(right:12.0),
                      leading: Container(
                        padding: const EdgeInsets.only(right: 12.0),
                        decoration: const BoxDecoration(

                         border: Border(
                          right: BorderSide(width:1.0, 
                          color: Colors.white24
                          ),
                         ),
                        ),
                        child: const Icon(Icons.person),// here will be the photo of the car dealer instead of icon  
                      ),
                      title: const Text('Car Dealer naem', // yara here we add car dealer name from data base
                      style: TextStyle(
                        color: Colors.white, 
                        fontWeight: FontWeight.bold,
                      ),
                      ),
                      subtitle: const Row(
                        children: [
                          Icon(Icons.business, color:Colors.white),
                          Text('Company name', style: 
                          TextStyle(
                            color: Colors.white,
                          ),
                          ),
                        ],
                      ),
                      trailing: const Icon(Icons.keyboard_arrow_right, color: Colors.white),
                    ),
                  ),
                 );
                }
          ),
        ),
      ),
  );
  }
}
=======
                      contentPadding: const EdgeInsets.only(right: 12.0),
                      leading: Container(
                        padding: const EdgeInsets.only(right: 12.0),
                        decoration: const BoxDecoration(
                          border: Border(
                            right:
                                BorderSide(width: 1.0, color: Colors.white24),
                          ),
                        ),
                        child: const Icon(Icons
                            .person), // here will be the photo of the car dealer instead of icon
                      ),
                      title: const Text(
                        'Car Dealer naem', // yara here we add car dealer name from data base
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      subtitle: const Row(
                        children: [
                          Icon(Icons.business, color: Colors.white),
                          Text(
                            'Company name',
                            style: TextStyle(
                              color: Colors.white,
                            ),
                          ),
                        ],
                      ),
                      trailing: const Icon(Icons.keyboard_arrow_right,
                          color: Colors.white),
                    ),
                  ),
                );
              }),
        ),
      ),
    );
  }
}
>>>>>>> 72fd89ad85e902256e6c22e44c88e45f93c9ed0c
