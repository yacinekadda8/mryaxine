import 'package:flutter/material.dart';
import '../../../constants.dart';
import '../../../core/utils/my_styles.dart';
import 'more_skills_item.dart';

class MoreSkills extends StatelessWidget {
  const MoreSkills({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(vertical: defaultPadding),
          child: Text(
            "More",
            style: MyStyles.textStyle18.copyWith(
              color: kTextColorWhite,
            ),
          ),
        ),
        const MoreSkillsItem(value: 0.8, lable: "Design Patterns"),
        const MoreSkillsItem(value: 0.8, lable: "State Management"),
        const MoreSkillsItem(value: 0.9, lable: "Problem Solving"),
        const MoreSkillsItem(value: 0.5, lable: "SQL & MySQL"),
        const MoreSkillsItem(value: 0.7, lable: "OOP"),
        const MoreSkillsItem(value: 0.6, lable: "English"),
      ],
    );
  }
}

