import 'package:flutter/material.dart';
import 'package:flutter_portofolio/constants.dart';
import '../components/Side Menu/side_menu.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({Key? key, required this.childern}) : super(key: key);
  final List<Widget> childern;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          //padding: EdgeInsets.symmetric(horizontal: defaultPadding),
          constraints: const BoxConstraints(minWidth: maxWidth),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Expanded(
                // (1 + 4 = 5) so 1/4 = 1/4 = 0.25 = 25%
                flex: 2,
                child: SideMenu(),
              ),
              const SizedBox(width: defaultPadding),
              Expanded(
                  flex: 7,
                  child: SingleChildScrollView(
                    child: Column(children: [
                      ...childern, // footer
                    ]),
                  )),
              const SizedBox(width: defaultPadding),
            ],
          ),
        ),
      ),
    );
  }
}
