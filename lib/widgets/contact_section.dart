import 'package:app_portfolio/constants/size.dart';
import 'package:app_portfolio/constants/sns_link.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import '../constants/colors.dart';
import 'custom_textfield.dart';
import 'dart:js' as js;

class ContactSection extends StatelessWidget {
  const ContactSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.fromLTRB(25, 20, 25, 60),
      color: CustomColor.bgLight1,
      child: SingleChildScrollView(
        child: Column(
          children: [
            // Title
            Text(
              "Get in touch",
              style: const TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 24,
                color: CustomColor.whitePrimary,
              ),
            ),
            const SizedBox(height: 40),

            // Name and Email Fields
            ConstrainedBox(
              constraints: const BoxConstraints(maxWidth: 700, maxHeight: 115),
              child: LayoutBuilder(builder: (context, constraints) {
                if (constraints.maxWidth >= kMinDesktopWidth) {
                  return buildNameEmailFieldDesktop();
                }
                return buildNameEmailFieldMobile();
              }),
            ),
            const SizedBox(height: 40),

            // Message Field
            ConstrainedBox(
              constraints: BoxConstraints(maxWidth: 700),
              child: CustomTextField(
                hintText: "Your message",
                maxLines: 14,
              ),
            ),
            const SizedBox(height: 25),

            // Send Button
            ConstrainedBox(
              constraints: const BoxConstraints(maxWidth: 700),
              child: SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: CustomColor.yellowPrimary,
                    foregroundColor: Colors.black,
                    padding: const EdgeInsets.symmetric(vertical: 14),
                  ),
                  onPressed: () {
                    ScaffoldMessenger.of(context).showSnackBar(
                      const SnackBar(content: Text('Message sent!')),
                    );
                  },
                  child: const Text("Get in touch"),
                ),
              ),
            ),
            const SizedBox(height: 30),

            // Divider
            const Divider(thickness: 1, indent: 100, endIndent: 100),
            const SizedBox(height: 15),

            // Social Links (Icons)
            Wrap(
              spacing: 16,
              runSpacing: 12,
              alignment: WrapAlignment.center,
              children: [
                _buildIcon(FontAwesomeIcons.linkedin, SnsLinks.linkedin),
                _buildIcon(FontAwesomeIcons.twitter, SnsLinks.twitter),
                _buildIcon(FontAwesomeIcons.github, SnsLinks.github),
                _buildIcon(FontAwesomeIcons.youtube, SnsLinks.youtube),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildIcon(IconData icon, String url) {
    return InkWell(
      onTap: () => js.context.callMethod('open', [url]),
      child: FaIcon(
        icon,
        size: 28,
        color: CustomColor.whitePrimary,
      ),
    );
  }

  Row buildNameEmailFieldDesktop() {
    return Row(
      children: const [
        Expanded(child: CustomTextField(hintText: "Your name")),
        SizedBox(width: 15),
        Expanded(child: CustomTextField(hintText: "Your email")),
      ],
    );
  }

  Column buildNameEmailFieldMobile() {
    return Column(
      children: const [
        CustomTextField(hintText: "Your name"),
        SizedBox(height: 15),
        CustomTextField(hintText: "Your email"),
      ],
    );
  }
}
