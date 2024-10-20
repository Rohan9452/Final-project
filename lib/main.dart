import 'package:flutter/material.dart';
import 'login_page.dart';
import 'signup_page.dart';
import 'home_page.dart';
import 'attendance_page.dart';
import 'subjects_page.dart';
import 'projects_page.dart';
import 'seminar_page.dart';
import 'meetings_page.dart';
import 'feedback_page.dart';

// demo change

//hello rohan kale

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Student Teacher App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: FirstPage(),
      routes: {
        '/login': (context) => LoginPage(),
        '/signup': (context) => SignupPage(),
        '/home': (context) => HomePage(),
        '/attendance': (context) => AttendancePage(),
        '/subjects': (context) => SubjectsPage(),
        '/projects': (context) => ProjectsPage(),
        '/seminar': (context) => SeminarPage(),
        '/meetings': (context) => MeetingsPage(),
        '/feedback': (context) => FeedbackPage(),
      },
    );
  }
}

class FirstPage extends StatelessWidget {
  const FirstPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false, // Hide back button if needed
        backgroundColor: const Color.fromARGB(255, 176, 199, 238),
        toolbarHeight: 100, // Increase the height of the AppBar
        flexibleSpace: const Align(
          alignment: Alignment.center,
          child: Padding(
            padding: EdgeInsets.only(top: 10.0), // Adjust the top padding
            child: Text(
              'Welcome',
              style: TextStyle(
                fontSize: 40,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
          ),
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton.icon(
              icon: const Icon(Icons.school, size: 30),
              label: const Text(
                'Student',
                style: TextStyle(fontSize: 20),
              ),
              style: ButtonStyle(
                padding: WidgetStateProperty.all(
                  const EdgeInsets.symmetric(horizontal: 40, vertical: 15),
                ),
                shape: WidgetStateProperty.all(
                  RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30),
                  ),
                ),
                backgroundColor: WidgetStateProperty.all(Colors.greenAccent),
                foregroundColor: WidgetStateProperty.all(Colors.white),
              ),
              onPressed: () {
                Navigator.pushNamed(context, '/login', arguments: 'Student');
              },
            ),
            const SizedBox(height: 40),
            ElevatedButton.icon(
              icon: const Icon(Icons.person, size: 30),
              label: const Text(
                'Teacher/Others',
                style: TextStyle(fontSize: 20),
              ),
              style: ButtonStyle(
                padding: WidgetStateProperty.all(
                  const EdgeInsets.symmetric(horizontal: 40, vertical: 15),
                ),
                shape: WidgetStateProperty.all(
                  RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30),
                  ),
                ),
                backgroundColor: WidgetStateProperty.all(Colors.orangeAccent),
                foregroundColor: WidgetStateProperty.all(Colors.white),
              ),
              onPressed: () {
                Navigator.pushNamed(context, '/login', arguments: 'Teacher');
              },
            ),
          ],
        ),
      ),
    );
  }
}
