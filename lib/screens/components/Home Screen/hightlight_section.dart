import 'package:flutter/material.dart';
import 'package:flutter_portofolio/constants.dart';

import '../../../core/utils/my_styles.dart';

class HightLightSection extends StatelessWidget {
  const HightLightSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: defaultPadding),
      child: const Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          HightLight(
            number: "2+",
            text: "Years Experience",
          ),
          SizedBox(width: defaultPadding * 3),
          HightLight(
            number: "10+",
            text: "Github Projects",
          ),
          SizedBox(width: defaultPadding * 3),
          HightLight(
            number: "8+",
            text: "Programing Years",
          ),
        ],
      ),
    );
  }
}

class HightLight extends StatelessWidget {
  final String number;
  final String text;
  const HightLight({
    super.key,
    required this.number,
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          number,
          style: MyStyles.textStyle22.copyWith(color: kprimaryColor),
        ),
        const SizedBox(width: defaultPadding / 2),
        Text(
          text,
          style: MyStyles.textStyle22.copyWith(color: Colors.white),
        ),
      ],
    );
  }
}
