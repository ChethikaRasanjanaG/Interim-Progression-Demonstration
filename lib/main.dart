import 'package:flutter/material.dart'; // Ensure correct import
import 'package:edutrack/screens/splash-screen.dart'; // Import SplashScreen

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SplashScreen(), // Start with Splash Screen
    );
  }
}

