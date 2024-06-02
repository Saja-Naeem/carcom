import 'package:flutter/material.dart';

class AddCarCardealer extends StatelessWidget {
  const AddCarCardealer({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue[900],
        title: const Text('Add Car',
        style: TextStyle(
          color: Colors.white,
          fontWeight: FontWeight.bold,
        ),
        ),
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.symmetric(horizontal: 20),
            height: MediaQuery.of(context).size.height - 30,
            width: double.infinity,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[
                Column(
                children: [
               const SizedBox(
                      height: 20,
                    ),
                    Text(
                      "Add a car",
                      style: TextStyle(fontSize: 15, color: Colors.grey[700]),
                    )
              ],
            ),
             Column(
                  children: [
                 TextField(
                        decoration: InputDecoration(
                          hintText: "Car Name",
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(18),
                              borderSide: BorderSide.none),
                          fillColor: Colors.grey.withOpacity(0.1),
                          filled: true,
                          prefixIcon: const Icon(Icons.car_repair_rounded),
                        ),
                      ),
                      const SizedBox(height: 5),

                      TextField(
                        decoration: InputDecoration(
                          hintText: "Model",
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(18),
                              borderSide: BorderSide.none),
                          fillColor: Colors.grey.withOpacity(0.1),
                          filled: true,
                          prefixIcon: const Icon(Icons.mode_of_travel_outlined),
                        ),
                      ),
                      const SizedBox(height: 5),

                      TextField(
                        decoration: InputDecoration(
                          hintText: "Manufacture Year",
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(18),
                              borderSide: BorderSide.none),
                          fillColor: Colors.grey.withOpacity(0.1),
                          filled: true,
                          prefixIcon: const Icon(Icons.precision_manufacturing),
                        ),
                      ),
                      const SizedBox(height: 5),

                      TextField(
                        decoration: InputDecoration(
                          hintText: "Tranmission Type (Automatic or Manual)",
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(18),
                              borderSide: BorderSide.none),
                          fillColor: Colors.grey.withOpacity(0.1),
                          filled: true,
                          prefixIcon: const Icon(Icons.transform_outlined),
                        ),
                      ),
                      const SizedBox(height: 5),

                      TextField(
                        decoration: InputDecoration(
                          hintText: "Color",
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(18),
                              borderSide: BorderSide.none),
                          fillColor: Colors.grey.withOpacity(0.1),
                          filled: true,
                          prefixIcon: const Icon(Icons.color_lens),
                        ),
                      ),
                      const SizedBox(height: 5),

                      TextField(
                        decoration: InputDecoration(
                          hintText: "Fuel Type",
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(18),
                              borderSide: BorderSide.none),
                          fillColor: Colors.grey.withOpacity(0.1),
                          filled: true,
                          prefixIcon: const Icon(Icons.local_gas_station),
                        ),
                      ),
                      const SizedBox(height: 5),

                      TextField(
                        decoration: InputDecoration(
                          hintText: "Car Images",
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(18),
                              borderSide: BorderSide.none),
                          fillColor: Colors.grey.withOpacity(0.1),
                          filled: true,
                          prefixIcon: const Icon(Icons.image),
                        ),
                      ),
                      const SizedBox(height: 5),
                ],
              
              ),
              Container(
                    padding: const EdgeInsets.only(top: 3, left: 3),
                    child: ElevatedButton(
                      onPressed: () { },
                      style: ElevatedButton.styleFrom(
                        shape: const StadiumBorder(),
                        padding: const EdgeInsets.symmetric(vertical: 10),
                        backgroundColor: Colors.blue.shade900,
                        foregroundColor: Colors.white,
                      ),
                      child: const Text(
                        "Add Car",
                        style: TextStyle(fontSize: 16),
                      ),
                    ),
                    ),
              ],
            
        ),
        
      ),
    ),
    );
}
}