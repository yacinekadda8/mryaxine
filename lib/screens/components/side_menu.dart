// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

import 'package:flutter_portofolio/constants.dart';
import 'package:flutter_portofolio/core/utils/my_space.dart';
import 'package:flutter_portofolio/core/utils/my_styles.dart';
import 'package:flutter_portofolio/screens/components/more_skills_item.dart';
import 'package:flutter_portofolio/screens/components/skills.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'animated_circular_skill.dart';
import 'area_info_text.dart';
import 'education.dart';
import 'info_area_section.dart';
import 'more_skills.dart';
import 'my_info.dart';

class SideMenu extends StatelessWidget {
  const SideMenu({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        //crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const MyInfo(),
          Expanded(
            child: SingleChildScrollView(
              padding: const EdgeInsets.all(defaultPadding),
              child: Column(
                children: [
                  const InfoAreaSection(),
                  const Divider(),
                  const Skills(),
                  const SizedBox(
                    height: defaultPadding,
                  ),
                  const Divider(),
                  const MoreSkills(),
                  const Divider(),
                  Education(),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
