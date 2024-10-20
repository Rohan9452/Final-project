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

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
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
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false, // Hide back button if needed
        backgroundColor: const Color.fromARGB(255, 176, 199, 238),
        toolbarHeight: 100, // Increase the height of the AppBar
        flexibleSpace: Align(
          alignment: Alignment.center,
          child: Padding(
            padding: const EdgeInsets.only(top: 10.0), // Adjust the top padding
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
              icon: Icon(Icons.school, size: 30),
              label: Text(
                'Student',
                style: TextStyle(fontSize: 20),
              ),
              style: ButtonStyle(
                padding: MaterialStateProperty.all(
                  EdgeInsets.symmetric(horizontal: 40, vertical: 15),
                ),
                shape: MaterialStateProperty.all(
                  RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30),
                  ),
                ),
                backgroundColor: MaterialStateProperty.all(Colors.greenAccent),
                foregroundColor: MaterialStateProperty.all(Colors.white),
              ),
              onPressed: () {
                Navigator.pushNamed(context, '/login', arguments: 'Student');
              },
            ),
            SizedBox(height: 40),
            ElevatedButton.icon(
              icon: Icon(Icons.person, size: 30),
              label: Text(
                'Teacher/Others',
                style: TextStyle(fontSize: 20),
              ),
              style: ButtonStyle(
                padding: MaterialStateProperty.all(
                  EdgeInsets.symmetric(horizontal: 40, vertical: 15),
                ),
                shape: MaterialStateProperty.all(
                  RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30),
                  ),
                ),
                backgroundColor: MaterialStateProperty.all(Colors.orangeAccent),
                foregroundColor: MaterialStateProperty.all(Colors.white),
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
