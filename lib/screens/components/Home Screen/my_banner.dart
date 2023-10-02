import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_portofolio/constants.dart';
import 'package:flutter_portofolio/core/utils/my_styles.dart';
class MyBanner extends StatelessWidget {
  const MyBanner({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 3,
      child: Stack(
        fit: StackFit.expand,
        children: [
          Image.asset(
            "assets/images/neon_bg.jpg",
            fit: BoxFit.cover,
          ),
          Container(
            color: darkColor.withOpacity(0.6),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: defaultPadding),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Hi, I\'m a freelancer application developer\nWith Flutter',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                    fontSize: 50,
                  ),
                ),
                MyBuildAnimatedText(),
                SizedBox(height: defaultPadding),
                ElevatedButton(
                  onPressed: () {},
                  style: TextButton.styleFrom(
                    padding: EdgeInsets.symmetric(
                      horizontal: defaultPadding * 2,
                      vertical: defaultPadding,
                    ),
                    backgroundColor: kprimaryColor,
                  ),
                  child: Text(
                    "EXPLORE NOW",
                    style: TextStyle(color: darkColor),
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}

class MyBuildAnimatedText extends StatelessWidget {
  const MyBuildAnimatedText({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return DefaultTextStyle(
      style: MyStyles.textStyle16.copyWith(color: Colors.white),
      child: Row(
        children: [
          Text("I build with "),
          Text(
            "Flutter ",
            style: TextStyle(color: kprimaryColor),
          ),
          AnimatedTextKit(
            animatedTexts: [
              TyperAnimatedText("Full Ecommerce App",
                  speed: Duration(milliseconds: 60)),
              TyperAnimatedText("Responsive Web and Mobile app",
                  speed: Duration(milliseconds: 60)),
              TyperAnimatedText("Ebook Reading App",
                  speed: Duration(milliseconds: 60)),
              TyperAnimatedText("Meal App", speed: Duration(milliseconds: 60)),
              TyperAnimatedText("Note App with Firebase",
                  speed: Duration(milliseconds: 60)),
              TyperAnimatedText("Lessons App with Firebase",
                  speed: Duration(milliseconds: 60)),
            ],
          ),
        ],
      ),
    );
  }
}
