import 'package:flutter/material.dart';
import 'package:flutter_portofolio/constants.dart';
import 'package:flutter_portofolio/core/utils/my_space.dart';
import 'package:flutter_portofolio/core/utils/my_styles.dart';
import 'animated_circular_skill.dart';
import 'area_info_text.dart';
import 'my_info.dart';

class SideMenu extends StatelessWidget {
  const SideMenu({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        children: [
          const MyInfo(),
          Expanded(
            child: SingleChildScrollView(
              padding: const EdgeInsets.all(defaultPadding),
              child: Column(
                children: [
                  const AreaInfoText(
                    title: "Residence",
                    text: "Algeria",
                  ),
                  const AreaInfoText(
                    title: "City",
                    text: "Saida",
                  ),
                  const AreaInfoText(
                    title: "Age",
                    text: "25",
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Divider(),
                      Padding(
                        padding: const EdgeInsets.symmetric(
                            vertical: defaultPadding),
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
                            child: AnimatedCircularSkill(
                                lable: 'Flutter', percentage: 0.95),
                          ),
                          SizedBox(width: defaultPadding),
                          Expanded(
                            child: AnimatedCircularSkill(
                                lable: 'Firebase', percentage: 0.8),
                          ),
                          SizedBox(width: defaultPadding),
                          Expanded(
                            child: AnimatedCircularSkill(
                                lable: 'Rest Apis', percentage: 0.8),
                          ),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
