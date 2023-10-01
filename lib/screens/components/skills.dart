import 'package:flutter/material.dart';
import 'package:flutter_portofolio/screens/components/animated_circular_skill.dart';

import '../../constants.dart';
import '../../core/utils/my_styles.dart';

class Skills extends StatelessWidget {
  const Skills({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(vertical: defaultPadding),
          child: Text(
            "Skills",
            style: MyStyles.textStyle18.copyWith(
              color: kTextColorWhite,
            ),
          ),
        ),
        const Row(
          children: [
            Expanded(
              child: AnimatedCircularSkill(lable: 'Flutter', percentage: 0.9),
            ),
            SizedBox(width: defaultPadding),
            Expanded(
              child: AnimatedCircularSkill(lable: 'Firebase', percentage: 0.8),
            ),
            SizedBox(width: defaultPadding),
            Expanded(
              child: AnimatedCircularSkill(
                  lable: 'API Integration', percentage: 0.8),
            ),
          ],
        ),
      ],
    );
  }
}
