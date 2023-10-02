import 'package:flutter/material.dart';
import 'package:flutter_portofolio/constants.dart';
import 'package:flutter_portofolio/responsive.dart';
import 'package:responsive_builder/responsive_builder.dart';
import '../components/Side Menu/side_menu.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({Key? key, required this.childern}) : super(key: key);
  final List<Widget> childern;

  @override
  Widget build(BuildContext context) {
    return ResponsiveBuilder(builder: (context, sizingInformation) {
      return Scaffold(
        appBar: sizingInformation.deviceScreenType == DeviceScreenType.desktop
            ? null
            : AppBar(
                backgroundColor: bgColor,
                leading: Builder(
                  builder: (context) => IconButton(
                      onPressed: () {
                        Scaffold.of(context).openDrawer();
                      },
                      icon: const Icon(Icons.menu)),
                ),
              ),
        drawer: const SideMenu(),
        body: Center(
          child: Container(
            //padding: EdgeInsets.symmetric(horizontal: defaultPadding),
            constraints: const BoxConstraints(minWidth: maxWidth),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                if (sizingInformation.deviceScreenType == DeviceScreenType.desktop)
                  const Expanded(
                    flex: 2, // (1 + 4 = 5) so 1/4 = 1/4 = 0.25 = 25%
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
    });
  }
}
