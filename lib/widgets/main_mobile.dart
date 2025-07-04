import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:url_launcher/url_launcher.dart';

import '../constants/colors.dart';

class MainMobile extends StatelessWidget {
  const MainMobile({super.key});

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    final screenWidth = screenSize.width;

    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 20.0),
      height: screenSize.height,
      constraints: const BoxConstraints(minHeight: 560.0),
      child: Container(
        padding: const EdgeInsets.all(20),
        decoration: BoxDecoration(
          color: Colors.white.withOpacity(0.05),
          borderRadius: BorderRadius.circular(20),
          boxShadow: [
            BoxShadow(
              color: Colors.black26,
              blurRadius: 10,
              offset: const Offset(0, 4),
            ),
          ],
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Profile Image
            Container(
              margin: const EdgeInsets.only(bottom: 30),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(100),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black38,
                    blurRadius: 10,
                    offset: const Offset(0, 6),
                  ),
                ],
              ),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(100),
                child: Image.asset(
                  "assets/dre.jpg",
                  width: screenWidth / 3,
                  fit: BoxFit.cover,
                ),
              ),
            ).animate().fade(duration: 700.ms).slideX(begin: 0.3),

            // Text
            Text(
              "Hi,\nI am Drell Wafula, an IT Professional with over\n"
                  "four years of hands-on experience"
                  "\nin CyberSecurity, Software Development,\nand IT Support.",
              style: GoogleFonts.poppins(
                fontSize: 24.0,
                fontWeight: FontWeight.w600,
                color: CustomColor.whitePrimary,
                height: 1.5,
              ),
            ).animate().fade(duration: 800.ms).slideY(begin: 0.3),

            const SizedBox(height: 30),

            // Button
            ElevatedButton(
              onPressed: () {
                // Handle button tap
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.blueAccent,
                foregroundColor: Colors.white,
                padding: const EdgeInsets.symmetric(
                  horizontal: 24,
                  vertical: 16,
                ),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30),
                ),
                elevation: 8,
              ),
              child: const Text(
                "Download Resume",
                style: TextStyle(fontSize: 18),
              ),
            ).animate().fade(duration: 600.ms).slideX(begin: -0.2),
          ],
        ),
      ),
    );
  }
}
