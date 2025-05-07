import 'package:app_portfolio/widgets/project_card.dart';
import 'package:flutter/material.dart';

import '../constants/colors.dart';
import '../utills/project_utils.dart';

class ProjectSection extends StatelessWidget {
  const ProjectSection({super.key});

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    return  Container(
      padding: const EdgeInsets.fromLTRB(25, 20, 25, 60),
      width: screenWidth,
      child: Column(
        children: [
          //work projects title
          const Text('Work Projects',
            style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.bold,
              color: CustomColor.whitePrimary,
            ),
          ),
          const SizedBox(height: 60,),

          //work project cards
          ConstrainedBox(
            constraints: BoxConstraints(maxWidth: 900),
            child: Wrap(
              spacing: 25,
              runSpacing: 25,
              children:[
                for(int i=0; i<workProjectUtils.length;i++)
                  ProjectCard(
                    project: workProjectUtils[i],

                  ),
              ],
            ),
          ),

          SizedBox(height: 30,),

          //hobby projects

          // const Text('Hobby Projects',
          //   style: TextStyle(
          //     fontSize: 24,
          //     fontWeight: FontWeight.bold,
          //     color: CustomColor.whitePrimary,
          //   ),
          // ),
          // const SizedBox(height: 30,),

          ConstrainedBox(
            constraints: BoxConstraints(maxWidth: 900),
            child: Wrap(
              spacing: 25,
              runSpacing: 25,
              children:[
                for(int i=0; i<hobbyProjectUtils.length;i++)
                  ProjectCard(
                    project: hobbyProjectUtils[i],

                  ),
              ],
            ),
          ),

        ],
      ),

    );
  }
}
