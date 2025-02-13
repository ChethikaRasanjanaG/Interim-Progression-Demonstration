import 'package:edutrack/widgets/bottom_nav_bar.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MyHomePage extends StatelessWidget {
  final String title;

  const MyHomePage({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      bottomNavigationBar: const BottomNavBar(),
      body: Padding(
        padding: const EdgeInsets.all(24.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Center(
              child: Image.asset(
                'assets/welcome.png', // Ensure the image is in assets
                width: 250,
                height: 250,
              ),
            ),
            const SizedBox(height: 24),
            Text(
              'Hi, Chethika',
              style: GoogleFonts.poppins(
                fontSize: 28,
                fontWeight: FontWeight.w600,
                color: Colors.black87,
              ),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 16),
            Text(
              'Welcome to Student Optional Module Recommendation',
              style: GoogleFonts.poppins(
                fontSize: 32,
                fontWeight: FontWeight.w600,
                height: 1.5,
                color: const Color(0xFF0EA5E9),
              ),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 12),
            Text(
              'Your companion to manage tasks,\nbuild habits, and stay productive',
              style: GoogleFonts.inter(
                fontSize: 14,
                fontWeight: FontWeight.w400,
                height: 1.21,
                color: const Color(0xFF404040),
              ),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 24),
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/module-info');
              },
              child: const Text("Get Module Info"),
            ),
            const SizedBox(height: 12),
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/module-recommendations');
              },
              child: const Text("Get Module Recommendations"),
            ),
          ],
        ),
      ),
    );
  }
}
