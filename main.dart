import 'package:flutter/material.dart';
import 'one.dart';

void main() {
  runApp(MaterialApp(home: MyApp()));
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  // Sport selection map
  Map<String, bool> selectedSports = {
    'Cricket': false,
    'Football': false,
    'Hockey': false,
    'Tennis': false,
  };

  // Gender selection
  String gender = 'Male';

  // Age value
  double age = 18;

  // Yes/No switch
  bool isYes = false;

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text(
            "Final exam",
            style: TextStyle(color: Colors.black),
          ),
          bottom: TabBar(tabs: [
            Tab(text: "one"),
            Tab(text: "two"),
          ]),
        ),
        drawer: Drawer(
          backgroundColor: Colors.cyan,
          child: ListView(
            children: [
              DrawerHeader(
                child: Text(
                  "Menu",
                  style: TextStyle(color: Colors.white, fontSize: 24),
                ),
              ),
              ListTile(
                title: Text("Calculator", style: TextStyle(color: Colors.white)),
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return calculator();
                  }));
                },
              )
            ],
          ),
        ),
        body: TabBarView(
          children: [
            // Tab One
            SingleChildScrollView(
              padding: EdgeInsets.all(16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // Sports Checkboxes
                  Text(
                    "Select Sport Game",
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                  ),
                  ...selectedSports.keys.map((sport) {
                    return CheckboxListTile(
                      title: Text(sport),
                      value: selectedSports[sport],
                      onChanged: (bool? value) {
                        setState(() {
                          selectedSports[sport] = value ?? false;
                        });
                      },
                    );
                  }).toList(),

                  SizedBox(height: 10),

                  // Gender Radio Buttons
                  Text("Select Gender", style: TextStyle(fontSize: 16)),
                  ListTile(
                    title: const Text('Male'),
                    leading: Radio<String>(
                      value: 'Male',
                      groupValue: gender,
                      onChanged: (value) {
                        setState(() {
                          gender = value!;
                        });
                      },
                    ),
                  ),
                  ListTile(
                    title: const Text('Female'),
                    leading: Radio<String>(
                      value: 'Female',
                      groupValue: gender,
                      onChanged: (value) {
                        setState(() {
                          gender = value!;
                        });
                      },
                    ),
                  ),

                  SizedBox(height: 10),

                  // Age Slider
                  Text("Select Age: ${age.toInt()}", style: TextStyle(fontSize: 16)),
                  Slider(
                    min: 0,
                    max: 100,
                    divisions: 100,
                    value: age,
                    label: age.toInt().toString(),
                    onChanged: (value) {
                      setState(() {
                        age = value;
                      });
                    },
                  ),

                  SizedBox(height: 10),

                  // Switch for Yes/No
                  SwitchListTile(
                    title: Text("Yes / No"),
                    value: isYes,
                    onChanged: (value) {
                      setState(() {
                        isYes = value;
                      });
                    },
                  ),
                ],
              ),
            ),

            // Tab Two Content
            Center(child: Text("Tab Two Content")),
          ],
        ),
        floatingActionButton: FloatingActionButton(
          child: Icon(Icons.calculate),
          onPressed: () {
            Navigator.push(context, MaterialPageRoute(builder: (context) {
              return calculator();
            }));
          },
        ),
      ),
    );
  }
}
