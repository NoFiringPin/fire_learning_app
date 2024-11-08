import 'package:flutter/material.dart';

class MainPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Fire Safety App'),
      ),
      body: Column(
        children: [
          // Adjust the logo size and padding
          Padding(
            padding: const EdgeInsets.only(top: 60.0),
            child: Center(
              child: Image.asset(
                'assets/housefire.jpg',  // Path to your logo
                width: 220,         // Adjust width for a better fit
                height: 220,        // Adjust height for a better fit
              ),
            ),
          ),
          SizedBox(height: 10), // Adjust the spacing between logo and buttons

          // Center the buttons
          Expanded(
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ElevatedButton(
                    onPressed: () {
                      Navigator.pushNamed(context, '/tips');
                    },
                    child: Text('Tips on how to survive fires'),
                    style: ElevatedButton.styleFrom(
                      padding: EdgeInsets.symmetric(horizontal: 30, vertical: 15), // Adjust button size
                    ),
                  ),
                  SizedBox(height: 20), // Adds spacing between buttons
                  ElevatedButton(
                    onPressed: () {
                      Navigator.pushNamed(context, '/emergency');
                    },
                    child: Text('Emergency Numbers'),
                    style: ElevatedButton.styleFrom(
                      padding: EdgeInsets.symmetric(horizontal: 30, vertical: 15),
                    ),
                  ),
                  SizedBox(height: 20), // Adds spacing between buttons
                  ElevatedButton(
                    onPressed: () {
                      Navigator.pushNamed(context, '/fireTypes');
                    },
                    child: Text('Different Types of Fires'),
                    style: ElevatedButton.styleFrom(
                      padding: EdgeInsets.symmetric(horizontal: 30, vertical: 15),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
