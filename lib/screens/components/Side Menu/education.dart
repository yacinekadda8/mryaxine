import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';

import '../../../constants.dart';
import '../../../core/utils/my_styles.dart';

class Education extends StatelessWidget {
  const Education({
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
            "Education",
            style: MyStyles.textStyle18.copyWith(
              color: kTextColorWhite,
            ),
          ),
        ),
        const EducationText(text: "Advanced IT Technician Certificate"),
        const SizedBox(height: defaultPadding / 2),
        const EducationText(text: "Certified Public Accountant"),
      ],
    );
  }
}

class EducationText extends StatelessWidget {
  const EducationText({
    Key? key,
    required this.text,
  }) : super(key: key);
  final String text;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Icon(
          Icons.verified,
          color: kprimaryColor,
          size: getValueForScreenType<double>(
            context: context,
            mobile: 12,
            tablet: 14,
            desktop: 16,
          ),
        ),
        //const FaIcon(FontAwesomeIcons.certificate),
        const SizedBox(width: defaultPadding / 2),
        Text(
          text,
          overflow: TextOverflow.ellipsis,
          style: TextStyle(
            fontSize: getValueForScreenType<double>(
              context: context,
              mobile: 14,
              tablet: 14,
              desktop: 12,
            ),
          ),
        ),
      ],
    );
  }
}
