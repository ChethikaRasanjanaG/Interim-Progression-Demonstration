import 'package:edutrack/components/text-input.dart';
import 'package:edutrack/screens/home-screen.dart';
import 'package:edutrack/screens/login-screen.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter/gestures.dart';

class SignUpPage extends StatefulWidget {
  const SignUpPage({super.key});

  @override
  _SignUpPageState createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  final TextEditingController nameController = TextEditingController();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController usernameController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  final TextEditingController confirmPasswordController =
      TextEditingController();

  bool agreeWithTerms = false;

  @override
  Widget build(BuildContext context) {
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
              label: 'Name',
              placeholder: 'Enter your name',
              controller: nameController,
            ),
            const SizedBox(height: 16),
            TextInput(
              label: 'Email Address',
              placeholder: 'Enter your email address',
              controller: emailController,
            ),
            const SizedBox(height: 16),
            TextInput(
              label: 'Username',
              placeholder: 'Enter your username',
              controller: usernameController,
            ),
            const SizedBox(height: 16),
            TextInput(
              label: 'Password',
              placeholder: 'Enter your password',
              controller: passwordController,
              isPassword: true,
            ),
            const SizedBox(height: 16),
            TextInput(
              label: 'Confirm Password',
              placeholder: 'Confirm your password',
              controller: confirmPasswordController,
              isPassword: true,
            ),
            const SizedBox(height: 16),
            Row(
              children: [
                Checkbox(
                  value: agreeWithTerms,
                  onChanged: (value) {
                    setState(() {
                      agreeWithTerms = value!;
                    });
                  },
                  activeColor: const Color(0xFF0EA5E9),
                ),
                Expanded(
                  child: RichText(
                    text: TextSpan(
                      text: 'Agree with ',
                      style: GoogleFonts.poppins(
                        fontSize: 14,
                        color: Colors.black,
                      ),
                      children: [
                        TextSpan(
                          text: 'Terms & Condition',
                          style: GoogleFonts.poppins(
                            fontSize: 14,
                            color: const Color(0xFF0EA5E9),
                            decoration: TextDecoration.underline,
                            decorationStyle: TextDecorationStyle.solid,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 16),
            SizedBox(
              width: double.infinity,
              height: 50,
              child: ElevatedButton(
                onPressed: () {
                  if (agreeWithTerms &&
                      passwordController.text ==
                          confirmPasswordController.text) {
                    Navigator.of(context).pushReplacement(
                      MaterialPageRoute(
                        builder: (_) => const MyHomePage(title: 'Home Page'),
                      ),
                    );
                  } else {
                    ScaffoldMessenger.of(context).showSnackBar(
                      const SnackBar(
                        content:
                            Text('Please agree to terms and match passwords!'),
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
                  'Sign Up',
                  style: TextStyle(
                    fontSize: 16,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
            const SizedBox(height: 24),
            Center(
              child: RichText(
                text: TextSpan(
                  text: "Already have an account? ",
                  style: GoogleFonts.poppins(
                    fontSize: 13,
                    fontWeight: FontWeight.w400,
                    height: 1.5,
                    color: Colors.black,
                  ),
                  children: [
                    TextSpan(
                      text: 'Login',
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
                            MaterialPageRoute(
                              builder: (_) => const LoginPage(),
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
