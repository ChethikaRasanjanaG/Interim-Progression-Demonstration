import 'package:edutrack/widgets/bottom_nav_bar.dart';
import 'package:flutter/material.dart';

class ModuleInfoScreen extends StatelessWidget {
  const ModuleInfoScreen({super.key});

  final List<Map<String, dynamic>> modules = const [
    {
      'name': 'OOP',
      'marks': 85,
      'difficulty': 'Easy',
    },
    {
      'name': 'Data Structures',
      'marks': 78,
      'difficulty': 'Medium',
    },
    {
      'name': 'Database Systems',
      'marks': 72,
      'difficulty': 'Medium',
    },
    {
      'name': 'Operating Systems',
      'marks': 65,
      'difficulty': 'Hard',
    },
    {
      'name': 'Computer Networks',
      'marks': 88,
      'difficulty': 'Medium',
    },
    {
      'name': 'Algorithms',
      'marks': 60,
      'difficulty': 'Hard',
    },
  ];

  Color getDifficultyColor(String difficulty) {
    switch (difficulty) {
      case 'Easy':
        return Colors.green;
      case 'Medium':
        return Colors.orange;
      case 'Hard':
        return Colors.red;
      default:
        return Colors.grey;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        // Added SafeArea to prevent overlap with the notch
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                "Module Info",
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
              ),
              const SizedBox(height: 12),
              Expanded(
                child: ListView.builder(
                  itemCount: modules.length,
                  itemBuilder: (context, index) {
                    final module = modules[index];
                    return Card(
                      margin: const EdgeInsets.symmetric(vertical: 12.0),
                      elevation: 6,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(16.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  module['name'],
                                  style: const TextStyle(
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                Chip(
                                  label: Text(module['difficulty']),
                                  backgroundColor:
                                      getDifficultyColor(module['difficulty'])
                                          .withOpacity(0.2),
                                  labelStyle: TextStyle(
                                    color: getDifficultyColor(
                                        module['difficulty']),
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ],
                            ),
                            const SizedBox(height: 8),
                            LinearProgressIndicator(
                              value: module['marks'] / 100,
                              color: getDifficultyColor(module['difficulty']),
                              backgroundColor: Colors.grey[300],
                              minHeight: 10,
                              borderRadius: BorderRadius.circular(10),
                            ),
                            const SizedBox(height: 8),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  "Marks: ${module['marks']}%",
                                  style: const TextStyle(fontSize: 14),
                                ),
                                Text(
                                  "Difficulty: ${module['difficulty']}",
                                  style: TextStyle(
                                    fontSize: 14,
                                    color: getDifficultyColor(
                                        module['difficulty']),
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: const BottomNavBar(),
    );
  }
}
