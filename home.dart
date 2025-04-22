import 'package:cec/setting.dart';
import 'package:flutter/material.dart';
import 'aboutus.dart';
import 'global.dart';
import 'addstudent.dart';
import 'viewstudent.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Student List")),
      drawer: Drawer(
        child: ListView(
          children: [
            DrawerHeader(child: Text("Menu", style: TextStyle(fontSize: 24))),
            ListTile(
              title: Text("Setting"),
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return SettingsScreen();
                }));
              },
            ),
            ListTile(
              title: Text("About Us"),
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return AboutPage();
                }));
              },
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: () async {
          await Navigator.push(context, MaterialPageRoute(builder: (context) { return AddStudent();}));
          setState(() {});
        },
      ),
      body: ListView.builder(
        itemCount: GlobalData.lststu.length,
        itemBuilder: (context, index) {
          final student = GlobalData.lststu[index];
          return ListTile(
            title: Text(student.name),
            subtitle: Text("Course: ${student.course}"),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) { return StudentDetailScreen(student: student, index: index);}),
              ).then((value) => setState(() {}));
            },
          );
        },
      ),
    );
  }
}
