import 'package:flutter/material.dart';
import 'dart:io' show Platform;
import 'package:flutter/services.dart';

class KitchenFirePage extends StatelessWidget {
  static const platform = MethodChannel('com.example.fire_learning_app/open_url');

  void _launchURL(String url) async {
    if (Platform.isAndroid || Platform.isIOS) {
      try {
        await platform.invokeMethod('openUrl', {'url': url});
      } on PlatformException catch (e) {
        print("Failed to open URL: ${e.message}");
      }
    } else {
      print("Unsupported platform");
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Kitchen Fire'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            Container(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                'Kitchen Fire',
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              ),
            ),
            SizedBox(height: 20),
            Container(
              height: 200,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
              ),
              child: Image.asset(
                'assets/wildfire.jpg',  // Path to your image
                fit: BoxFit.cover,
              ),
            ),
            SizedBox(height: 20),
            Container(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('1. Do not apply water to the fire', style: TextStyle(fontSize: 18)),
                  Text('2. Call 911', style: TextStyle(fontSize: 18)),
                  Text('3. Stay low on the ground', style: TextStyle(fontSize: 18)),
                ],
              ),
            ),
            SizedBox(height: 20),
            GestureDetector(
              onTap: () {
                _launchURL('https://www.fire.ca.gov');
              },
              child: Text(
                'Learn more about Kitchen Fire',
                style: TextStyle(
                  fontSize: 18,
                  color: Colors.blue,
                  decoration: TextDecoration.underline,
                ),
              ),
            ),
            SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                IconButton(
                  icon: Icon(Icons.arrow_back, size: 40),
                  onPressed: () {
                    Navigator.pop(context);
                  },
                ),
                IconButton(
                  icon: Icon(Icons.arrow_forward, size: 40),
                  onPressed: () {
                    Navigator.pushNamed(context, '/kitchenFire');
                  },
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
