import 'package:flutter/material.dart';
import 'package:flutter_portofolio/constants.dart';
import 'package:responsive_builder/responsive_builder.dart';

class HightLightSection extends StatelessWidget {
  const HightLightSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ResponsiveBuilder(
      builder: (context, sizingInformation) {
        if (sizingInformation.deviceScreenType != DeviceScreenType.desktop) {
          return const Padding(
            padding: EdgeInsets.symmetric(vertical: defaultPadding),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                HightLightItem(
                  number: "2+",
                  text: "Years Experience:",
                ),
                SizedBox(width: defaultPadding * 3),
                HightLightItem(
                  number: "10+",
                  text: "Github Projects:",
                ),
              ],
            ),
          );
        }

        return const Padding(
          padding: EdgeInsets.symmetric(vertical: defaultPadding),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              HightLightItem(
                number: "2+",
                text: "Years Experience:",
              ),
              SizedBox(width: defaultPadding * 3),
              HightLightItem(
                number: "10+",
                text: "Github Projects:",
              ),
              SizedBox(width: defaultPadding * 3),
              HightLightItem(
                number: "8+  ",
                text: "Programing Years:",
              ),
            ],
          ),
        );
      },
    );
  }
}

class HightLightItem extends StatelessWidget {
  final String number;
  final String text;
  const HightLightItem({
    super.key,
    required this.number,
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(text,
            style: TextStyle(
              color: kprimaryColor,
              fontSize: getValueForScreenType<double>(
                context: context,
                mobile: 12,
                tablet: 16,
                desktop: 18,
              ),
            )),
        SizedBox(
            width: getValueForScreenType<double>(
          context: context,
          mobile: defaultPadding / 4,
          tablet: defaultPadding / 2,
          desktop: defaultPadding / 2,
        )),
        Text(number,
            style: TextStyle(
              fontSize: getValueForScreenType<double>(
                context: context,
                mobile: 14,
                tablet: 16,
                desktop: 18,
              ),
              fontWeight: FontWeight.w600,
            )),
      ],
    );
  }
}
