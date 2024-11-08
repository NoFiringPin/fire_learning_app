// tips_on_how_to_survive_fires_page.dart
import 'package:flutter/material.dart';

class FireSurvivalTips extends StatelessWidget {
  final List<String> tips = [
    'Seek Shelter',
    'Find medical supplies',
    'Stay low to avoid smoke',
    'Have an evacuation plan',
    'Use a fire extinguisher if safe to do so'
    // Add more tips as needed
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Tips on How to Survive Fires'),
      ),
      body: ListView.builder(
        itemCount: tips.length,
        itemBuilder: (context, index) {
          return ListTile(
            leading: Text('${index + 1}.', style: TextStyle(fontSize: 18)),
            title: Text(tips[index]),
          );
        },
      ),
    );
  }
}
