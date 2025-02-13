import 'package:edutrack/screens/module-info.dart';
import 'package:edutrack/screens/module-recomendations.dart';
import 'package:edutrack/screens/settings.dart';
import 'package:flutter/material.dart';
import 'package:edutrack/screens/splash-screen.dart';
import 'package:edutrack/screens/home-screen.dart';


void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      routes: {
        '/': (context) => const SplashScreen(), // Splash Screen
        '/home': (context) => const MyHomePage(title: "EduTrack"), // Home Screen
        '/settings': (context) => const SettingsScreen(), // Settings Screen
        '/module-info': (context) => const ModuleInfoScreen(), // Module Info
        '/module-recommendations': (context) =>
            const ModuleRecommendationsScreen(), // Recommendations
      },
    );
  }
}
