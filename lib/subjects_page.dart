import 'package:flutter/material.dart';

import 'attendance_page.dart';
import 'feedback_page.dart';
import 'projects_page.dart';
import 'seminar_page.dart'; // Import this
import 'meetings_page.dart'; // Import this

class SubjectsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Subjects'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: GridView.count(
          crossAxisCount: 2, // Display items in two columns
          crossAxisSpacing: 8.0,
          mainAxisSpacing: 8.0,
          children: [
            _createBlockItem(context, 'FE',Icons.note_outlined,
                const Color.fromARGB(255, 245, 90, 79), AttendancePage()),
                
            _createBlockItem(context, 'SE', Icons.note_outlined,
                const Color.fromARGB(255, 240, 224, 83), ProjectsPage()),
            _createBlockItem(context, 'TE', Icons.note_outlined,
                const Color.fromARGB(255, 87, 173, 243), SeminarPage()),
            _createBlockItem(context, 'BE', Icons.note_outlined,
                Colors.green, MeetingsPage()),
           
          ],
        ),
      ),
    );
  }

  Widget _createBlockItem(BuildContext context, String title, IconData icon, Color color, Widget page) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => page),
        );
      },
      child: Container(
        decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.circular(8.0),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(icon, size: 50.0, color: Colors.white),
            SizedBox(height: 10.0),
            Text(
              title,
              style: TextStyle(
                color: Colors.white,
                fontSize: 20.0,
              ),
            ),
          ],
        ),
      ),
    );
  }
}