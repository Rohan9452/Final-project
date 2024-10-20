import 'package:flutter/material.dart';
import 'profile_page.dart';
import 'settings_page.dart';
import 'courses_page.dart';
import 'schedule_page.dart';
import 'attendance_page.dart';
import 'subjects_page.dart';
import 'projects_page.dart';
import 'seminar_page.dart';
import 'meetings_page.dart';
import 'feedback_page.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home'),
        backgroundColor: Colors.blueAccent,
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            DrawerHeader(
              decoration: BoxDecoration(color: Colors.blueAccent),
              child: Text('Menu',
                  style: TextStyle(color: Colors.white, fontSize: 24)),
            ),
            _createDrawerItem(
              icon: Icons.person,
              text: 'My Profile',
              onTap: () {
                Navigator.of(context)
                    .push(MaterialPageRoute(builder: (_) => ProfilePage()));
              },
            ),
            _createDrawerItem(
              icon: Icons.settings,
              text: 'Settings',
              onTap: () {
                Navigator.of(context)
                    .push(MaterialPageRoute(builder: (_) => SettingsPage()));
              },
            ),
            _createDrawerItem(
              icon: Icons.book,
              text: 'Courses',
              onTap: () {
                Navigator.of(context)
                    .push(MaterialPageRoute(builder: (_) => CoursesPage()));
              },
            ),
            _createDrawerItem(
              icon: Icons.schedule,
              text: 'College Schedule',
              onTap: () {
                Navigator.of(context)
                    .push(MaterialPageRoute(builder: (_) => SchedulePage()));
              },
            ),
          ],
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: GridView.count(
          crossAxisCount: 2, // Display items in two columns
          crossAxisSpacing: 8.0,
          mainAxisSpacing: 8.0,
          children: [
            _createBlockItem(context, 'Attendance', Icons.check_circle,
                Colors.greenAccent, AttendancePage()),
            _createBlockItem(context, 'Subjects', Icons.book,
                Colors.orangeAccent, SubjectsPage()),
            _createBlockItem(context, 'Projects', Icons.work,
                Colors.purpleAccent, ProjectsPage()),
            _createBlockItem(
                context, 'Seminar', Icons.mic, Colors.redAccent, SeminarPage()),
            _createBlockItem(context, 'Meetings', Icons.meeting_room,
                Colors.tealAccent, MeetingsPage()),
            _createBlockItem(context, 'Feedback', Icons.feedback,
                Colors.blueAccent, FeedbackPage()),
          ],
        ),
      ),
    );
  }

  // Drawer item widget
  Widget _createDrawerItem(
      {required IconData icon,
      required String text,
      GestureTapCallback? onTap}) {
    return ListTile(
      leading: Icon(icon),
      title: Text(text),
      onTap: onTap,
    );
  }

  // Body item widget for grid blocks
  Widget _createBlockItem(BuildContext context, String text, IconData icon,
      Color color, Widget page) {
    return GestureDetector(
      onTap: () {
        Navigator.of(context).push(MaterialPageRoute(builder: (_) => page));
      },
      child: Container(
        decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.circular(10.0),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(icon, size: 50, color: Colors.white),
            SizedBox(height: 10),
            Text(
              text,
              style: TextStyle(
                color: Colors.white,
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
