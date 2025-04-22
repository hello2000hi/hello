import 'package:flutter/material.dart';
import 'student.dart';
import 'global.dart';

class Edit extends StatelessWidget {
  final Student student;
  final int index;

  Edit({super.key, required this.student, required this.index});

  final TextEditingController nameController = TextEditingController();
  final TextEditingController courseController = TextEditingController();
  final TextEditingController ageController = TextEditingController();
  final TextEditingController dobController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    nameController.text = student.name;
    courseController.text = student.course;
    ageController.text = student.age;
    dobController.text = student.birthDate;

    return Scaffold(
      appBar: AppBar(title: Text("Edit Student")),
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
                GlobalData.lststu[index].name = nameController.text;
                GlobalData.lststu[index].course = courseController.text;
                GlobalData.lststu[index].age = ageController.text;
                GlobalData.lststu[index].birthDate = dobController.text;
                Navigator.pop(context);
              },
              child: Text("Update"),
            )
          ],
        ),
      ),
    );
  }
}
