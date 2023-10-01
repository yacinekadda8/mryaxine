import 'package:flutter/material.dart';

import '../../constants.dart';

class MoreSkillsItem extends StatelessWidget {
  const MoreSkillsItem({
    super.key,
    required this.value,
    required this.lable,
  });

  final double value;
  final String lable;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: defaultPadding),
      child: TweenAnimationBuilder(
        tween: Tween<double>(begin: 0, end: value),
        duration: defaultDuration,
        builder: (context, value, child) => Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  lable,
                  style: const TextStyle(color: kDefaultIconLightColor),
                ),
                Text(
                  "${(value * 100).toInt()}%",
                  style: const TextStyle(color: kDefaultIconLightColor),
                ),
              ],
            ),
            const SizedBox(height: defaultPadding / 2),
            LinearProgressIndicator(
              value: value,
              color: kprimaryColor,
              backgroundColor: darkColor,
            ),
          ],
        ),
      ),
    );
  }
}
