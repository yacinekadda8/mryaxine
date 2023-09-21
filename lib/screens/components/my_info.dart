import 'package:flutter/material.dart';
import 'package:flutter_portofolio/constants.dart';

import '../../core/utils/my_styles.dart';

class MyInfo extends StatelessWidget {
  const MyInfo({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 1.23,
      child: Container(
        color: secondaryColor,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const Spacer(flex: 2),
            const CircleAvatar(
              radius: 50,
              backgroundImage: AssetImage("assets/images/mypic.jpg"),
              //   backgroundColor: Colors.red,
            ),
            const Spacer(),
            Text(
              'Yacine Merahi',
              style: MyStyles.textStyle24.copyWith(
                color: Colors.white,
              ),
            ),
            const Spacer(),
            const Text(
              'Flutter Application Developer \n With two years of experience',
              textAlign: TextAlign.center,
              style: MyStyles.textStyle16,
            ),
            const Spacer(flex: 2),
          ],
        ),
      ),
    );
  }
}
