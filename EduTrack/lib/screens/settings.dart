import 'package:edutrack/widgets/bottom_nav_bar.dart';
import 'package:flutter/material.dart';

class SettingsScreen extends StatelessWidget {
  const SettingsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: ListView(
          children: [
            const Text(
              "Account",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 10),
            ListTile(
              leading: const Icon(Icons.person_outline),
              title: const Text("Profile"),
              trailing: const Icon(Icons.arrow_forward_ios),
              onTap: () {
                // Navigate to Profile Page
              },
            ),
            ListTile(
              leading: const Icon(Icons.lock_outline),
              title: const Text("Change Password"),
              trailing: const Icon(Icons.arrow_forward_ios),
              onTap: () {
                // Change Password Logic
              },
            ),
            const Divider(height: 30, thickness: 1),
            const Text(
              "Preferences",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 10),
            ListTile(
              leading: const Icon(Icons.dark_mode_outlined),
              title: const Text("Dark Mode"),
              trailing: Switch(
                value: false, // Replace with dark mode toggle logic
                onChanged: (bool value) {
                  // Toggle Dark Mode
                },
              ),
            ),
            ListTile(
              leading: const Icon(Icons.language_outlined),
              title: const Text("Language"),
              trailing: const Icon(Icons.arrow_forward_ios),
              onTap: () {
                // Change Language Logic
              },
            ),
            const Divider(height: 30, thickness: 1),
            const Text(
              "Support",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 10),
            ListTile(
              leading: const Icon(Icons.help_outline),
              title: const Text("Help & Support"),
              trailing: const Icon(Icons.arrow_forward_ios),
              onTap: () {
                // Navigate to Help Page
              },
            ),
            ListTile(
              leading: const Icon(Icons.info_outline),
              title: const Text("About Us"),
              trailing: const Icon(Icons.arrow_forward_ios),
              onTap: () {
                // Navigate to About Us Page
              },
            ),
            const Divider(height: 30, thickness: 1),
            ListTile(
              leading: const Icon(Icons.logout, color: Colors.red),
              title: const Text(
                "Logout",
                style: TextStyle(color: Colors.red),
              ),
              onTap: () {
                // Logout Logic
              },
            ),
          ],
        ),
      ),
      bottomNavigationBar: const BottomNavBar(),
    );
  }
}
