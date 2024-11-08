// main.dart
import 'package:flutter/material.dart';
import 'splashscreen.dart';
import 'mainpage.dart';
import 'differentTypesOfFires.dart';
import 'EmergencyNumbersPage.dart';
import 'tipsOnHowToSurviveFires.dart';
import 'differentFires/wildfire.dart';
import 'differentFires/kitchenfire.dart';
import 'differentFires/campusfire.dart';
// import 'differentFires/forestfire.dart';  // Import the fire type pages

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/', // Set the initial route
      routes: {
        '/': (context) => SplashScreen(), // Splash screen is the initial route
        '/home': (context) => MainPage(), // Main page is the next route after splash
        '/tips': (context) => FireSurvivalTips(), // Fire survival tips
        '/emergency': (context) => EmergencyNumbersPage(), // Emergency numbers
        '/fireTypes': (context) => DifferentTypesOfFiresPage(), // Different types of fires

        // Add the fire type routes here
        '/wildFire': (context) => WildfirePage(),
        '/kitchenFire': (context) => KitchenFirePage(),
        '/campusFire':(context) => CampusFirePage(),
        // '/forestFire': (context) => ForestFirePage(),
      },
    );
  }
}
