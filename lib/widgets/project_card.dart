import 'package:app_portfolio/utills/project_utils.dart';
import 'package:flutter/material.dart';
import 'dart:js' as js;
import 'package:font_awesome_flutter/font_awesome_flutter.dart';  // Import font awesome package
import '../constants/colors.dart';

class ProjectCard extends StatelessWidget {
  const ProjectCard({super.key, required this.project});
  final ProjectUtils project;

  @override
  Widget build(BuildContext context) {
    return Container(
      clipBehavior: Clip.antiAlias,
      height: 290,
      width: 260,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: CustomColor.bgLight2,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: [
          Image.asset(
            project.image,
            height: 117,
            width: 260,
            fit: BoxFit.cover,
          ),

          // title
          Padding(
            padding: const EdgeInsets.fromLTRB(12, 15, 12, 12),
            child: Text(
              project.title,
              style: const TextStyle(
                fontWeight: FontWeight.w600,
                color: CustomColor.whitePrimary,
              ),
            ),
          ),

          // subtitle
          Padding(
            padding: const EdgeInsets.fromLTRB(12, 0, 12, 12),
            child: Text(
              project.subtitle,
              style: const TextStyle(
                fontSize: 13,
                fontWeight: FontWeight.w600,
                color: CustomColor.whiteSecondary,
              ),
            ),
          ),

          const Spacer(),

          // footer
          Container(
            color: CustomColor.bgLight1,
            padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 10),
            child: Row(
              children: [
                const Text(
                  'Available on:',
                  style: TextStyle(
                    color: CustomColor.yellowSecondary,
                    fontSize: 10,
                  ),
                ),
                const Spacer(),

                // iOS Link (Font Awesome iOS icon)
                if (project.iOSLink != null)
                  InkWell(
                    onTap: () {
                      js.context.callMethod("open", [project.iOSLink]);
                    },
                    child: Icon(
                      FontAwesomeIcons.apple,  // FontAwesome Apple icon
                      size: 16,
                      color: CustomColor.whitePrimary,
                    ),
                  ),

                // Android Link (Font Awesome Android icon)
                if (project.androidLink != null)
                  Padding(
                    padding: const EdgeInsets.only(left: 6),
                    child: InkWell(
                      onTap: () {
                        js.context.callMethod("open", [project.androidLink]);
                      },
                      child: Icon(
                        FontAwesomeIcons.android,  // FontAwesome Android icon
                        size: 16,
                        color: CustomColor.whitePrimary,
                      ),
                    ),
                  ),

                // Web Link (Font Awesome Web icon)
                if (project.webLink != null)
                  Padding(
                    padding: const EdgeInsets.only(left: 6),
                    child: InkWell(
                      onTap: () {
                        js.context.callMethod("open", [project.webLink]);
                      },
                      child: Icon(
                        FontAwesomeIcons.globe,  // FontAwesome Globe icon
                        size: 16,
                        color: CustomColor.whitePrimary,
                      ),
                    ),
                  ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
