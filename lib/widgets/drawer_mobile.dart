import 'package:app_portfolio/constants/colors.dart';
import 'package:app_portfolio/constants/nav_items.dart';
import 'package:flutter/material.dart';

class DrawerMobile extends StatelessWidget {
  const DrawerMobile({super.key, required this.onNavItemTap});
  final Function(int) onNavItemTap;

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: CustomColor.drawerBg,
      child: ListView(
        children: [
          Align(
            alignment: Alignment.centerLeft,
            child: Padding(
              padding: const EdgeInsets.only(left: 20, top: 20, bottom: 20),
              child: IconButton(onPressed: (){Navigator.of(context).pop();
              }, icon: Icon(Icons.close),),
            ),
          ),
          for(int i=0; i<navIcons.length;i++)
            ListTile(
              contentPadding:const EdgeInsets.symmetric(horizontal: 30),
              titleTextStyle: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.w600,
                fontSize: 16,
              ),
              onTap: (){
                onNavItemTap(i);
              },
              leading: Icon(navIcons[i]),
              title: Text(navTitles[i]),
            )

        ],
      ),
    );
  }
}
