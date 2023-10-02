import 'package:flutter/material.dart';
import 'package:flutter_portofolio/constants.dart';
import 'package:flutter_portofolio/screens/components/Home%20Screen/mybuild_animated_text.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:url_launcher/url_launcher.dart';

class MyBanner extends StatelessWidget {
  const MyBanner({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ResponsiveBuilder(builder: (context, sizingInformation) {
      return AspectRatio(
        aspectRatio:
            sizingInformation.deviceScreenType == DeviceScreenType.mobile
                ? 2.5
                : 3,
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
                        fontSize: getValueForScreenType<double>(
                          context: context,
                          mobile: 15,
                          tablet: 30,
                          desktop: 50,
                        )),
                  ),
                  if (sizingInformation.deviceScreenType ==
                      DeviceScreenType.mobile)
                    const SizedBox(height: defaultPadding / 2),
                  const MyBuildAnimatedText(),
                  const SizedBox(height: defaultPadding),
                  if (sizingInformation.deviceScreenType !=
                      DeviceScreenType.mobile)
                    ElevatedButton(
                      onPressed: () async {
                        final Uri url = Uri.parse('https://github.com/yacinekadda8/');// Replace with your GitHub URL
                        if (await canLaunchUrl(url)) {
                          await launchUrl(url);
                        } else {
                          throw 'Could not launch $url';
                        }
                      },
                      style: TextButton.styleFrom(
                        padding: const EdgeInsets.symmetric(
                          horizontal: defaultPadding * 2,
                          vertical: defaultPadding,
                        ),
                        backgroundColor: kprimaryColor,
                      ),
                      child: const Text(
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
    });
  }
}
