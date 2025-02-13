import 'package:edutrack/components/text-input.dart';
import 'package:edutrack/screens/home-screen.dart';
import 'package:edutrack/screens/sign-up-screen.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    final TextEditingController emailController =
        TextEditingController();
    final TextEditingController passwordController =
        TextEditingController();

    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.all(24.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Center(
              child: Image.asset(
                'assets/logo.png',
                width: 235,
                height: 129,
              ),
            ),
            const SizedBox(height: 24),
            TextInput(
              label: 'Your email address',
              placeholder: 'johnsmith123@gmail.com',
              controller: emailController,
            ),
            const SizedBox(height: 16),
            TextInput(
              label: 'Choose a password',
              placeholder: '****************',
              controller: passwordController,
              isPassword: true,
            ),
            const SizedBox(height: 8),
            Align(
              alignment: Alignment.centerRight,
              child: TextButton(
                onPressed: () {},
                child: Text(
                  'Forgot Password?',
                  style: GoogleFonts.poppins(
                    fontSize: 14,
                    fontWeight: FontWeight.w500,
                    height: 1.5,
                    decoration: TextDecoration.underline,
                    decorationStyle: TextDecorationStyle.solid,
                    decorationColor: const Color(0xFF0EA5E9),
                    color: const Color(0xFF0EA5E9),
                  ),
                ),
              ),
            ),
            const SizedBox(height: 16),
            SizedBox(
              width: double.infinity,
              height: 50,
              child: ElevatedButton(
                onPressed: () {
                  if (emailController.text == 'chethika' &&
                      passwordController.text == 'che@123') {
                    Navigator.of(context).pushReplacement(
                      MaterialPageRoute(
                        builder: (_) => const MyHomePage(title: 'Home Page'),
                      ),
                    );
                  } else {
                    ScaffoldMessenger.of(context).showSnackBar(
                      const SnackBar(
                        content: Text('Invalid credentials!'),
                        backgroundColor: Colors.red,
                      ),
                    );
                  }
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color(0xFF0EA5E9),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(16),
                  ),
                ),
                child: const Text(
                  'Continue',
                  style: TextStyle(
                    fontSize: 16,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
            const SizedBox(height: 24),
            Row(
              children: [
                const Expanded(
                  child: Divider(
                    color: Color(0xFF797979),
                    thickness: 1,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 8.0),
                  child: Text(
                    'Or',
                    style: GoogleFonts.poppins(
                      fontSize: 14,
                      fontWeight: FontWeight.w500,
                      color: const Color(0xFF797979),
                    ),
                  ),
                ),
                const Expanded(
                  child: Divider(
                    color: Color(0xFF797979),
                    thickness: 1,
                  ),
                ),
              ],
            ),
            const SizedBox(height: 16),
            Center(
              child: RichText(
                text: TextSpan(
                  text: "Don't have an account? ",
                  style: GoogleFonts.poppins(
                    fontSize: 13,
                    fontWeight: FontWeight.w400,
                    height: 1.5,
                    color: Colors.black,
                  ),
                  children: [
                    TextSpan(
                      text: 'Sign Up',
                      style: GoogleFonts.poppins(
                        fontSize: 13,
                        fontWeight: FontWeight.w400,
                        height: 1.5,
                        color: const Color(0xFF0EA5E9),
                        decoration: TextDecoration.underline,
                        decorationStyle: TextDecorationStyle.solid,
                      ),
                      recognizer: TapGestureRecognizer()
                        ..onTap = () {
                          Navigator.of(context).push(
                            // Changed from pushReplacement to push
                            MaterialPageRoute(
                              builder: (_) => const SignUpPage(),
                            ),
                          );
                        },
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
