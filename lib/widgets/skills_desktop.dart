import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../constants/colors.dart';
import '../constants/skill_items.dart';

class SkillsDesktop extends StatelessWidget {
  const SkillsDesktop({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 40, vertical: 30),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          // Platforms Section
          ConstrainedBox(
            constraints: const BoxConstraints(maxWidth: 450),
            child: Wrap(
              spacing: 12.0,
              runSpacing: 12.0,
              children: List.generate(platformItems.length, (i) {
                return Container(
                  width: 220,
                  decoration: BoxDecoration(
                    color: CustomColor.bgLight2.withOpacity(0.2),
                    borderRadius: BorderRadius.circular(12),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black12,
                        blurRadius: 6,
                        offset: Offset(2, 4),
                      ),
                    ],
                  ),
                  child: ListTile(
                    contentPadding: const EdgeInsets.symmetric(horizontal: 20, vertical: 12),
                    leading: FaIcon(
                      platformItems[i]["icon"],
                      color: Colors.white,
                      size: 22,
                    ),
                    title: Text(
                      platformItems[i]["title"],
                      style: GoogleFonts.poppins(
                        color: Colors.white,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                ).animate().fade(duration: 500.ms).slideY(begin: 0.2);
              }),
            ),
          ),

          const SizedBox(width: 50.0),

          // Skills Chips Section
          Flexible(
            child: ConstrainedBox(
              constraints: const BoxConstraints(maxWidth: 500),
              child: Wrap(
                spacing: 10.0,
                runSpacing: 10.0,
                children: List.generate(skillItems.length, (i) {
                  return Chip(
                    padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 14),
                    backgroundColor: CustomColor.bgLight2.withOpacity(0.3),
                    avatar: FaIcon(
                      skillItems[i]["icon"],
                      color: Colors.white,
                      size: 18,
                    ),
                    label: Text(
                      skillItems[i]["title"],
                      style: GoogleFonts.poppins(
                        color: Colors.white,
                      ),
                    ),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30),
                    ),
                    elevation: 2,
                  ).animate().fade(duration: 500.ms).slideX(begin: 0.1);
                }),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
