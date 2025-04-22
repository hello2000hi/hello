import 'package:flutter/material.dart';

class AboutPage extends StatelessWidget {
  const AboutPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("About Us"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(100),
              child: Container(
                color: Colors.black,
                height: 150,
                width: 150,
                child: Image.asset(
                  'assets/ADKP.png',
                ),
              ),
            ),

            const SizedBox(height: 20),
            const Text(
              "Student Management App",
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),

            const SizedBox(height: 20),
            const Text(
              "This app is built by the ADKP Group. "
                  "It allows you to manage student records efficiently and provides adding, editing, and viewing student details.",
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 16),
            ),
            const SizedBox(height: 30),
            const Text(
              "Made with ❤️ by ADKP",
              style: TextStyle(
                fontStyle: FontStyle.italic,
                fontSize: 16,
                color: Colors.blueAccent,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
