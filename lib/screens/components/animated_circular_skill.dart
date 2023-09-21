
import 'package:flutter/material.dart';

import '../../constants.dart';
import '../../core/utils/my_styles.dart';

class AnimatedCircularSkill extends StatelessWidget {
  const AnimatedCircularSkill({
    super.key,
    required this.percentage,
    required this.lable,
  });
  final double percentage;
  final String lable;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        AspectRatio(
          aspectRatio: 1,
          child: TweenAnimationBuilder(
            tween: Tween<double>(begin: 0, end: percentage),
            duration: defaultDuration,
            builder: (context, double value, child) => Stack(
              fit: StackFit.expand,
              children: [
                CircularProgressIndicator(
                  value: value,
                  color: primaryColor,
                  backgroundColor: darkColor,
                ),
                Center(
                  child: Text(
                    "${(value * 100).toInt()}%",
                    style: MyStyles.textStyle18,
                  ),
                )
              ],
            ),
          ),
        ),
        const SizedBox(height: defaultPadding / 2),
        Text(
          lable,
          maxLines: 1,
          overflow: TextOverflow.ellipsis,
          style: MyStyles.textStyle16.copyWith(
            color: kTextColorWhite,
          ),
        ),
      ],
    );
  }
}

