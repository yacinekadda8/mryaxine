import 'package:flutter/material.dart';
import 'package:flutter_portofolio/constants.dart';
import 'package:flutter_portofolio/core/utils/my_styles.dart';
import 'package:flutter_portofolio/screens/main/main_screen.dart';

import 'hightlight_section.dart';
import 'my_banner.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return MainScreen(
      childern: [
        MyBanner(),
        HightLightSection()
      ],
    );
  }
}
