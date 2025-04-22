import 'package:flutter/material.dart';

class SettingsScreen extends StatefulWidget {
  @override
  _SettingsScreenState createState() {
    return _SettingsScreenState();
  }
}

class _SettingsScreenState extends State<SettingsScreen> {
  double red = 255, green = 255, blue = 255;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(red.toInt(), green.toInt(), blue.toInt(), 1),
      appBar: AppBar(title: Text("Settings")),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [
            Text("Color Change"),
            Slider(
              value: red,
              min: 0,
              max: 255,
              activeColor: Colors.red,
              onChanged: (value) {
                setState(() {
                  red = value;
                });
              },
            ),
            Slider(
              value: green,
              min: 0,
              max: 255,
              activeColor: Colors.green,
              onChanged: (value) {
                setState(() {
                  green = value;
                });
              },
            ),
            Slider(
              value: blue,
              min: 0,
              max: 255,
              activeColor: Colors.blue,
              onChanged: (value) {
                setState(() {
                  blue = value;
                });
              },
            ),
          ],
        ),
      ),
    );
  }
}
