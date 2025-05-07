import 'package:app_portfolio/constants/colors.dart';
import 'package:app_portfolio/constants/nav_items.dart';
import 'package:app_portfolio/constants/size.dart';
import 'package:app_portfolio/constants/skill_items.dart';
import 'package:app_portfolio/constants/sns_link.dart';
import 'package:app_portfolio/utills/project_utils.dart';
import 'package:app_portfolio/widgets/contact_section.dart';
import 'package:app_portfolio/widgets/drawer_mobile.dart';
import 'package:app_portfolio/widgets/header_desktop.dart';
import 'package:app_portfolio/widgets/main_desktop.dart';
import 'package:app_portfolio/widgets/main_mobile.dart';
import 'package:app_portfolio/widgets/project_section.dart';
import 'package:app_portfolio/widgets/skills_desktop.dart';
import 'package:app_portfolio/widgets/skills_mobile.dart';
import 'package:app_portfolio/widgets/footer.dart';
import 'package:app_portfolio/widgets/header_mobile.dart';
import 'package:flutter/material.dart';
import 'dart:js' as js;

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final scaffoldKey = GlobalKey<ScaffoldState>();
  final scrollController = ScrollController();
  final List<GlobalKey> navbarKeys = List.generate(4, (index) => GlobalKey());

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    final screenWidth = screenSize.width;

    return LayoutBuilder(
      builder: (context, constraints) {
        return Scaffold(
          key: scaffoldKey,
          backgroundColor: CustomColor.vibrantGrey,
          endDrawer: constraints.maxWidth >= kMinDesktopWidth
              ? null
              : DrawerMobile(
            onNavItemTap: (int navIndex) {
              scrollToSection(navIndex);
              scaffoldKey.currentState?.closeEndDrawer();
            },
          ),
          body: SingleChildScrollView(
            controller: scrollController,
            scrollDirection: Axis.vertical,
            child: Column(
              children: [
                SizedBox(key: navbarKeys.first),

                // Header
                if (constraints.maxWidth >= kMinDesktopWidth)
                  HeaderDesktop(
                    onNavMenuTap: (int navIndex) {
                      scrollToSection(navIndex);
                    },
                  )
                else
                  HeaderMobile(
                    onLogoTap: () {},
                    onMenuTap: () {
                      scaffoldKey.currentState?.openEndDrawer();
                    },
                  ),

                // Main Section
                if (constraints.maxWidth >= kMinDesktopWidth)
                  const MainDesktop()
                else
                  const MainMobile(),

                // Skills Section
                Container(
                  key: navbarKeys[1],
                  width: screenWidth,
                  padding: const EdgeInsets.fromLTRB(25, 20, 25, 60),
                  color: CustomColor.bgLight1,
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      // Title
                      const Text(
                        'What I can Do',
                        style: TextStyle(
                          fontSize: 24,
                          fontWeight: FontWeight.bold,
                          color: CustomColor.whitePrimary,
                        ),
                      ),
                      const SizedBox(height: 50),

                      // Skills
                      if (constraints.maxWidth >= kMedDesktopWidth)
                        const SkillsDesktop()
                      else
                        const SkillsMobile(),
                    ],
                  ),
                ),

                const SizedBox(height: 30),

                // Projects Section
                ProjectSection(key: navbarKeys[2]),
                const SizedBox(height: 30),

                // Contact Section
                ContactSection(key: navbarKeys[3]),

                // Footer
                Footer(),
              ],
            ),
          ),
        );
      },
    );
  }

  void scrollToSection(int navIndex) {
    if (navIndex == 4) {
      // Open a blog page
      js.context.callMethod("open", [SnsLinks.blog]);
      return;
    }
    final key = navbarKeys[navIndex];
    Scrollable.ensureVisible(
      key.currentContext!,
      duration: const Duration(milliseconds: 500),
      curve: Curves.easeInOut,
    );
  }
}