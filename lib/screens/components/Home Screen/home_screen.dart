import 'package:flutter/material.dart';
import 'package:flutter_portofolio/screens/main/main_screen.dart';

import 'hightlight_section.dart';
import 'my_banner.dart';
import 'my_projects.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const MainScreen(
      childern:  [
        MyBanner(),
        HightLightSection(),
        MyProjects(),
      ],
    );
  }
}
