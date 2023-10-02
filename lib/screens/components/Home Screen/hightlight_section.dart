import 'package:flutter/material.dart';
import 'package:flutter_portofolio/constants.dart';

import '../../../core/utils/my_styles.dart';

class HightLightSection extends StatelessWidget {
  const HightLightSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
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
          SizedBox(width: defaultPadding * 3),
          HightLightItem(
            number: "8+  ",
            text: "Programing Years:",
          ),
        ],
      ),
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
        Text(
          text,
          style: MyStyles.textStyle18.copyWith(color: kprimaryColor),
        ),
        const SizedBox(width: defaultPadding / 2),
        Text(
          number,
          style: MyStyles.textStyle18.copyWith(color: Colors.white),
        ),
      ],
    );
  }
}
