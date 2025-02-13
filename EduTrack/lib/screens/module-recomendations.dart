import 'package:edutrack/widgets/bottom_nav_bar.dart';
import 'package:flutter/material.dart';
import 'dart:async';

class ModuleRecommendationsScreen extends StatefulWidget {
  const ModuleRecommendationsScreen({super.key});

  @override
  State<ModuleRecommendationsScreen> createState() =>
      _ModuleRecommendationsScreenState();
}

class _ModuleRecommendationsScreenState
    extends State<ModuleRecommendationsScreen> {
  String displayedText = "";
  final String fullText =
      "Hi, Chethika! I would like if you do the below modules:";
  int index = 0;
  bool showModules = false;

  final List<Map<String, String>> modules = [
    {
      'name': 'Advanced Algorithms',
      'info':
          'This module covers advanced algorithmic techniques including dynamic programming, graph algorithms, and optimization.',
      'reason':
          'Based on your strong performance in Data Structures and Algorithms.',
    },
    {
      'name': 'Machine Learning',
      'info':
          'Explore supervised and unsupervised learning techniques, neural networks, and data analysis.',
      'reason':
          'Recommended due to your excellent grades in Mathematics and Data Science modules.',
    },
    {
      'name': 'Cloud Computing',
      'info':
          'Learn about cloud architecture, deployment models, and services like AWS, Azure, and Google Cloud.',
      'reason':
          'Suggested because of your interest in networking and operating systems.',
    },
    {
      'name': 'Cybersecurity',
      'info':
          'Understand security protocols, ethical hacking, cryptography, and risk management.',
      'reason':
          'Recommended due to your strong background in system security and network management.',
    },
  ];

  @override
  void initState() {
    super.initState();
    typeWriterEffect();
  }

  void typeWriterEffect() {
    Timer.periodic(const Duration(milliseconds: 100), (timer) {
      if (index < fullText.length) {
        setState(() {
          displayedText += fullText[index];
          index++;
        });
      } else {
        timer.cancel();
        setState(() {
          showModules = true; // Show modules after typewriter effect completes
        });
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                displayedText,
                style: const TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  height: 1.4,
                ),
              ),
              const SizedBox(height: 16),
              if (showModules)
                Expanded(
                  child: ListView.builder(
                    itemCount: modules.length,
                    itemBuilder: (context, index) {
                      final module = modules[index];
                      return ModuleCard(module: module);
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

class ModuleCard extends StatefulWidget {
  final Map<String, String> module;

  const ModuleCard({super.key, required this.module});

  @override
  State<ModuleCard> createState() => _ModuleCardState();
}

class _ModuleCardState extends State<ModuleCard> {
  bool isExpanded = false;
  bool showReason = false;

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.symmetric(vertical: 8.0),
      elevation: 4,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12),
      ),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              widget.module['name']!,
              style: const TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
            if (isExpanded)
              Padding(
                padding: const EdgeInsets.only(top: 8.0),
                child: Text(widget.module['info']!),
              ),
            if (showReason)
              Padding(
                padding: const EdgeInsets.only(top: 8.0),
                child: Text(
                  "Why Recommended: ${widget.module['reason']}",
                  style: const TextStyle(fontStyle: FontStyle.italic),
                ),
              ),
            const SizedBox(height: 8),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                TextButton(
                  onPressed: () {
                    setState(() {
                      isExpanded = !isExpanded;
                    });
                  },
                  child: Text(isExpanded ? "Hide Info" : "See Module Info"),
                ),
                TextButton(
                  onPressed: () {
                    setState(() {
                      showReason = !showReason;
                    });
                  },
                  child: Text(showReason ? "Hide Reason" : "Why Recommended?"),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
