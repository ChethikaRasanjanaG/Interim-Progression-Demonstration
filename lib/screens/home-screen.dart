import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MyHomePage extends StatelessWidget {
  final String title;

  const MyHomePage({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.all(24.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Center(
              child: Image.asset(
                'assets/welcome.png', // Image from assets folder
                width: 250, // Adjust size if needed
                height: 250,
              ),
            ),
            const SizedBox(height: 24),
            Text(
              'Welcome to EduTrack',
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
          ],
        ),
      ),
    );
  }
}
