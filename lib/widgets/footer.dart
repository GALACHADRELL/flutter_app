import 'package:flutter/material.dart';
import '../constants/colors.dart';

class Footer extends StatelessWidget {
  const Footer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: CustomColor.bgLight2,
      width: double.infinity,
      padding: const EdgeInsets.symmetric(vertical: 20.0),
      alignment: Alignment.center,
      child: const Text(
        '© 2025 Drell Wafula • Made with Flutter',
        style: TextStyle(
          fontSize: 13,
          fontWeight: FontWeight.w500,
          color: CustomColor.whiteSecondary,
        ),
      ),
    );
  }
}
