// differentTypesOfFires.dart
import 'package:flutter/material.dart';

class DifferentTypesOfFiresPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Types of Fires'),
      ),
      body: GridView.count(
        crossAxisCount: 3, // Display 2 buttons per row
        padding: const EdgeInsets.all(20),
        crossAxisSpacing: 10,
        mainAxisSpacing: 10,
        children: [
          // Wildfire button
          GestureDetector(
            onTap: () {
              Navigator.pushNamed(context, '/wildfire');
            },
            child: Container(
              padding: EdgeInsets.all(10),
              decoration: BoxDecoration(
                color: Colors.blue,
                borderRadius: BorderRadius.circular(10),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(Icons.local_fire_department, size: 50, color: Colors.white),
                  SizedBox(height: 10),
                  Text('Wildfire', style: TextStyle(color: Colors.white, fontSize: 18)),
                ],
              ),
            ),
          ),
          // Kitchen Fire button
          GestureDetector(
            onTap: () {
              Navigator.pushNamed(context, '/kitchenFire');
            },
            child: Container(
              padding: EdgeInsets.all(10),
              decoration: BoxDecoration(
                color: Colors.orange,
                borderRadius: BorderRadius.circular(10),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(Icons.kitchen, size: 50, color: Colors.white),
                  SizedBox(height: 10),
                  Text('Kitchen Fire', style: TextStyle(color: Colors.white, fontSize: 18)),
                ],
              ),
            ),
          ),
          // Forest Fire button
          GestureDetector(
            onTap: () {
              Navigator.pushNamed(context, '/forestFire');
            },
            child: Container(
              padding: EdgeInsets.all(10),
              decoration: BoxDecoration(
                color: Colors.green,
                borderRadius: BorderRadius.circular(10),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(Icons.park_sharp, size: 50, color: Colors.white),
                  SizedBox(height: 10),
                  Text('Forest Fire', style: TextStyle(color: Colors.white, fontSize: 18)),
                ],
              ),
            ),
          ),
          GestureDetector(
            onTap: () {
              Navigator.pushNamed(context, '/campusFire');
            },
            child: Container(
              padding: EdgeInsets.all(10),
              decoration: BoxDecoration(
                color: Colors.yellow,
                borderRadius: BorderRadius.circular(10),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(Icons.school_outlined, size: 50, color: Colors.white),
                  SizedBox(height: 10),
                  Text('Fire on Campus', style: TextStyle(color: Colors.white, fontSize: 18)),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
