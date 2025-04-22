import 'package:flutter/material.dart';
import 'global.dart';
import 'student.dart';

class AddStudent extends StatelessWidget {
  final TextEditingController nameController = TextEditingController();
  final TextEditingController courseController = TextEditingController();
  final TextEditingController ageController = TextEditingController();
  final TextEditingController dobController = TextEditingController();

  AddStudent({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Add Student")),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [
            TextField(controller: nameController, decoration: InputDecoration(labelText: "Name")),
            TextField(controller: courseController, decoration: InputDecoration(labelText: "Course")),
            TextField(controller: ageController, decoration: InputDecoration(labelText: "Age")),
            TextField(controller: dobController, decoration: InputDecoration(labelText: "Birthdate")),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                Student s = Student();
                s.name = nameController.text;
                s.course = courseController.text;
                s.age = ageController.text;
                s.birthDate = dobController.text;
                GlobalData.lststu.add(s);
                Navigator.pop(context);
              },
              child: Text("Save"),
            )
          ],
        ),
      ),
    );
  }
}
