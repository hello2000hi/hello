import 'package:flutter/material.dart';
import 'student.dart';
import 'edit.dart';
import 'global.dart';

class StudentDetailScreen extends StatelessWidget {
  final Student student;
  final int index;

  StudentDetailScreen({required this.student, required this.index});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Student Details")),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("Name: ${student.name}"),
            Text("Age: ${student.age}"),
            Text("Course: ${student.course}"),
            Text("Birthdate: ${student.birthDate}"),
            SizedBox(height: 20),
            ElevatedButton(
              child: Text("Edit"),
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return Edit(student: student, index: index);
                }));
              },
            ),
            SizedBox(height: 20,),
            ElevatedButton(
              child: Text("Delete"),
              onPressed: () {
                GlobalData.lststu.removeAt(index);
                Navigator.pop(context);
              },
            )
          ],
        ),
      ),
    );
  }
}
