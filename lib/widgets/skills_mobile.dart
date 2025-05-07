import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../constants/colors.dart';
import '../constants/skill_items.dart';

class SkillsMobile extends StatelessWidget {
  const SkillsMobile({super.key});

  @override
  Widget build(BuildContext context) {
    return ConstrainedBox(
      constraints: const BoxConstraints(maxWidth: 500.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          // Platforms section
          ...platformItems.map((item) {
            return Container(
              margin: const EdgeInsets.only(bottom: 10.0),
              width: double.infinity,
              decoration: BoxDecoration(
                color: CustomColor.bgLight2.withOpacity(0.3),
                borderRadius: BorderRadius.circular(10.0),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black26,
                    blurRadius: 5,
                    offset: const Offset(2, 4),
                  ),
                ],
              ),
              child: ListTile(
                contentPadding: const EdgeInsets.symmetric(
                  vertical: 12.0,
                  horizontal: 20.0,
                ),
                leading: FaIcon(item['icon'], color: Colors.white, size: 24),
                title: Text(
                  item['title'],
                  style: GoogleFonts.poppins(
                    color: Colors.white,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
            ).animate().fade(duration: 400.ms).slideY(begin: 0.3);
          }),

          const SizedBox(height: 40),

          // Skills chips section
          Wrap(
            spacing: 10.0,
            runSpacing: 10.0,
            alignment: WrapAlignment.center,
            children: skillItems.map((item) {
              return Chip(
                padding: const EdgeInsets.symmetric(
                    vertical: 12.0, horizontal: 16.0),
                backgroundColor: CustomColor.bgLight2.withOpacity(0.3),
                avatar: FaIcon(item['icon'], color: Colors.white, size: 18),
                label: Text(
                  item['title'],
                  style: GoogleFonts.poppins(color: Colors.white),
                ),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30),
                ),
                elevation: 2,
              ).animate().fade(duration: 350.ms).slideX(begin: 0.2);
            }).toList(),
          ),
        ],
      ),
    );
  }
}
