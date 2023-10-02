import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_portofolio/constants.dart';
import 'package:flutter_portofolio/core/utils/my_styles.dart';
import 'package:responsive_builder/responsive_builder.dart';

class MyBuildAnimatedText extends StatelessWidget {
  const MyBuildAnimatedText({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ResponsiveBuilder(
      builder: (context, sizingInformation) {
        return DefaultTextStyle(
          style: MyStyles.textStyle16.copyWith(color: Colors.white),
          maxLines: 1,
          child:  Row(
            children: [
              const Text("I build with "),
              const Text(
                "Flutter ",
                style: TextStyle(color: kprimaryColor),
              ),
              sizingInformation.deviceScreenType == DeviceScreenType.mobile ?
              const Expanded(child: AnimatedText())
              : const AnimatedText(),
            ],
          ),
        );
      }
    );
  }
}

class AnimatedText extends StatelessWidget {
  const AnimatedText({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return AnimatedTextKit(
      animatedTexts: [
        TyperAnimatedText("Full Ecommerce App",
            speed: const Duration(milliseconds: 60)),
        TyperAnimatedText("Reading Books App",
            speed: const Duration(milliseconds: 60)),
        TyperAnimatedText("Meal App", speed: const Duration(milliseconds: 60)),
        TyperAnimatedText("Note App with Firebase",
            speed: const Duration(milliseconds: 60)),
        TyperAnimatedText("Lessons App with Firebase",
            speed: const Duration(milliseconds: 60)),
        TyperAnimatedText("Responsive apps",
            speed: const Duration(milliseconds: 60)),
      ],
    );
  }
}
