import 'package:app_portfolio/widgets/site_logo.dart';
import 'package:flutter/material.dart';

import '../constants/colors.dart';

class HeaderMobile extends StatelessWidget {
  const HeaderMobile({super.key, this.onLogoTap, this.onMenuTap});
  final VoidCallback? onLogoTap;
  final VoidCallback? onMenuTap;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      margin: const EdgeInsets.fromLTRB(40, 5, 20, 5),
      decoration: BoxDecoration(
        gradient: const LinearGradient(
          colors: [
            Colors.transparent,
            CustomColor.bgLight2,
          ],
        ),
        borderRadius: BorderRadius.circular(100),
      ),
      child: Row(
        children: [
          SiteLogo(onTap: onLogoTap,),
          const Spacer(),
          IconButton(
            onPressed: (onMenuTap), icon:const Icon(Icons.menu),),
          const  SizedBox(width: 15,),
        ],
      ),
    );
  }
}
