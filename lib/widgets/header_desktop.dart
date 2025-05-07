import 'package:app_portfolio/style/style.dart';
import 'package:app_portfolio/widgets/site_logo.dart';
import 'package:flutter/material.dart';

import '../constants/colors.dart';
import '../constants/nav_items.dart';

class HeaderDesktop extends StatelessWidget {
  const HeaderDesktop({super.key, required this.onNavMenuTap});
  final Function(int) onNavMenuTap;

  @override
  Widget build(BuildContext context) {
    return  Container(
      height: 60,
      margin: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
      width: double.maxFinite,
      //  color: Colors.blueGrey,
      decoration: BoxDecoration(
        gradient: const LinearGradient(
          colors: [
            Colors.transparent,
            CustomColor.bgLight1,
          ],
        ),
        borderRadius: BorderRadius.circular(100),
      ),
      child: Row(
        children: [
          SiteLogo(onTap: (){},),

          Spacer(),
          for (int i = 0; i< navTitles.length; i++)
            Padding(
              padding: const EdgeInsets.only(right: 20),
              child: TextButton(onPressed: (){
                onNavMenuTap(i);
              },
                child: Text (navTitles[i],
                  style: TextStyle(fontSize: 16,
                    fontWeight: FontWeight.w500,
                    color: Colors.white,
                  ),),
              ),
            ),
        ],
      ),
    );
  }
}
