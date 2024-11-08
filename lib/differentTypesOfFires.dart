import 'package:flutter/material.dart';

class DifferentTypesOfFiresPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Types of Fires'),
      ),
      body: SingleChildScrollView( // Add a scroll view to allow scrolling if needed
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: GridView.count(
            crossAxisCount: 3,
            crossAxisSpacing: 10,
            mainAxisSpacing: 10,
            shrinkWrap: true,
            physics: NeverScrollableScrollPhysics(),
            children: [
              buildFireButton(context, '/wildFire', Colors.blue, Icons.local_fire_department, 'Wildfire'),
              buildFireButton(context, '/kitchenFire', Colors.orange, Icons.kitchen, 'Kitchen Fire'),
              buildFireButton(context, '/forestFire', Colors.green, Icons.park_sharp, 'Forest Fire'),
              buildFireButton(context, '/campusFire', Colors.yellow, Icons.school_outlined, 'Fire on Campus'),
            ],
          ),
        ),
      ),
    );
  }

  Widget buildFireButton(BuildContext context, String route, Color color, IconData icon, String label) {
    return GestureDetector(
      onTap: () {
        Navigator.pushNamed(context, route);
      },
      child: Container(
        padding: EdgeInsets.all(10),
        decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.circular(10),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(icon, size: 50, color: Colors.white),
            SizedBox(height: 10),
            Expanded( // This ensures the text and icon fit without overflow
              child: Text(
                label,
                style: TextStyle(color: Colors.white, fontSize: 18),
                textAlign: TextAlign.center,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
