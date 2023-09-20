import 'package:flutter/material.dart';
import 'package:flutter_portofolio/constants.dart';
import 'package:flutter_portofolio/core/utils/my_styles.dart';

import '../components/side_menu.dart';


class MainScreen extends StatelessWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          constraints: const BoxConstraints(minWidth: maxWidth),
          child: Row(
            children: [
              Expanded(
                  // (1 + 4 = 5) so 1/4 = 1/4 = 0.25 = 25%
                  flex: 2,
                  child: SideMenu()),
              Expanded(
                  flex: 7,
                  child: Container(
                    color: Colors.blue,
                  )),
            ],
          ),
        ),
      ),
    );
  }
}
