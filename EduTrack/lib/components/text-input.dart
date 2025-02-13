import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class TextInput extends StatelessWidget {
  final String label;
  final String placeholder;
  final TextEditingController controller;
  final bool isPassword;

  const TextInput({
    super.key,
    required this.label,
    required this.placeholder,
    required this.controller,
    this.isPassword = false,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          label,
          style: GoogleFonts.poppins(
            fontSize: 14,
            fontWeight: FontWeight.w500,
            decoration: TextDecoration.none,
          ),
        ),
        const SizedBox(height: 8),
        TextField(
          controller: controller,
          obscureText: isPassword,
          decoration: InputDecoration(
            hintText: placeholder,
            hintStyle: GoogleFonts.poppins(
              color: const Color(0xFF9CA3AF),
              fontSize: 14,
            ),
            contentPadding:
                const EdgeInsets.symmetric(horizontal: 16, vertical: 14),
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(12),
              borderSide: const BorderSide(
                color: Color(0xFFE5E5E5),
              ),
            ),
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(12),
              borderSide: const BorderSide(
                color: Color(0xFFE5E5E5),
              ),
            ),
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(12),
              borderSide: const BorderSide(
                color: Color(0xFFE5E5E5),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
