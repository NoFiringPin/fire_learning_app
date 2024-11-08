import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class EmergencyNumbersPage extends StatelessWidget {
  static const platform = MethodChannel('com.example.fire_learning_app/call');

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Emergency Numbers'),
      ),
      body: ListView(
        children: [
          ListTile(
            title: Text('Critical Emergencies'),
            subtitle: Text('Call 911'),
            onTap: () => _callNumber('9'),
          ),
          ListTile(
            title: Text('Non Emergency Manhattan Beach Police'),
            subtitle: Text('Call (310) 802-5140'),
            onTap: () => _callNumber('093108025140'),
          ),
          ListTile(
            title: Text('California Highway Patrol'),
            subtitle: Text('Call 1-800-835-5247'),
            onTap: () => _callNumber('9018008355247'),
          ),
        ],
      ),
    );
  }

  _callNumber(String number) async {
    try {
      await platform.invokeMethod('callNumber', {'number': number});
    } on PlatformException catch (e) {
      print("Failed to make a call: '${e.message}'.");
    }
  }
}
