import 'package:flutter/material.dart';

class CarDealerCarList extends StatefulWidget {
  const CarDealerCarList({super.key});

  @override
  State<CarDealerCarList> createState() => _CarDealerCarListState();
}

class _CarDealerCarListState extends State<CarDealerCarList> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text(
            "My Cars",
            style: TextStyle(
              color: Colors.white,
            ),
          ),
          backgroundColor: Colors.blue.shade900,
        ),
        // ignore: avoid_unnecessary_containers
        body: Container(
          child: ListView.builder(
            scrollDirection: Axis.vertical,
            shrinkWrap: true,
            itemCount: 10,//yara, here we gets from data base 
            itemBuilder: (context, index)
                {
                 return Card(
                  elevation: 8.0,
                  margin: const EdgeInsets.symmetric(horizontal: 10.0, vertical: 6.0,),
                  child: Container(
                    decoration: BoxDecoration(
                      color: Colors.blue[900],
                    ),
                    child: ListTile(
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
                      title: const Text('Car Name', // yara here we add car name from data base
                      style: TextStyle(
                        color: Colors.white, 
                        fontWeight: FontWeight.bold,
                      ),
                      ),
                      subtitle: const Row(
                        children: [
                          Icon(Icons.align_vertical_center_sharp, color:Colors.white),
                          Text('Car Model and availability', style: //yara get these information from data base
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